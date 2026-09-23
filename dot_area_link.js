/* Max ES5. Explicit OSC ownership; local audio enable/master are never network commands. */
autowatch=1;inlets=3;outlets=7;
// IN: 0 UDP decoded, 1 native oper state, 2 local engine/UI.
// OUT: 0 oper, 1 virtual coordinates, 2 UDP, 3 A/B mix, 4 engine, 5 viewer, 6 ports.
var values={},guard=0,requesting=0,monitor='direct',active=4,selected=1;
// Core CH1–CH17; listener-relative XYZ. SUB1 stays metadata.
var speakerCount=17;
var speakers=[1.75,5.34,-0.4,-1.75,5.34,-0.4,1.75,5.34,2.6,-1.75,5.34,2.6,1.75,-1.34,-0.4,-1.75,-1.34,-0.4,1.75,-1.34,2.6,-1.75,-1.34,2.6,-3.34,3.75,-0.4,-3.34,0.25,-0.4,-3.34,3.75,2.6,-3.34,0.25,2.6,3.34,3.75,-0.4,3.34,0.25,-0.4,3.34,3.75,2.6,3.34,0.25,2.6,-0.1,2,-0.64];
function emit(n,p,a){outlet(n,[p].concat(a||[]));}
function ui(k,v){var b=this.patcher.getnamed(k);if(b)b.message('set',v);}
function remember(p,a,force){var signature=a.join('|'),old=values[p];values[p]=a.slice(0);if(force||!old||old.join('|')!==signature)emit(2,p,a);}
function tooper(p,a){guard++;emit(0,p,a);guard--;}
function init(){
 values={};monitor='direct';active=4;selected=1;outlet(3,0);ui('monitoring',0);
 var c={maxReceivePort:9000,maxSendPort:9001};
 try{var path=this.patcher.filepath.replace(/[^/]*$/,'')+'webgl/bridge/config.json';var f=new File(path,'read');if(f.isopen){var raw='';while(f.position<f.eof)raw+=f.readline();f.close();c=JSON.parse(raw);}}catch(e){post('Dot Area: config fallback 9000/9001: '+e+'\n');}
 emit(6,'receive',[c.maxReceivePort]);emit(6,'send',[c.maxSendPort]);ui('receiveport',c.maxReceivePort);ui('sendport',c.maxSendPort);
 emit(5,'/speaker/number',[speakerCount]);apply('/speakers/xyz',speakers,2);setcount(4);status();
}
function status(){remember('/dotarea/status',['ready'],true);remember('/dotarea/monitoring/mode',[monitor],true);remember('/dotarea/source/count',[active],true);remember('/dotarea/capabilities/sources',[4],true);remember('/dotarea/source/selected',[selected],true);}
function setcount(n){active=Math.max(1,Math.min(4,Math.round(n)));emit(4,'webcount',[active]);for(var i=1;i<=4;i++){tooper('/source/'+i+'/mute',[i>active?1:0]);emit(5,'/source/'+i+'/visible',[i<=active?1:0]);}remember('/dotarea/source/count',[active],true);}
function mode(v){if(v!=='direct'&&v!=='virtualspeakers')return;monitor=v;outlet(3,v==='direct'?0:1);ui('monitoring',v==='direct'?0:1);remember('/dotarea/monitoring/mode',[v],true);}
function apply(p,a,origin){
 // STOP is an event, never persistent state to replay on each browser poll.
 if(p==='/dotarea/motion/stop'){delete values[p];return;}
 if(p==='/sources/xyz'){for(var i=0;i<Math.min(4,a.length/3);i++)apply('/source/'+(i+1)+'/xyz',a.slice(i*3,i*3+3),origin);return;}
 var src=/^\/source\/([1-4])\/(xyz|spread|dist|prer|env|select)$/.exec(p);
 var sp=/^\/speaker\/(\d+)\/xyz$/.exec(p);
 if(src){
  if(src[2]==='select'){if(Number(a[0])){selected=Number(src[1]);ui('selected',selected);remember('/dotarea/source/selected',[selected],true);}if(origin!==1)tooper(p,a);return;}
  if(origin!==2&&!requesting)emit(4,'external',[1]);
  if(origin!==1)tooper(p,a);
  if(src[2]==='xyz'){emit(5,p,a);emit(4,'webposition',[Number(src[1])].concat(a));}
  remember(p,a,false);return;
 }
 if(p==='/speakers/xyz'||sp){
  for(var n=0;n<a.length;n++)if(typeof a[n]!=='number'||!isFinite(a[n]))return;
  if(p==='/speakers/xyz'){if(a.length!==speakerCount*3)return;speakers=a.slice(0);}else{var index=Number(sp[1])-1;if(index<0||index>=speakerCount||a.length!==3)return;for(var k=0;k<3;k++)speakers[index*3+k]=a[k];}
  if(origin!==1)tooper(p,a);emit(1,'/speakers/xyz',speakers);emit(5,'/speakers/xyz',speakers);remember('/speakers/xyz',speakers,false);return;
 }
 if(p==='/dotarea/state/request'){requesting++;outlet(0,'bang');requesting--;for(var key in values)if(key!=='/dotarea/motion/stop')emit(2,key,values[key]);status();return;}
 if(p==='/dotarea/monitoring/mode'){mode(String(a[0]));return;}
 if(p==='/dotarea/source/count'){setcount(Number(a[0]));return;}
 if(p==='/dotarea/source/selected'){var id=Math.max(1,Math.min(4,Number(a[0])));apply('/source/'+id+'/select',[1],origin);return;}
 if(p.indexOf('/dotarea/')===0){
  if(origin===0){
   if(p==='/dotarea/light/xyz'&&a.length===3)emit(4,'weblight',a);
   if(p==='/dotarea/light/intensity')emit(4,'webintensity',a);
   if(p==='/dotarea/shadow/centroid'&&a.length===3)for(var k=0;k<3;k++)emit(4,'webfeature',[['cx','cy','cz'][k],a[k]]);
   var feature=/^\/dotarea\/shadow\/(area|penumbra|density|entropy)$/.exec(p);if(feature)emit(4,'webfeature',[feature[1],a[0]]);
   ui('osc_status','WEB OSC · '+p+' '+a.join(' '));
  }
  remember(p,a,false);return;
 }
 if(origin===2)tooper(p,a); // verified remaining local artistic inspector controls
}
function anything(){var p=messagename,a=arrayfromargs(arguments);if(inlet===1&&guard)return;
 if(inlet===2&&p==='monitoring'){mode(Number(a[0])?'virtualspeakers':'direct');return;}
 if(inlet===2&&p==='selected'){apply('/dotarea/source/selected',a,2);return;}
 apply(p,a,inlet);
}
function bang(){if(inlet===2){guard++;outlet(0,'bang');guard--;}}
