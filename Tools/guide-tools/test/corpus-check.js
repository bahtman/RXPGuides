'use strict';

// Read-only integration check against installed guides, including large vaults.
const fs = require('node:fs');
const path = require('node:path');
const assert = require('node:assert/strict');
const core = require('../core');

function filesIn(directory) {
    return fs.readdirSync(directory, { withFileTypes: true }).flatMap(entry => {
        const file = path.join(directory, entry.name);
        return entry.isDirectory() ? filesIn(file) : entry.isFile() && file.endsWith('.lua') ? [file] : [];
    });
}

const target = path.resolve(process.argv[2] || path.join(__dirname, '../../../Guides'));
const summary = { files: 0, guides: 0, filesNeedingFormatting: 0, findings: {}, samples: {} };
const started = Date.now();
for (const file of filesIn(target)) {
    const source = fs.readFileSync(file, 'utf8');
    const before = core.extract(source);
    const formatted = core.format(source);
    const after = core.extract(formatted);
    assert.equal(core.format(formatted), formatted, `Formatting must be idempotent: ${file}`);
    assert.equal(before.regions.length, after.regions.length, file);
    let oldCursor = 0, newCursor = 0;
    for (let i = 0; i < before.regions.length; i++) {
        const oldRegion = before.regions[i], newRegion = after.regions[i];
        assert.equal(source.slice(oldCursor, oldRegion.start), formatted.slice(newCursor, newRegion.start), `Lua prefix changed: ${file}`);
        const normalize = content => content.split(/\r\n|\n|\r/).map(line => line.trim());
        assert.deepEqual(normalize(source.slice(oldRegion.start, oldRegion.end)), normalize(formatted.slice(newRegion.start, newRegion.end)), `Guide content changed: ${file}`);
        oldCursor = oldRegion.end; newCursor = newRegion.end;
    }
    assert.equal(source.slice(oldCursor), formatted.slice(newCursor), `Lua suffix changed: ${file}`);
    summary.files++;
    summary.guides += before.regions.length;
    summary.filesNeedingFormatting += Number(source !== formatted);
    for (const issue of core.lint(source)) {
        summary.findings[issue.code] = (summary.findings[issue.code] || 0) + 1;
        const samples = summary.samples[issue.code] ||= [];
        if (samples.length < 2) samples.push({ file: path.relative(target, file), line: issue.line, message: issue.message });
    }
}
summary.seconds = (Date.now() - started) / 1000;
console.log(JSON.stringify(summary, null, 2));
