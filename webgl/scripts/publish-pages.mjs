import {cp,mkdir,rm,writeFile} from 'node:fs/promises';

// Build first using npm run publish:pages. Commit docs/ with the corresponding source.
const destination=new URL('../../docs/',import.meta.url);
await rm(destination,{recursive:true,force:true});
await mkdir(destination,{recursive:true});
await cp(new URL('../dist/',import.meta.url),destination,{recursive:true});
await writeFile(new URL('.nojekyll',destination),'');
console.log('GitHub Pages files prepared in docs/. Commit and push to publish.');
