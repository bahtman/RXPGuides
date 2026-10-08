'use strict';

// Refresh the portable command snapshot from the addon installed beside this tool.
const fs = require('node:fs');
const path = require('node:path');
const source = fs.readFileSync(path.join(__dirname, '../../functions.lua'), 'utf8');
const catalog = {};
const aliases = [];
const pattern = /function\s+addon\.functions\.([A-Za-z_]\w*)\s*\(([^)]*)\)|addon\.functions(?:\.([A-Za-z_]\w*)|\[['"]([^'"]+)['"]\])\s*=\s*([^\r\n]+)/g;
for (const match of source.matchAll(pattern)) {
    const name = match[1] || match[3] || match[4];
    if (['__index', 'events'].includes(name)) continue;
    let parameters = match[2] || /^function\s*\(([^)]*)\)/.exec(match[5] || '')?.[1];
    if (parameters?.includes('...')) {
        const body = source.slice(match.index + match[0].length, match.index + match[0].length + 1000);
        const unpacked = /local\s+(text\s*,\s*[A-Za-z_][\w\s,]*?)\s*=\s*\.\.\./.exec(body);
        if (unpacked) parameters = unpacked[1];
    }
    catalog[name] = parameters ? parameters.split(',').map(x => x.trim()).filter(x => !['self', 'text', '_'].includes(x)).join(', ') : '...';
    const alias = /^addon\.functions\.([A-Za-z_]\w*)\s*$/.exec(match[5] || '');
    if (alias) aliases.push([name, alias[1]]);
}
for (const [name, target] of aliases) if (target in catalog) catalog[name] = catalog[target];
const ordered = Object.fromEntries(Object.entries(catalog).sort(([a], [b]) => a.localeCompare(b)));
fs.writeFileSync(path.join(__dirname, 'commands.json'), JSON.stringify(ordered, null, 2) + '\n');
console.log(`Captured ${Object.keys(ordered).length} commands from functions.lua.`);
