import dgram from 'node:dgram';
import {readFile} from 'node:fs/promises';
import {pathToFileURL} from 'node:url';
import {WebSocketServer,WebSocket} from 'ws';
import OSC from 'osc-js';
export function validMessage(m){
 if(!(m&&typeof m.address==='string'&&/^\/(source\/[1-8]\/(xyz|dist|spread|prer|env)|speaker\/([1-9]|1[0-7])\/xyz|speakers\/xyz|dotarea\/[a-zA-Z0-9_/]+)$/.test(m.address)&&Array.isArray(m.args)&&m.args.length<=64&&m.args.every(v=>(typeof v==='number'&&Number.isFinite(v)&&Math.abs(v)<=1e6)||(typeof v==='string'&&v.length<=128))))return false;
 if(m.address.startsWith('/dotarea/'))return true;
 return m.args.every(v=>typeof v==='number')&&m.args.length===(m.address==='/speakers/xyz'?51:m.address.endsWith('/xyz')?3:1);
}
export function configCheck(c){if(!/^[a-zA-Z0-9.:-]{1,253}$/.test(c.maxHost))throw Error('Invalid Max host');for(const k of ['wsPort','maxReceivePort','maxSendPort'])if(!Number.isInteger(c[k])||c[k]<1024||c[k]>65535)throw Error('Invalid port '+k);if(c.maxReceivePort===c.maxSendPort)throw Error('Max send and receive ports must differ');return c;}
export const signature=m=>m.address+' '+JSON.stringify(m.args.map(v=>typeof v==='number'?+v.toFixed(4):v));
export async function createBridge(options){
 let config=configCheck({...options}),udp;const recent=new Map();let outgoing=0,incoming=0;
 const wss=new WebSocketServer({host:config.wsHost||'127.0.0.1',port:config.wsPort,maxPayload:128*1024});
 const listening=new Promise((resolve,reject)=>{wss.once('listening',resolve);wss.once('error',reject);});
 // Observe early bind errors immediately, even while UDP is starting.
 listening.catch(()=>{});
 const send=(ws,data)=>{if(ws.readyState===WebSocket.OPEN)ws.send(JSON.stringify(data));};
 const broadcast=data=>wss.clients.forEach(ws=>send(ws,data));
 function packets(value,out=[]){if(value.address){const args=value.args.map(v=>v&&typeof v==='object'&&'value'in v?v.value:v);out.push({address:value.address,args});}else for(const p of value.bundleElements||[])packets(p,out);return out;}
 async function bind(port){const sock=dgram.createSocket('udp4');sock.on('message',buffer=>{try{const packet=new OSC.Packet();packet.unpack(new DataView(buffer.buffer,buffer.byteOffset,buffer.byteLength));const messages=packets(packet.value).filter(m=>validMessage(m)||m.address==='/dotarea/status');const now=Date.now();for(const m of messages)m.echo=now-(recent.get(signature(m))||0)<1500;incoming+=messages.length;if(messages.length)broadcast({type:'osc',messages});}catch(e){broadcast({type:'error',message:'OSC decode: '+e.message});}});try{await new Promise((resolve,reject)=>{sock.once('error',reject);sock.bind(port,config.udpHost||'127.0.0.1',resolve);});}catch(e){try{sock.close();}catch{}throw e;}sock.removeAllListeners('error');sock.on('error',e=>broadcast({type:'error',message:'UDP: '+e.message}));return sock;}
 try{udp=await bind(config.maxSendPort);await listening;}catch(e){if(udp)udp.close();wss.close();throw e;}
 wss.on('connection',(ws,req)=>{
  const origin=req.headers.origin;if(origin&&!/^https?:\/\/(localhost|127\.0\.0\.1)(:\d+)?$/.test(origin)){ws.close(1008,'Local origins only');return;}
  send(ws,{type:'status',config});let budget=0,second=Date.now(),configuring=false;
  ws.on('message',async raw=>{try{const data=JSON.parse(String(raw));
   if(data.type==='configure'){if(configuring)throw Error('Configuration already in progress');configuring=true;try{const next=configCheck({...config,maxHost:data.config.maxHost,maxReceivePort:data.config.maxReceivePort,maxSendPort:data.config.maxSendPort});if(next.maxSendPort!==config.maxSendPort){const nextSocket=await bind(next.maxSendPort);udp.close();udp=nextSocket;}config=next;broadcast({type:'status',config});}finally{configuring=false;}return;}
   if(data.type!=='osc'||!Array.isArray(data.messages)||data.messages.length>256||!data.messages.every(validMessage))throw Error('Invalid OSC message batch');
   if(Date.now()-second>1000){budget=0;second=Date.now();}budget+=data.messages.length;if(budget>1600)throw Error('OSC rate limit (1600 messages/s)');
   for(const m of data.messages){const buffer=Buffer.from(new OSC.Message(m.address,...m.args).pack());udp.send(buffer,config.maxReceivePort,config.maxHost,e=>{if(e)send(ws,{type:'error',message:e.message});});recent.set(signature(m),Date.now());outgoing++;}
   if(recent.size>2000)for(const [key,time] of recent)if(Date.now()-time>2000)recent.delete(key);
  }catch(e){send(ws,{type:'error',message:e.message});}});
 });
 wss.on('error',e=>console.error('WebSocket:',e.message));
 const heartbeat=setInterval(()=>{for(const ws of wss.clients){if(ws.isAlive===false){ws.terminate();continue;}ws.isAlive=false;ws.ping();}},15000);
 wss.on('connection',ws=>{ws.isAlive=true;ws.on('pong',()=>ws.isAlive=true);});
 return {get config(){return config;},stats:()=>({outgoing,incoming}),close:async()=>{clearInterval(heartbeat);for(const ws of wss.clients)ws.terminate();await Promise.all([new Promise(r=>wss.close(r)),new Promise(r=>udp.close(r))]);}};
}
if(process.argv[1]&&import.meta.url===pathToFileURL(process.argv[1]).href){
 try{const config=JSON.parse(await readFile(new URL('./config.json',import.meta.url),'utf8'));const bridge=await createBridge(config);console.log(`OSC bridge ws://${config.wsHost}:${config.wsPort} → ${config.maxHost}:${config.maxReceivePort}; receiving UDP ${config.maxSendPort}`);for(const signal of ['SIGINT','SIGTERM'])process.on(signal,async()=>{await bridge.close();process.exit(0);});}catch(e){console.error('Bridge startup failed:',e.message);process.exitCode=1;}
}
