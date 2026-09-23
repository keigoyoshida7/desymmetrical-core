/* ES5 / Max js. Network controls cannot enable audio. */
autowatch=1;inlets=2;outlets=6;
// 0 oper; 1 virtual speaker coordinates; 2 UDP feedback; 3 A/B mix;
// 4 active voice count (UI); 5 local-only master amplitude.
var values={},mode='direct',count=4,gain=0,sound=0,receiving=0;
function ui(name,v){var o=this.patcher.getnamed(name);if(o)o.message('set',v);}
function output(n,p,a){outlet(n,[p].concat(a));}
function remember(p,a){values[p]=a;output(2,p,a);}
function init(){values={};sound=0;gain=0;mode='direct';count=4;ui('sound',0);ui('gain',0);ui('mode',0);outlet(5,0);outlet(3,0);
 output(0,'/source/*/pres',[80]);output(0,'/source/*/radius',[0.2]);output(0,'/source/*/doppler',[0]);output(0,'/source/*/prer',[35]);output(0,'/source/*/env',[25]);output(0,'/source/*/revp',[35]);output(0,'/room/1/reverberance',[45]);
 var speakers=[1.75,5.34,-0.4,-1.75,5.34,-0.4,1.75,5.34,2.6,-1.75,5.34,2.6,1.75,-1.34,-0.4,-1.75,-1.34,-0.4,1.75,-1.34,2.6,-1.75,-1.34,2.6,-3.34,3.75,-0.4,-3.34,0.25,-0.4,-3.34,3.75,2.6,-3.34,0.25,2.6,3.34,3.75,-0.4,3.34,0.25,-0.4,3.34,3.75,2.6,3.34,0.25,2.6,-0.1,2,-0.64];
 apply('/speakers/xyz',speakers,false);
 for(var i=1;i<=8;i++)apply('/source/'+i+'/xyz',[-.4+i*.15,.4,-.4],false);
 setcount(4);outlet(0,'bang');status();
}
function setcount(n){count=Math.max(1,Math.min(8,Math.round(n)));for(var i=1;i<=8;i++)output(0,'/source/'+i+'/mute',[i>count?1:0]);outlet(4,count);remember('/dotarea/source/count',[count]);}
function setmode(m){if(m!=='direct'&&m!=='virtualspeakers')return;mode=m;outlet(3,m==='direct'?0:1);ui('mode',m==='direct'?0:1);remember('/dotarea/monitoring/mode',[m]);}
function status(){remember('/dotarea/status',['ready']);remember('/dotarea/monitoring/mode',[mode]);}
function apply(p,a,feedback){
 var sp=/^\/speaker\/(\d+)\/xyz$/.exec(p);
 if(p==='/speakers/xyz'||sp){
  if(p==='/speakers/xyz'&&a.length!==51)return;
  if(sp&&(Number(sp[1])<1||Number(sp[1])>17||a.length!==3))return;
  for(var n=0;n<a.length;n++)if(typeof a[n]!=='number'||!isFinite(a[n]))return;
 }
 if(p==='/sources/xyz'){for(var i=0;i<Math.min(8,a.length/3);i++)apply('/source/'+(i+1)+'/xyz',a.slice(i*3,i*3+3),feedback);return;}
 var official=/^\/source\/[1-8]\/(xyz|dist|spread|prer|env)$/.test(p)||/^\/speaker\/(\d+)\/xyz$/.test(p)||p==='/speakers/xyz';
 if(official){
  if(!feedback){receiving++;output(0,p,a);receiving--;}
  if(p.indexOf('/speaker')===0)output(1,p,a);
  remember(p,a);return;
 }
 if(p==='/dotarea/state/request'){
  // Current high-level oper state exits through the feedback converter/router.
  outlet(0,'bang');for(var k in values)output(2,k,values[k]);status();return;
 }
 if(p==='/dotarea/monitoring/mode'){setmode(String(a[0]));return;}
 if(p==='/dotarea/source/count'){setcount(Number(a[0]));return;}
 if(p.indexOf('/dotarea/')===0){remember(p,a);ui('last',p+' '+a.join(' '));}
}
function anything(){var p=messagename,a=arrayfromargs(arguments);
 if(inlet===1){if(!receiving)apply(p,a,true);return;}
 // Plain local messages exist only on patch cords, never on routed OSC inputs.
 if(p==='gain'){gain=Math.max(0,Math.min(.2,Number(a[0])));outlet(5,gain*sound);return;}
 if(p==='sound'){sound=Number(a[0])?1:0;outlet(5,gain*sound);return;}
 if(p==='mode'){setmode(Number(a[0])?'virtualspeakers':'direct');return;}
 apply(p,a,false);
}
