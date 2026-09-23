// Generates a new companion only; prints JSON for apply_patch.
const color=[.78,.88,.83,1],bg=[.075,.12,.12,1];
function patch(w,h,pres=0){return {fileversion:1,appversion:{major:9,minor:0,revision:0,architecture:'arm64',modernui:1},classnamespace:'box',rect:[50,70,w,h],openinpresentation:pres,bgcolor:bg,default_fontname:'Arial',default_fontsize:12,boxes:[],lines:[]};}
function b(p,id,text,r,ni=1,no=1,extra={}){p.boxes.push({box:{id,maxclass:'newobj',text,patching_rect:r,numinlets:ni,numoutlets:no,...extra}});return id;}
function w(p,s,d,so=0,di=0){p.lines.push({patchline:{source:[s,so],destination:[d,di]}});}
function note(p,id,text,r,size=12,extra={}){return b(p,id,text,r,1,0,{maxclass:'comment',textcolor:color,fontsize:size,...extra});}
const official=[];for(let i=1;i<=8;i++)for(const param of ['xyz','dist','spread','prer','env'])official.push(`/source/${i}/${param}`);for(let i=1;i<=17;i++)official.push(`/speaker/${i}/xyz`);official.push('/speakers/xyz','/sources/xyz');
const custom=['/dotarea/source/count','/dotarea/monitoring/mode','/dotarea/state/request','/dotarea/listener/xyz','/dotarea/listener/yaw','/dotarea/light/xyz','/dotarea/light/target/xyz','/dotarea/light/intensity','/dotarea/subwoofer/xyz',...Array.from({length:6},(_,i)=>`/dotarea/robot/j${i+1}`),...['centroid','area','penumbra','density','entropy'].map(k=>`/dotarea/shadow/${k}`)];
function router(paths){const p=patch(1460,Math.ceil(paths.length/4)*130+220);b(p,'in','inlet',[24,30,70,24],0,1,{index:1});
 for(let i=0;i<paths.length;i+=4){const row=Math.floor(i/4),group=paths.slice(i,i+4),y=100+row*130;b(p,'route'+i,'spat5.osc.route '+group.join(' '),[24,y,1390,24],1,group.length+1);w(p,'in','route'+i);group.forEach((path,j)=>{b(p,'pre'+(i+j),'prepend '+path,[24+j*354,y+53,334,24]);w(p,'route'+i,'pre'+(i+j),j);w(p,'pre'+(i+j),'out');});}
 b(p,'out','outlet',[24,Math.ceil(paths.length/4)*130+130,70,24],1,0,{index:1});return p;}
