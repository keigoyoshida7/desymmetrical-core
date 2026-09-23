import test from 'node:test';
import assert from 'node:assert/strict';
import vm from 'node:vm';
import {readFileSync} from 'node:fs';
import {defaults,relative} from '../src/model';
import {SpatOscAdapter,sceneMessages,paths} from '../src/osc/adapter';
import {advanceMotion,setMotionPreset} from '../src/motion';
import {forward,solveTarget} from '../src/robot';
import {applyMappings} from '../src/mappings';

for(const playback of ['loop','pingpong'] as const)test(`${playback}: UI motion + IK + OSC + Max snapshots survive STOP then PLAY for three legs/cycles`,()=>{
 const h=harness(),s=defaults(),a=new SpatOscAdapter();h.c.init();
 // The actual UI sends STOP before a subsequent PLAY; Max used to retain it.
 h.send(0,paths.motion('stop'),[1]);
 s.motion.playing=true;s.motion.loop=playback;s.motion.duration=5;s.robot.control='target';
 let delayed:{address:string;args:any[]}[]=[],lightPackets=0;
 for(let frame=0;frame<160;frame++){
  for(const packet of delayed)a.receive(s,packet);
  assert.equal(s.motion.playing,true,`feedback stopped ${playback} at ${frame/10}s`);
  advanceMotion(s,.1);solveTarget(s,.1);s.light.position=forward(s).tip;applyMappings(s);
  const packets=a.diff(s);lightPackets+=packets.filter(p=>p.address===paths.light).length;
  h.emitted.length=0;for(const p of packets)h.send(0,p.address,p.args);
  if(frame%30===0)h.send(0,paths.request);
  // Deliver snapshots late, without the bridge's short-lived echo flag.
  delayed=h.emitted.filter(e=>e.port===2).map(e=>({address:e.message[0],args:e.message.slice(1)}));
  const cycle=(frame+1)*.1/5;
  const expected=playback==='loop'?cycle%1:cycle%2<=1?cycle%2:2-cycle%2;
  assert.ok(Math.abs(s.motion.phase-expected)<1e-8||playback==='loop'&&Math.abs(Math.abs(s.motion.phase-expected)-1)<1e-8);
 }
 assert.ok(lightPackets>100,'light OSC must continue across every traversal');
 assert.equal(s.motion.playing,true);
 setMotionPreset(s,1);assert.equal(s.motion.playing,true);assert.equal(s.motion.phase,0);
 // A new explicit remote STOP still works; it is not a stored snapshot.
 a.receive(s,{address:paths.motion('stop'),args:[1]});assert.equal(s.motion.playing,false);
});
function harness(){
 const emitted:{port:number;message:any[]}[]=[];const widgets:Record<string,unknown>={};
 const c:any={Math,post:()=>{},arrayfromargs:(a:any)=>Array.from(a),File:function(){return {isopen:false};},patcher:{filepath:'/prototype/dot_area_spat_explorer.maxpat',getnamed:(k:string)=>({message:(m:string,v:unknown)=>widgets[k]=v})},inlet:0,messagename:'',outlet:(port:number,...args:any[])=>emitted.push({port,message:Array.isArray(args[0])?Array.from(args[0]):args})};
 vm.createContext(c);vm.runInContext(readFileSync(new URL('../../dot_area_link.js',import.meta.url),'utf8'),c);
 const send=(origin:number,path:string,args:any[]=[])=>{c.inlet=origin;c.messagename=path;c.anything(...args);};return {c,send,emitted,widgets};
}
test('main Max uses the same 17 Core coordinates as web; CH17 edits reach BOTH renderers',()=>{
 const h=harness();h.c.init();const expected=defaults().speakers.filter(s=>s.role!=='sub').flatMap(s=>relative(s.position,defaults().listener));
 assert.equal(h.c.speakers.length,51);h.c.speakers.forEach((v:number,i:number)=>assert.ok(Math.abs(v-expected[i])<1e-8));
 assert.ok(h.emitted.some(e=>e.port===5&&e.message[0]==='/speaker/number'&&e.message[1]===17));
 h.emitted.length=0;h.send(0,'/speaker/17/xyz',[.2,.3,.4]);assert.ok(h.emitted.some(e=>e.port===0&&e.message[0]==='/speaker/17/xyz'));const virtual=h.emitted.find(e=>e.port===1)!;assert.deepEqual(virtual.message.slice(49,52),[.2,.3,.4]);assert.equal(virtual.message.length,52);
});
test('Core Max rejects legacy 12-feed layouts, nonexistent channels and nonfinite coordinates; SUB stays metadata',()=>{
 const h=harness();h.c.init();const before=Array.from(h.c.speakers);h.emitted.length=0;
 h.send(0,'/speakers/xyz',Array(36).fill(0));h.send(0,'/speaker/18/xyz',[1,2,3]);h.send(0,'/speaker/1/xyz',[NaN,0,0]);
 assert.deepEqual(Array.from(h.c.speakers),before);assert.equal(h.emitted.length,0);
 h.send(0,'/dotarea/subwoofer/xyz',[1,2,3]);assert.equal(h.emitted.filter(e=>e.port===0||e.port===1).length,0);
 assert.ok(h.emitted.some(e=>e.port===2&&e.message[0]==='/dotarea/subwoofer/xyz'));
 h.send(0,'/speakers/xyz',Array(51).fill(.1));assert.ok(h.emitted.some(e=>e.port===1&&e.message.length===52));
});
test('companion Max starts with the same 17 listener-relative Core coordinates',()=>{
 const packets:any[]=[];const c:any={outlet:(port:number,...args:any[])=>packets.push({port,message:Array.isArray(args[0])?Array.from(args[0]):args}),arrayfromargs:(a:any)=>Array.from(a),patcher:{getnamed:()=>({message:()=>{}})}};
 vm.createContext(c);vm.runInContext(readFileSync(new URL('../max/dot_area_webgl_control.js',import.meta.url),'utf8'),c);c.init();
 const actual=packets.find(p=>p.port===1&&p.message[0]==='/speakers/xyz').message.slice(1);
 const s=defaults(),expected=s.speakers.filter(x=>x.role!=='sub').flatMap(x=>relative(x.position,s.listener));
 assert.equal(actual.length,51);actual.forEach((v:number,i:number)=>assert.ok(Math.abs(v-expected[i])<1e-8));
});
test('both Max patches wire all 17 full-range outputs to the virtual-speaker monitor',()=>{
 for(const [file,inputs] of [['../../dot_area_spat_explorer.maxpat',4],['../max/dot_area_webgl_bridge.maxpat',8]] as const){
  const root=JSON.parse(readFileSync(new URL(file,import.meta.url),'utf8')).patcher;
  const box=(p:any,id:string)=>p.boxes.find((x:any)=>x.box.id===id).box;
  assert.match(box(root,'oper').text,/\/speaker\/number 17/);
  const audio=box(root,'audio').patcher,multi=box(audio,'multi'),virtual=box(audio,'virtual');
  assert.ok(multi.text.includes(`@inputs ${inputs} @outputs 17`));assert.equal(multi.numoutlets,18);
  assert.ok(virtual.text.includes('@speakers 17'));assert.equal(virtual.numinlets,17);
  const wires=audio.lines.map((x:any)=>x.patchline).filter((l:any)=>l.source[0]==='multi'&&l.destination[0]==='virtual');
  assert.equal(wires.length,17);for(let i=0;i<17;i++)assert.ok(wires.some((l:any)=>l.source[1]===i&&l.destination[1]===i));
 }
});
test('main Max guards synchronous native feedback, reports master without accepting network gain',()=>{
 const h=harness();h.c.init();h.emitted.length=0;h.c.guard=1;h.send(1,'/source/1/xyz',[1,0,0]);assert.equal(h.emitted.length,0);h.c.guard=0;h.send(1,'/source/1/xyz',[1,0,0]);assert.ok(h.emitted.some(e=>e.port===2&&e.message[0]==='/source/1/xyz'));assert.equal(h.emitted.filter(e=>e.port===0).length,0);h.emitted.length=0;h.send(0,'/dotarea/audio/gain',[1]);assert.equal(h.emitted.filter(e=>e.port===4||e.port===0).length,0);h.send(2,'/dotarea/master/state',[1,.7,.7]);assert.ok(h.emitted.some(e=>e.port===2&&e.message[0]===paths.master));
});
test('main Max mode crossfade, four-voice capacity and native selected source feedback',()=>{
 const h=harness();h.c.init();h.send(0,paths.mode,['virtualspeakers']);assert.equal(h.c.monitor,'virtualspeakers');assert.ok(h.emitted.some(e=>e.port===3&&e.message[0]===1));h.send(0,paths.count,[8]);assert.equal(h.c.active,4);h.send(1,'/source/3/select',[1]);assert.equal(h.c.selected,3);assert.ok(h.emitted.some(e=>e.port===2&&e.message[0]===paths.selected&&e.message[1]===3));
});
test('semantic motion, changing light and proposal mappings serialize and do not echo back',()=>{
 const state=defaults(),a=new SpatOscAdapter();a.diff(state);state.motion.playing=true;state.motion.speed=.6;state.light.position=[.2,.1,.9];const messages=a.diff(state);assert.ok(messages.some(m=>m.address===paths.motion('play')&&m.args[0]===1));assert.ok(messages.some(m=>m.address===paths.motion('speed')));assert.ok(messages.some(m=>m.address===paths.light));for(const m of messages)assert.equal(a.receive(state,m),false);assert.equal(a.receive(state,{address:paths.motion('stop'),args:[1]}),true);assert.equal(state.motion.playing,false);assert.ok(sceneMessages(state).some(m=>m.address===paths.shadow('centroid')));
});
test('actual main engine unity master, bounded distinct-source gains and web ownership hold',()=>{
 const output:any[]=[];const c:any={Math,outlet:(...a:any[])=>output.push(a),arrayfromargs:(a:any)=>Array.from(a),patcher:{getnamed:()=>({message:()=>{}})}};vm.createContext(c);vm.runInContext(readFileSync(new URL('../../dot_area_engine.js',import.meta.url),'utf8'),c);c.init();assert.equal(c.state.gain,0);assert.equal(c.state.sound,0);assert.equal(c.state.frequency,80);assert.equal(c.state.click1,3500);assert.equal(c.state.click2,8000);assert.equal(c.ranges.click1[0],500);assert.equal(c.ranges.click1[1],12000);assert.equal(c.ranges.click2[0],500);assert.equal(c.ranges.click2[1],12000);
 const send=(key:string,v:number)=>{c.messagename=key;c.anything(v);};send('gain',5);assert.equal(c.state.gain,1);send('sound',1);send('activity',1);const levels=output.filter(e=>e[0]===2&&/^a[1-4]$/.test(e[1][0])).map(e=>e[1][1]);assert.ok(levels.every(v=>v>=0&&v<=.16));assert.ok(levels.some(v=>v>.1));c.external(1);c.webposition(1,.25,.5,.75);const before=JSON.stringify(c.sources);output.length=0;c.tick();assert.equal(JSON.stringify(c.sources),before);assert.equal(output.filter(e=>e[0]===0&&/^\/source\/\d+\/xyz$/.test(e[1][0])).length,0);send('mute1',1);assert.ok(output.some(e=>e[0]===2&&e[1][0]==='a1'&&e[1][1]===0));
});
