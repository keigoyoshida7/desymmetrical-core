/* Max 9 legacy js, ES5. Artistic proxy and mapping controller; no optics. */
autowatch = 1;
inlets = 1;
outlets = 4; // oper messages, embedded viewer, synthesis parameters, master
var state, maps, manual, features, sources = [], cache = {}, phase = 0, webActive=4;
var names = ['cx','cy','cz','area','penumbra','contour','density','entropy'];
var ranges = {click1:[500,12000],click2:[500,12000]};
var defaults = [0, -0.65, 0, 0.35, 0.25, 0.3, 0.6, 0.25];
function clamp(v,lo,hi) { return Math.max(lo,Math.min(hi,v)); }
function setui(key,v) { var b=this.patcher.getnamed(key); if(b) b.message('set',v); }
function label(key,v) { var b=this.patcher.getnamed(key); if(b) b.message('set',v); }
function send(path,value) {
    var a = value instanceof Array ? value : [value];
    var signature = a.join(' ');
    if(cache[path]!==signature) { outlet(0,[path].concat(a)); cache[path]=signature; }
}
function scene(path,value) {
    send(path,value);
    outlet(1,[path].concat(value instanceof Array ? value : [value]));
}
function synth(key,v) { outlet(2,[key,v]); }
function init() {
    state = {azimuth:35, lightdistance:1.4, height:0.6, intensity:0.8,
        mode:1, sound:0, gain:0, frequency:80, click1:3500, click2:8000, activity:0.55,
        resolution:1, orbit:0, speed:8, reverberance:45, web:0,
        mute1:0,mute2:0,mute3:0,mute4:0};
    resetMappings(); manual={};
    for(var i=0;i<names.length;i++) manual[names[i]]=defaults[i];
    cache={}; phase=0;
    outlet(1,['/source/number',4]); outlet(1,['/speaker/number',17]);
    outlet(1,['/listener/headphones/visible',1]);
    outlet(1,['/source/*/editable',0]);
    outlet(1,['/display/zoom',30]);
    outlet(1,['/source/*/label/visible',1]);
    outlet(0,['/source/*/radius',0.2]);
    outlet(0,['/source/*/doppler',0]);
    outlet(0,['/source/*/pres',80]);
    outlet(0,['/source/*/revp',35]);
    var labels=['TRACE_SINE','PENUMBRA_NOISE','EDGE_CLICK_A','EDGE_CLICK_B'];
    var colors=[[0.3,0.85,0.72,1],[0.3,0.85,0.72,1],[1,0.65,0.35,1],[0.65,0.6,1,1]];
    for(i=1;i<=4;i++) {
        scene('/source/'+i+'/label',labels[i-1]);
        scene('/source/'+i+'/color',colors[i-1]);
    }
    refreshUI(); update(); outlet(0,'bang');
    setui('preset',0);label('preset_status','01_NEUTRAL · light-derived');
}
function resetMappings() {
    maps=[{on:1,min:-2.5,max:2.5},{on:1,min:0,max:100},
        {on:1,min:15,max:75},{on:0,min:0.6,max:5},
        {on:0,min:0,max:0.8},{on:0,min:10,max:75},
        {on:0,min:0,max:360}];
}
function refreshUI() {
    for(var k in state) setui(k,state[k]);
    for(var i=0;i<7;i++) {
        setui('m'+i+'on',maps[i].on);
        setui('m'+i+'min',maps[i].min);setui('m'+i+'max',maps[i].max);
    }
}
function derive() {
    var a=state.azimuth*Math.PI/180;
    var r=clamp(0.25+0.45*state.lightdistance/(0.35+state.height),0.2,0.95);
    return {cx:-Math.sin(a)*r,cy:-Math.cos(a)*r,cz:0,
        area:clamp(0.12+0.4/(state.lightdistance+0.3)+0.18*(1-state.height/2),0,1),
        penumbra:clamp(0.1+0.3*state.height+0.18/(state.lightdistance+0.3),0,1),
        contour:clamp(0.25+0.65*state.intensity-0.15*state.height,0,1),
        density:clamp(0.2+0.7*state.intensity,0,1),
        entropy:0.2+0.3*(0.5+0.5*Math.sin(3*a))};
}
function mapped(i,input,fallback) {
    var m=maps[i], out=m.on ? m.min+clamp(input,0,1)*(m.max-m.min) : fallback;
    label('m'+i+'input',input.toFixed(2));
    label('m'+i+'out',out.toFixed(2)+(m.on?'':' [base]'));
    return out;
}
function update() {
    if(!state) return;
    features=state.mode ? derive() : manual;
    for(var i=0;i<names.length;i++) setui(names[i],features[names[i]]);
    label('mode_status',state.mode?'LIGHT-DERIVED · Copy to manual to isolate a feature':'MANUAL · independent features');
    var m=maps[0], xyz=[];
    var keys=['cx','cy','cz'];
    for(i=0;i<3;i++) xyz[i]=m.on ? m.min+(features[keys[i]]+1)*0.5*(m.max-m.min) : [0,2,0][i];
    label('m0input',features.cx.toFixed(2)+' / '+features.cy.toFixed(2)+' / '+features.cz.toFixed(2));
    label('m0out',xyz.map(function(x){return x.toFixed(1);}).join(' / ')+(m.on?'':' [base]'));
    var spread=mapped(1,features.area,0);
    var room=mapped(2,features.penumbra,25);
    var centroidDist=Math.sqrt(xyz[0]*xyz[0]+xyz[1]*xyz[1]+xyz[2]*xyz[2]);
    var dist=mapped(3,features.density,clamp(centroidDist,0.35,8));
    var edge=mapped(4,features.contour,0.25);
    var env=mapped(5,features.entropy,25);
    var rot=mapped(6,state.azimuth/360,0)*Math.PI/180;
    var a=Math.atan2(xyz[0],xyz[1])+rot;
    var elev=Math.atan2(xyz[2],Math.max(0.001,Math.sqrt(xyz[0]*xyz[0]+xyz[1]*xyz[1])));
    var fan=spread*1.5*Math.PI/180;
    var offsets=[-0.5,-0.16,0.18,0.5];
    var ratios=[1,1.25,1.5,0.75];
    var n=state.web?webActive:(state.resolution===0?1:4);
    if(!state.web)send('/dotarea/source/count',n);
    if(!state.web)sources=[];
    outlet(1,['/display/zoom',clamp(85/Math.max(0.35,dist),10,42)]);
    for(i=0;i<4;i++) {
        var angle=a+(n===1?0:offsets[i]*fan);
        var d=clamp(dist,0.35,8), horizontal=d*Math.cos(elev);
        var pos=[Math.sin(angle)*horizontal,Math.cos(angle)*horizontal,d*Math.sin(elev)];
        if(!state.web){
            sources.push(pos);
            scene('/source/'+(i+1)+'/xyz',pos);
            scene('/source/'+(i+1)+'/visible',i<n?1:0);
            send('/source/'+(i+1)+'/spread',spread);
            send('/source/'+(i+1)+'/prer',clamp(room+(i===1?8:0),0,85));
            send('/source/'+(i+1)+'/env',env);
        }
        var freq=i===0?state.frequency:(i===2?state.click1: (i===3?state.click2:120));
        freq=clamp(freq,20,12000);
        synth('f'+(i+1),freq);
        var breath=0.85+0.15*Math.sin(phase*(0.7+i*0.13)+i);
        // Bounded source headroom, followed by ONE unity-capable final master.
        var level=(i<n&&!state['mute'+(i+1)]?1:0)*0.16*state.activity*breath;
        synth('a'+(i+1),level);
    }
    synth('edge',edge);
    synth('cutoff',350+900*(1-features.penumbra));
    send('/room/1/reverberance',state.reverberance);
    outlet(3,state.sound*state.gain);
    outlet(0,['/dotarea/master/state',state.sound,state.gain,state.sound*state.gain]);
    label('scene_readout','Centre '+(a*180/Math.PI).toFixed(0)+'° CW  ·  elev '+(elev*180/Math.PI).toFixed(0)+'°  ·  '+dist.toFixed(2)+' m');
    label('fan_readout',state.web?'WEB / native Spat coordinates · local mappings on hold':'Spread '+spread.toFixed(0)+'%  →  fan '+(spread*1.5).toFixed(0)+'° · '+n+' active voice'+(n>1?'s':''));
    var diagram=this.patcher.getnamed('installation');
    if(diagram) diagram.message.apply(diagram,['scene',state.azimuth,state.lightdistance,state.height,state.intensity,features.cx,features.cy,features.area,features.penumbra,n].concat(sources[0],sources[1],sources[2],sources[3]));
}
function anything() {
    var args=arrayfromargs(arguments), key=messagename, value=Number(args[0]);
    if(!state) return;
    if(key==='local'){state.web=0;cache={};setui('web',0);update();return;}
    if(key==='copy') { features=state.mode?derive():manual; manual={}; for(var i=0;i<names.length;i++)manual[names[i]]=features[names[i]]; state.mode=0; setui('mode',0); update();return; }
    if(key==='reset') { var sound=state.sound,gain=state.gain; init();state.sound=sound;state.gain=gain;refreshUI();update();return; }
    if(key==='reapply') {cache={};update();outlet(0,'bang');return;}
    if(key==='panic') {state.sound=0;state.orbit=0;setui('sound',0);setui('orbit',0);update();return;}
    if(key==='lightxy') {state.azimuth=((value%360)+360)%360;state.lightdistance=clamp(Number(args[1]),0.4,3);setui('azimuth',state.azimuth);setui('lightdistance',state.lightdistance);update();return;}
    if(key==='preset') {preset(value);return;}
    if(!isFinite(value)) return;
    var match=/^m([0-6])(on|min|max)$/.exec(key);
    if(match) {
        var index=Number(match[1]),field=match[2];
        var bounds=[[-5,5],[0,100],[0,85],[0.35,8],[0,1],[0,85],[-360,360]][index];
        maps[index][field]=field==='on'?(value?1:0):clamp(value,bounds[0],bounds[1]);
        setui(key,maps[index][field]);update();return;
    }
    if(names.indexOf(key)>=0) {
        // Editing a derived value captures all features first; no hidden write.
        if(state.mode) {var proxy=derive();for(var j=0;j<names.length;j++)manual[names[j]]=proxy[names[j]];state.mode=0;setui('mode',0);}
        manual[key]=clamp(value,key.charAt(0)==='c'&&key!=='contour'?-1:0,1);
    } else if(state.hasOwnProperty(key)) {
        var ranges={azimuth:[0,360],lightdistance:[0.4,3],height:[0,2],intensity:[0,1],mode:[0,1],sound:[0,1],gain:[0,1],frequency:[20,12000],click1:[500,12000],click2:[500,12000],activity:[0,1],resolution:[0,1],orbit:[0,1],speed:[-30,30],reverberance:[15,75],web:[0,1],mute1:[0,1],mute2:[0,1],mute3:[0,1],mute4:[0,1]};
        if(typeof globalThis!=='undefined')globalThis.ranges=ranges;state[key]=clamp(value,ranges[key][0],ranges[key][1]);setui(key,state[key]);
    }
    label('preset_status','CUSTOM · reversible experiment');update();
}
function tick() {
    if(!state) return;
    phase+=0.04*(0.1+state.activity);
    if(state.web){update();return;}
    if(state.orbit) {state.azimuth=(state.azimuth+state.speed*0.04+360)%360;setui('azimuth',state.azimuth);update();}
}
function preset(index) {
    state.web=0;setui('web',0);cache={};
    index=clamp(Math.round(index),0,4);resetMappings();
    var values=[[0,-0.65,0,0.35,0.25,0.3,0.6,0.25],
        [0.45,0.55,0,0.04,0.02,0.15,0.65,0.1],
        [-0.35,0.55,0.15,0.9,0.88,0.15,0.5,0.8],
        [0.5,-0.45,0,0.08,0.12,0.92,0.75,0.2],
        [0,-0.65,0.2,0.65,0.5,0.65,0.65,0.7]];
    for(var i=0;i<names.length;i++)manual[names[i]]=values[index][i];
    state.mode=(index===0||index===4)?1:0;
    state.orbit=index===4?1:0;state.speed=index===4?18:8;
    state.activity=index===4?0.7:0.55;state.frequency=index===2?130:80;state.click1=3500;state.click2=8000;
    state.reverberance=index===2?62:(index===1?25:45);
    state.resolution=1;
    if(index===2)maps[5].on=1;
    if(index===3)maps[4].on=1;
    if(index===4){maps[4].on=1;maps[5].on=1;state.height=0.9;state.lightdistance=1.6;}
    if(index===0){state.azimuth=35;state.lightdistance=1.4;state.height=0.6;state.intensity=0.8;}
    refreshUI();setui('preset',index);update();
    label('preset_status',['01_NEUTRAL','02_NARROW_SHADOW','03_WIDE_PENUMBRA','04_STRONG_EDGE','05_UNSTABLE'][index]+(state.mode?' · light-derived':' · manual'));
}
// Web input holds native spatial targets; local synthesis/master remain usable.
function external(v){if(!state)return;state.web=v?1:0;if(v){state.orbit=0;setui('orbit',0);}setui('web',state.web);}
function webposition(i,x,y,z){if(!state||i<1||i>4)return;sources[i-1]=[x,y,z];}
function webfeature(k,v){if(!state||names.indexOf(k)<0)return;manual[k]=clamp(v,k==='cx'||k==='cy'||k==='cz'?-1:0,1);state.mode=0;setui('mode',0);}
function weblight(x,y,z){if(!state)return;state.azimuth=(Math.atan2(x+.45,y)*180/Math.PI+360)%360;state.lightdistance=clamp(Math.sqrt((x+.45)*(x+.45)+y*y+(z-.16)*(z-.16)),.4,3);state.height=clamp(z,0,2);setui('azimuth',state.azimuth);setui('lightdistance',state.lightdistance);setui('height',state.height);}
function webintensity(v){if(state){state.intensity=clamp(v,0,1);setui('intensity',state.intensity);}}
function webcount(v){webActive=clamp(Math.round(v),1,4);}
