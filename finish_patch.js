/* Incremental, idempotent edits of the ACTUAL user-saved patch. Prints JSON only.
   Never regenerates the old layout from build_patch.js. */
const fs=require('fs');
const document=JSON.parse(fs.readFileSync('dot_area_spat_explorer.maxpat','utf8')),p=document.patcher;
const companion=JSON.parse(fs.readFileSync('webgl/max/dot_area_webgl_bridge.maxpat','utf8')).patcher;
const find=(p,id)=>p.boxes.find(v=>v.box.id===id)?.box;
const wire=(p,s,d,so=0,di=0)=>{if(!p.lines.some(v=>JSON.stringify(v.patchline.source)===JSON.stringify([s,so])&&JSON.stringify(v.patchline.destination)===JSON.stringify([d,di])))p.lines.push({patchline:{source:[s,so],destination:[d,di]}});};
function box(p,id,text,r,ins=1,outs=1,extra={}){const value={id,maxclass:'newobj',text,patching_rect:r,numinlets:ins,numoutlets:outs,...extra};const old=find(p,id);if(old)Object.assign(old,value);else p.boxes.push({box:value});return value;}
function label(id,text,r){return box(p,id,text,r,1,0,{maxclass:'comment',fontsize:12,textcolor:[.86,.9,.94,1],presentation:1,presentation_rect:r,varname:id});}
function ui(id,cls,r,extra={}){return box(p,id,undefined,r,1,1,{maxclass:cls,presentation:1,presentation_rect:r,varname:id,...extra});}
if(!find(p,'networkctl'))for(const {box:b} of p.boxes)if(!b.presentation&&b.patching_rect[1]>=1260)b.patching_rect[1]+=500;
p.rect[2]=1480;p.rect[3]=1430;
find(p,'title').text='De-symmetrical Core';
find(p,'subtitle').text='17-FEED SPATIAL AUDIO EXPLORER';
find(p,'strap').text='Core: Keigo Yoshida · Original software: Guillaume Piccarreta · github.com/gllmp';
find(p,'gain').maximum=1;find(p,'lgain').text='MASTER 0–1 / UNITY';find(p,'frequency').minimum=20;find(p,'frequency').maximum=12000;
find(p,'h4').text='04  SPAT / HEADPHONE MONITORING';
find(p,'lroom').patching_rect[3]=19;find(p,'lroom').presentation_rect[3]=19;
// Keep the user's original four-voice/control architecture and edit identities in place.
const synth=find(p,'synthesis').patcher;
['TRACE / SINE','PENUMBRA / FILTERED NOISE','EDGE A / SOFT CLICK','EDGE B / SOFT CLICK'].forEach((name,i)=>{
 const v=find(synth,'v'+i).patcher;find(v,'title').text=(i+1)+' / '+name+' — experimental assignment';find(v,'label1').text='amplitude 0–0.16';
 if(i===1){find(v,'fund').text='noise~';find(v,'fund').numinlets=1;v.lines=v.lines.filter(l=>!(l.patchline.source[0]==='fl'&&l.patchline.destination[0]==='fund')&&!(l.patchline.source[0]==='fund'&&l.patchline.destination[0]==='amp'));box(v,'noiseLP','onepole~ 900.',[24,364,180,24],2);wire(v,'fund','noiseLP');wire(v,'noiseLP','amp');wire(v,'in3','noiseLP',0,1);wire(synth,'route','v1',9,3);}
 if(i>=2){
  v.rect=[30,60,1180,780];find(v,'title').patching_rect[2]=1100;
  box(v,'pulseClock','phasor~ '+(i===2?'1.4':'.83'),[900,160,210,24],2);
  box(v,'pulseGate','<~ '+(i===2?'.045':'.07'),[900,225,210,24],2);
  box(v,'soften','slide~ 96 '+(i===2?'700':'1400'),[900,300,210,24],3);
  box(v,'pulseAmp','*~',[540,640,120,24],2);
  find(v,'out').patching_rect=[540,720,90,24];v.lines=v.lines.filter(l=>!(l.patchline.source[0]==='amp'&&l.patchline.destination[0]==='out'));
  wire(v,'pulseClock','pulseGate');wire(v,'pulseGate','soften');wire(v,'amp','pulseAmp');wire(v,'soften','pulseAmp',0,1);wire(v,'pulseAmp','out');
 }
});
// Reuse the already verified A/B companion structure, reducing to four mono inputs.
const audio=structuredClone(find(companion,'audio').patcher);
const removed=new Set(['in6','in7','in8','in9','l6','l7','l8','l9']);audio.boxes=audio.boxes.filter(v=>!removed.has(v.box.id));audio.lines=audio.lines.filter(v=>!removed.has(v.patchline.source[0])&&!removed.has(v.patchline.destination[0]));
find(audio,'in10').index=7;find(audio,'in11').index=8;find(audio,'l11').text='master 0…1 / unity';
for(const id of ['direct','multi']){const b=find(audio,id);b.text=b.text.replace('@inputs 8','@inputs 4');b.numinlets=4;}
for(const id of ['clip0','clip1'])find(audio,id).text='clip~ -0.95 0.95';
Object.assign(find(p,'audio'),{text:'p HEADPHONE_A_B',patcher:audio,numinlets:8,numoutlets:2});
find(p,'oper').text='spat5.oper @internals 8 @initwith "/source/number 4, /room/number 1, /speaker/number 17, /listener/editable 0, /listener/headphones/visible 1, /source/*/radius 0.2, /source/*/doppler 0"';
p.lines=p.lines.filter(v=>!(v.patchline.source[0]==='engine'&&['oper','audio'].includes(v.patchline.destination[0]))&&!(v.patchline.source[0]==='synthesis'&&v.patchline.destination[0]==='audio'));
wire(p,'engine','networkctl',0,2);wire(p,'engine','audio',3,7);for(let i=0;i<4;i++)wire(p,'synthesis','audio',i,i+2);
// New lower presentation band, without moving or replacing existing UI.
label('monlabel','HEADPHONE MONITORING',[24,1163,355,24]);
ui('monitoring','umenu',[24,1200,350,28],{numoutlets:3,items:['DIRECT BINAURAL',',','VIRTUAL SPEAKERS']});
label('mutelabel','INDIVIDUAL MUTE · experimental source identities',[410,1163,600,24]);
['SINE','NOISE','CLICK A','CLICK B'].forEach((name,i)=>{ui('mute'+(i+1),'toggle',[410+i*150,1200,24,24]);label('mutetext'+i,name,[447+i*150,1201,100,23]);box(p,'pre_mute'+i,'prepend mute'+(i+1),[24+i*360,3620,325,24]);wire(p,'mute'+(i+1),'pre_mute'+i);wire(p,'pre_mute'+i,'engine');});
label('meterslabel','STEREO MASTER / BEFORE DAC',[1050,1163,390,24]);
ui('meterL','meter~',[1050,1200,365,18],{numoutlets:1});ui('meterR','meter~',[1050,1235,365,18],{numoutlets:1});wire(p,'audio','meterL');wire(p,'audio','meterR',1);
ui('web','toggle',[24,1280,24,24]);label('weblabel','WEB / INSPECTOR OWNS POSITION',[64,1280,385,24]);
box(p,'pre_web','prepend web',[24,3685,325,24]);wire(p,'web','pre_web');wire(p,'pre_web','engine');
ui('local','message',[470,1278,200,27],{text:'local',numinlets:2});wire(p,'local','engine');label('localhint','↑ LOCAL MAPPINGS',[470,1316,245,23]);
label('click1label','CLICK 1 FREQ',[680,1250,95,20]);ui('click1','flonum',[680,1278,95,27],{numoutlets:2,minimum:500,maximum:12000,format:6});box(p,'pre_click1','prepend click1',[720,3760,325,24]);wire(p,'click1','pre_click1');wire(p,'pre_click1','engine');
label('click2label','CLICK 2 FREQ',[785,1250,95,20]);ui('click2','flonum',[785,1278,95,27],{numoutlets:2,minimum:500,maximum:12000,format:6});box(p,'pre_click2','prepend click2',[1100,3760,325,24]);wire(p,'click2','pre_click2');wire(p,'pre_click2','engine');
label('fan_readout','Spatial fan / active voices',[930,1316,480,23]);
label('rxlabel','MAX RECEIVE UDP',[930,1278,130,24]);ui('receiveport','number',[1070,1278,90,27],{numoutlets:2,minimum:1024,maximum:65535});
label('txlabel','MAX SEND UDP',[1170,1278,140,24]);ui('sendport','number',[1320,1278,130,27],{numoutlets:2,minimum:1024,maximum:65535});
label('osc_status','OSC waiting · start the WebGL bridge once',[24,1350,1010,24]);label('selectedlabel','SELECT SOURCE',[1080,1348,180,24]);ui('selected','number',[1280,1348,120,27],{numoutlets:2,minimum:1,maximum:4});
label('network_hint','Config: webgl/bridge/config.json · one Max receiver only · 4 active identities maximum · no browser audio enable',[24,1390,1410,24]);
const paths=[];for(let i=1;i<=4;i++)for(const k of ['xyz','dist','spread','prer','env','select'])paths.push('/source/'+i+'/'+k);for(let i=1;i<=17;i++)paths.push('/speaker/'+i+'/xyz');paths.push('/sources/xyz','/speakers/xyz');
const custom=['source/count','source/selected','monitoring/mode','state/request','listener/xyz','listener/yaw','light/xyz','light/target/xyz','light/intensity','subwoofer/xyz',...Array.from({length:6},(_,i)=>'robot/j'+(i+1)),...['centroid','area','penumbra','density','entropy'].map(k=>'shadow/'+k),...['play','stop','speed','preset'].map(k=>'motion/'+k)].map(k=>'/dotarea/'+k);
function router(paths){const r={fileversion:1,classnamespace:'box',rect:[50,70,1460,Math.ceil(paths.length/4)*130+220],boxes:[],lines:[]};box(r,'in','inlet',[24,30,70,24],0,1,{index:1});for(let i=0;i<paths.length;i+=4){const group=paths.slice(i,i+4),y=100+Math.floor(i/4)*130;box(r,'route'+i,'spat5.osc.route '+group.join(' '),[24,y,1390,24],1,group.length+1);wire(r,'in','route'+i);group.forEach((path,j)=>{box(r,'pre'+(i+j),'prepend '+path,[24+j*354,y+53,334,24]);wire(r,'route'+i,'pre'+(i+j),j);wire(r,'pre'+(i+j),'out');});}box(r,'out','outlet',[24,Math.ceil(paths.length/4)*130+130,70,24],1,0,{index:1});return r;}
box(p,'networkctl','js dot_area_link.js',[24,3300,500,26],3,7);
box(p,'osc_recv','spat5.osc.udpreceive @port 9000',[600,3200,750,26],1,3);box(p,'osc_decode','p VERIFIED_WEB_OSC',[24,3200,550,26],1,1,{patcher:router([...paths,...custom])});wire(p,'osc_recv','osc_decode');wire(p,'osc_decode','networkctl');
box(p,'convert','spat5.converter @initwith "/format xyz"',[580,3300,750,26],1,2);box(p,'osc_feedback','p VERIFIED_NATIVE_STATE',[24,3400,650,26],1,1,{patcher:router(paths)});wire(p,'oper','convert',1);wire(p,'convert','osc_feedback');wire(p,'convert','osc_feedback',1);wire(p,'osc_feedback','networkctl',0,1);
box(p,'osc_send','spat5.osc.udpsend @ip 127.0.0.1 @port 9001',[740,3400,680,26],1,2);wire(p,'networkctl','oper');wire(p,'networkctl','audio',1,1);wire(p,'networkctl','osc_send',2);wire(p,'networkctl','audio',3,6);wire(p,'networkctl','engine',4);wire(p,'networkctl','viewer',5);
for(const [i,id] of ['monitoring','receiveport','sendport','selected'].entries()){box(p,'netpre'+id,'prepend '+(id.endsWith('port')?'port':id),[24+i*360,3100,325,24]);wire(p,id,'netpre'+id);wire(p,'netpre'+id,id==='receiveport'?'osc_recv':id==='sendport'?'osc_send':'networkctl',0,id==='receiveport'||id==='sendport'?0:2);}
box(p,'netdelay','delay 200',[24,3500,250,24],2);box(p,'netinit','init',[320,3500,200,24],2,1,{maxclass:'message'});wire(p,'load','netdelay');wire(p,'netdelay','netinit');wire(p,'netinit','networkctl');
box(p,'portconfig','route receive send',[650,3500,340,24],1,3);wire(p,'networkctl','portconfig',6);wire(p,'portconfig','netprereceiveport');wire(p,'portconfig','netpresendport',1);
p.dependency_cache=[{name:'dot_area_engine.js',type:'TEXT',implicit:1},{name:'dot_area_view.js',type:'TEXT',implicit:1},{name:'dot_area_link.js',type:'TEXT',implicit:1}];
// Keep primitive arrays inline, matching Max's readable saved-patch convention.
process.stdout.write(JSON.stringify(document,null,4).replace(/\[\n\s+((?:(?:-?\d+(?:\.\d+)?|"[^"\n]*")(?:,\n\s+)?)+)\n\s*\]/g,(_,items)=>'[ '+items.replace(/,\n\s+/g,', ')+' ]')+'\n');
