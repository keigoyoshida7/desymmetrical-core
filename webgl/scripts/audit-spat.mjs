// Read-only audit of the installed package. Optional first argument: Spat package path.
import {readFile,access} from 'node:fs/promises';
import path from 'node:path';
import os from 'node:os';
const base=process.argv[2]||process.env.SPAT5_PATH||path.join(os.homedir(),'Documents/Max 9/Packages/spat5');
const info=JSON.parse(await readFile(path.join(base,'package-info.json'),'utf8'));
const refs='docs/ref/refpages/spat5-ref/';
const checks=[
 ['spat5.oper','/source/[index]/xyz'],['spat5.oper','/source/[index]/dist'],['spat5.oper','/source/[index]/prer'],['spat5.oper','/source/[index]/env'],['spat5.oper','/source/[index]/pres'],['spat5.oper','/source/[index]/revp'],['spat5.oper','/source/[index]/radius'],['spat5.oper','/source/[index]/doppler'],['spat5.oper','/source/[index]/mute'],['spat5.oper','/room/[index]/reverberance'],['spat5.oper','/speaker/[index]/xyz'],['spat5.oper','/speakers/xyz'],['spat5.oper','/sources/xyz'],['spat5.virtualspeakers~','/speaker/[index]/xyz'],['spat5.virtualspeakers~','/speakers/xyz'],['spat5.spat~','/panning/type']
];
const result=[];for(const [object,message] of checks){const xml=await readFile(path.join(base,refs+object+'.maxref.xml'),'utf8');if(!xml.includes('name="'+message+'"'))throw Error('Missing official syntax: '+object+' '+message);result.push(object+' '+message);}
const examples=[
 ['help/spat5.pan~.maxhelp','/source/1/spread $1'],
 ['help/spat5.converter.maxhelp','spat5.converter @initwith "/format xyz"'],
 ['help/spat5.virtualspeakers~.maxhelp','spat5.virtualspeakers~ @speakers 6'],
 ['examples/tutorials/spat5.tuto-binaural-1.maxpat','/listener/editable 0'],
 ['help/spat5.osc.udpreceive.maxhelp','spat5.osc.udpreceive'],
 ['help/spat5.osc.udpsend.maxhelp','spat5.osc.udpsend'],
 ['help/spat5.osc.route.maxhelp','spat5.osc.route'],
 ['help/spat5.osc.ignore.maxhelp','spat5.osc.ignore']
];
function texts(p,out=[]){for(const {box:b} of p.boxes||[]){if(b.text)out.push(b.text);if(b.patcher)texts(b.patcher,out);}return out;}
for(const [file,needle] of examples){const data=JSON.parse(await readFile(path.join(base,file),'utf8'));if(!texts(data.patcher).some(s=>s.includes(needle)))throw Error('Official example missing: '+needle);result.push(file+' → '+needle);}
for(const name of ['spat5.oper','spat5.spat~','spat5.virtualspeakers~','spat5.converter','spat5.osc.udpreceive','spat5.osc.udpsend','spat5.osc.route','spat5.osc.ignore'])await access(path.join(base,refs+name+'.maxref.xml'));
console.log(JSON.stringify({version:info.version,verified:result.length,checks:result,modifiedPackage:false},null,2));