function voices(){const p=patch(1350,620);note(p,'title','8 calm additive voices / fixed allocation, source mute selects 1–8',[24,20,1290,30],20);for(let i=0;i<8;i++){const x=24+i%4*330,y=90+Math.floor(i/4)*250;b(p,'osc'+i,'cycle~ '+[165,206.25,247.5,123.75,185.625,220,275,146.67][i],[x,y,160,24],2);b(p,'amp'+i,'*~ 0.018',[x,y+65,130,24],2);b(p,'out'+i,'outlet',[x,y+145,75,24],1,0,{index:i+1});w(p,'osc'+i,'amp'+i);w(p,'amp'+i,'out'+i);}return p;}
function audio(){const p=patch(1610,1050);note(p,'h','DIRECT A / MULTICHANNEL + VIRTUALSPEAKERS B / 200 ms crossfade',[24,20,1540,30],22);
 const labels=['oper control','virtual coordinates',...Array.from({length:8},(_,i)=>'source '+(i+1)),'A/B 0…1','master 0…0.2'];
 labels.forEach((t,i)=>{b(p,'in'+i,'inlet',[24+i*132,80,55,24],0,1,{index:i+1});note(p,'l'+i,t,[24+i*132,114,125,24],10);});
 b(p,'filter','spat5.osc.ignore /speaker /speakers',[24,190,390,24]);w(p,'in0','filter');
 b(p,'direct','spat5.spat~ @inputs 8 @outputs 2 @rooms 1 @internals 8 @initwith "/panning/type binaural"',[24,260,760,24],8,3);w(p,'filter','direct');
 b(p,'multi','spat5.spat~ @inputs 8 @outputs 17 @rooms 1 @internals 8 @initwith "/panning/type knn"',[830,260,760,24],8,18);w(p,'in0','multi');
 for(let i=0;i<8;i++){w(p,'in'+(i+2),'direct',0,i);w(p,'in'+(i+2),'multi',0,i);}
 b(p,'virtual','spat5.virtualspeakers~ @speakers 17',[830,375,520,24],17,3);w(p,'in1','virtual');for(let i=0;i<17;i++)w(p,'multi','virtual',i,i);
 b(p,'mixpack','pack 0. 200',[24,445,175,24],2);b(p,'mixline','line~ 0.',[235,445,160,24],2,2);w(p,'in10','mixpack');w(p,'mixpack','mixline');
 b(p,'inverse','!-~ 1.',[435,445,160,24],2);w(p,'mixline','inverse');
 b(p,'gainpack','pack 0. 150',[1060,445,180,24],2);b(p,'gainline','line~ 0.',[1280,445,180,24],2,2);w(p,'in11','gainpack');w(p,'gainpack','gainline');
 for(let channel=0;channel<2;channel++){const x=24+channel*820;b(p,'a'+channel,'*~',[x,550,140,24],2);b(p,'b'+channel,'*~',[x+230,550,140,24],2);w(p,'direct','a'+channel,channel);w(p,'inverse','a'+channel,0,1);w(p,'virtual','b'+channel,channel);w(p,'mixline','b'+channel,0,1);
  b(p,'sum'+channel,'+~',[x,650,140,24],2);w(p,'a'+channel,'sum'+channel);w(p,'b'+channel,'sum'+channel,0,1);b(p,'gain'+channel,'*~',[x,740,140,24],2);w(p,'sum'+channel,'gain'+channel);w(p,'gainline','gain'+channel,0,1);b(p,'clip'+channel,'clip~ -0.7 0.7',[x,830,190,24],3);w(p,'gain'+channel,'clip'+channel);b(p,'out'+channel,'outlet',[x,935,80,24],1,0,{index:channel+1});w(p,'clip'+channel,'out'+channel);}
 return p;
}
const p=patch(1370,910,1);
function ui(id,cls,text,r,ni=1,no=1,extra={}){return b(p,id,text,r,ni,no,{maxclass:cls,presentation:1,presentation_rect:r,varname:id,...extra});}
function label(id,text,r,size=12){ui(id,'comment',text,r,1,0,{fontsize:size,textcolor:color});}
label('title','φ / DE-SYMMETRICAL CORE',[25,23,1300,45],27);label('subtitle','WEBGL ↔ OSC ↔ SPAT 5   /   BINAURAL COMPARISON',[25,80,1280,30],18);
label('warn','HEADPHONES ONLY · starts muted · visual robot data never controls hardware',[25,125,1280,28],14);
label('net','01  OSC BRIDGE',[25,190,600,30],20);label('audioTitle','02  AUDIO / LOCAL ENABLE ONLY',[715,190,625,30],20);
label('receiveLabel','RECEIVE UDP',[25,243,195,25]);ui('receiveport','number',undefined,[240,243,110,26],1,2,{minimum:1024,maximum:65535});
label('sendLabel','SEND UDP → 127.0.0.1',[25,294,195,25]);ui('sendport','number',undefined,[240,294,110,26],1,2,{minimum:1024,maximum:65535});
label('last','Waiting for browser /dotarea messages…',[25,352,625,50]);
ui('sound','toggle',undefined,[715,244,27,27]);label('soundlabel','SOUND ON',[761,244,190,26]);ui('gain','flonum',undefined,[1040,244,110,27],1,2,{minimum:0,maximum:.2});label('gainlabel','MASTER 0…0.2',[1170,244,170,26]);
ui('dsp','ezdac~',undefined,[715,300,45,45],2,0);label('dsplabel','DSP ON/OFF',[783,309,190,26]);
ui('mode','umenu',undefined,[1040,310,290,28],1,3,{items:['A DIRECT BINAURAL',',','B VIRTUAL SPEAKERS']});
label('modeA','A   sources → Spat binaural → headphones',[715,367,625,28],14);label('modeB','B   sources → Spat 17 feeds → virtualspeakers~ → headphones',[715,409,625,28],13);
label('description','Max is the audio engine. Browser handles scene, light and motion.\nNative Spat inspector edits return to the browser. Incoming edits release affected web mappings.',[25,446,630,65],13);
ui('open','message','/window/open',[25,548,210,28],2,1);label('openlabel','Open detailed Spat inspector',[258,550,377,25]);
ui('request','message','/dotarea/state/request',[715,550,310,28],2,1);label('requestlabel','Send current state',[1045,550,295,25]);
label('instructions','1  Start npm run dev in webgl/      2  Open browser + Send scene to Max      3  Enable DSP and SOUND      4  Raise MASTER slowly',[25,620,1300,38],13);
label('limit','8 allocated test voices · 17 full-range speaker feeds · SUB1 metadata only · built-in HRTF · source radius 0.2 m',[25,681,1300,30],12);
label('coord','Spat coordinates are listener-relative XYZ, metres. The web adapter rotates/translates both sources and speakers.',[25,733,1300,30],12);
label('safety','A/B crossfade: 200 ms. Master: 150 ms ramp after both paths. Browser OSC cannot enable DSP or raise master.',[25,785,1300,30],12);
const y=1000;
b(p,'recv','spat5.osc.udpreceive @port 9000',[25,y,480,26],1,3);b(p,'decode','p VERIFIED_OSC_INPUTS',[25,y+70,480,26],1,1,{patcher:router([...official,...custom])});w(p,'recv','decode');
b(p,'controller','js dot_area_webgl_control.js',[25,y+150,480,26],2,6);w(p,'decode','controller');w(p,'request','controller');
b(p,'oper','spat5.oper @internals 8 @initwith "/source/number 8, /speaker/number 17, /room/number 1, /listener/editable 0"',[545,y,790,26],1,4);w(p,'controller','oper');w(p,'open','oper');
b(p,'convert','spat5.converter @initwith "/format xyz"',[545,y+70,480,26],1,2);w(p,'oper','convert',1);
b(p,'feedback','p VERIFIED_OSC_FEEDBACK',[545,y+150,480,26],1,1,{patcher:router(official)});w(p,'convert','feedback');w(p,'convert','feedback',1);w(p,'feedback','controller',0,1);
b(p,'send','spat5.osc.udpsend @ip 127.0.0.1 @port 9001',[25,y+240,480,26],1,2);w(p,'controller','send',2);
b(p,'voices','p EIGHT_TEST_VOICES',[545,y+240,480,26],0,8,{patcher:voices()});
b(p,'audio','p TWO_MONITORING_PATHS',[25,y+330,590,26],12,2,{patcher:audio()});w(p,'oper','audio');w(p,'controller','audio',1,1);for(let i=0;i<8;i++)w(p,'voices','audio',i,i+2);w(p,'controller','audio',3,10);w(p,'controller','audio',5,11);w(p,'audio','dsp');w(p,'audio','dsp',1,1);
for(const [i,key]of ['sound','gain','mode','receiveport','sendport'].entries()){const x=25+i*265;b(p,'pre'+key,'prepend '+(key.endsWith('port')?'port':key),[x,y+420,240,26]);w(p,key,'pre'+key);w(p,'pre'+key,key==='receiveport'?'recv':key==='sendport'?'send':'controller');}
b(p,'load','loadbang',[25,y+510,170,26],0);b(p,'defer','deferlow',[230,y+510,170,26]);b(p,'delay','delay 150',[440,y+510,170,26],2);b(p,'init','init',[650,y+510,170,26],2,1,{maxclass:'message'});w(p,'load','defer');w(p,'defer','delay');w(p,'delay','init');w(p,'init','controller');
b(p,'port1','loadmess 9000',[25,y+580,230,26]);b(p,'port2','loadmess 9001',[300,y+580,230,26]);w(p,'port1','receiveport');w(p,'port2','sendport');
p.dependency_cache=[{name:'dot_area_webgl_control.js',type:'TEXT',implicit:1}];
process.stdout.write(JSON.stringify({patcher:p})+'\n');
