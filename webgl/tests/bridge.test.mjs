import test from 'node:test';
import assert from 'node:assert/strict';
import dgram from 'node:dgram';
import net from 'node:net';
import {once} from 'node:events';
import {WebSocket} from 'ws';
import OSC from 'osc-js';
import {createBridge,configCheck,validMessage} from '../bridge/server.mjs';
async function port(tcp=false){const s=tcp?net.createServer():dgram.createSocket('udp4');await new Promise((r,j)=>{s.once('error',j);if(tcp)s.listen(0,'127.0.0.1',r);else s.bind(0,'127.0.0.1',r);});const p=s.address().port;await new Promise(r=>s.close(r));return p;}
function next(ws,predicate){return new Promise((resolve,reject)=>{const timer=setTimeout(()=>{ws.off('message',handle);reject(Error('WebSocket response timeout'));},3000);function handle(raw){const data=JSON.parse(String(raw));if(predicate(data)){clearTimeout(timer);ws.off('message',handle);resolve(data);}}ws.on('message',handle);});}
test('bridge rejects invalid configuration and OSC namespace / nonfinite values',()=>{assert.equal(Boolean(validMessage({address:'/system/delete',args:[]})),false);assert.equal(validMessage({address:'/source/1/xyz',args:[NaN,0,0]}),false);assert.throws(()=>configCheck({maxHost:'127.0.0.1',wsPort:8081,maxReceivePort:9000,maxSendPort:9000}));});
test('real WebSocket ↔ OSC UDP, bundles, echo tags, reconfiguration and invalid packet recovery', {timeout:15000},async()=>{
 const config={wsHost:'127.0.0.1',maxHost:'127.0.0.1',wsPort:await port(true),maxReceivePort:await port(),maxSendPort:await port()};
 const fakeMax=dgram.createSocket('udp4');await new Promise(r=>fakeMax.bind(config.maxReceivePort,'127.0.0.1',r));const bridge=await createBridge(config);const ws=new WebSocket(`ws://127.0.0.1:${config.wsPort}`);
 try{const ready=next(ws,x=>x.type==='status');await once(ws,'open');assert.equal((await ready).config.maxReceivePort,config.maxReceivePort);
  await assert.rejects(createBridge({...config,wsPort:await port(true)}),/EADDRINUSE/);
  const out={address:'/source/1/xyz',args:[.125,-.5,1.25]};const udpMessage=once(fakeMax,'message');ws.send(JSON.stringify({type:'osc',messages:[out]}));const [buffer]=await udpMessage;const decoded=new OSC.Packet();decoded.unpack(new DataView(buffer.buffer,buffer.byteOffset,buffer.byteLength));assert.equal(decoded.value.address,out.address);assert.deepEqual(decoded.value.args,out.args);
  const incoming=next(ws,x=>x.type==='osc');fakeMax.send(buffer,config.maxSendPort,'127.0.0.1');const echo=await incoming;assert.equal(echo.messages[0].echo,true);assert.deepEqual(echo.messages[0].args,out.args);
  const bundle=new OSC.Bundle(new OSC.Message('/source/1/spread',72),new OSC.Message('/dotarea/monitoring/mode','virtualspeakers'));const bundleIn=next(ws,x=>x.type==='osc');fakeMax.send(Buffer.from(bundle.pack()),config.maxSendPort,'127.0.0.1');assert.equal((await bundleIn).messages.length,2);
  const error=next(ws,x=>x.type==='error');ws.send(JSON.stringify({type:'osc',messages:[{address:'/unapproved/path',args:[]}]}));assert.match((await error).message,/Invalid/);
  const malformed=next(ws,x=>x.type==='error');fakeMax.send(Buffer.from('not osc'),config.maxSendPort,'127.0.0.1');assert.match((await malformed).message,/OSC decode/);
  const newPort=await port(),changed=next(ws,x=>x.type==='status'&&x.config.maxSendPort===newPort);ws.send(JSON.stringify({type:'configure',config:{...config,maxSendPort:newPort}}));await changed;const newIn=next(ws,x=>x.type==='osc');fakeMax.send(Buffer.from(new OSC.Message('/source/2/env',44).pack()),newPort,'127.0.0.1');assert.equal((await newIn).messages[0].args[0],44);assert.ok(bridge.stats().incoming>=4);
 }finally{ws.terminate();fakeMax.close();await bridge.close();}
});
test('Core bridge accepts exactly 17 directional coordinates, including CH17, and rejects legacy layouts',()=>{
 assert.equal(validMessage({address:'/speakers/xyz',args:Array(51).fill(0)}),true);
 assert.equal(validMessage({address:'/speaker/17/xyz',args:[.1,.2,.3]}),true);
 assert.equal(validMessage({address:'/speaker/18/xyz',args:[.1,.2,.3]}),false);
 assert.equal(validMessage({address:'/speakers/xyz',args:Array(36).fill(0)}),false);
 assert.equal(validMessage({address:'/speakers/xyz',args:Array(54).fill(0)}),false);
});
