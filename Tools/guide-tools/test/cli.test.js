'use strict';

const test = require('node:test');
const assert = require('node:assert/strict');
const fs = require('node:fs');
const os = require('node:os');
const path = require('node:path');
const { spawnSync } = require('node:child_process');
const cli = path.resolve(__dirname, '../cli.js');
const run = (...args) => spawnSync(process.execPath, [cli, ...args], { encoding: 'utf8' });
const fixture = '#group Test\n#name Test\nstep\n.accept 123\n';

test('CLI lint/check/write/JSON/strict have correct exit status and preserve input', t => {
    const directory = fs.mkdtempSync(path.join(os.tmpdir(), 'rxp-tools-'));
    t.after(() => fs.rmSync(directory, { recursive: true, force: true }));
    const file = path.join(directory, 'guide.rxp');
    fs.writeFileSync(file, fixture);
    assert.equal(run('lint', directory).status, 0);
    assert.equal(run('format', file, '--check').status, 1);
    assert.equal(fs.readFileSync(file, 'utf8'), fixture);
    assert.equal(run('format', file, '--write').status, 0);
    assert.equal(run('format', file, '--check').status, 0);
    fs.appendFileSync(file, '    #requires missing\n');
    assert.equal(run('lint', file).status, 0);
    assert.equal(run('lint', file, '--strict').status, 1);
    const json = run('lint', file, '--json');
    assert.equal(JSON.parse(json.stdout)[0].diagnostics[0].code, 'unresolved-label');
    fs.appendFileSync(file, '    .accpet 123\n');
    assert.equal(run('lint', file).status, 1);
    assert.equal(run('lint', file, '--ignore', 'unknown-command').status, 0);
    assert.equal(run('format', file, '--write', '--check').status, 2);
    assert.equal(run('format', file, '--indent', '0').status, 2);
    assert.equal(run('lint', '--extra-command').status, 2);
});

test('CLI rejects non-UTF-8 bytes and does not rewrite them', t => {
    const directory = fs.mkdtempSync(path.join(os.tmpdir(), 'rxp-tools-'));
    t.after(() => fs.rmSync(directory, { recursive: true, force: true }));
    const file = path.join(directory, 'guide.rxp');
    const bytes = Buffer.from([0xff, 0xfe, 0x01]);
    fs.writeFileSync(file, bytes);
    assert.equal(run('format', file, '--write').status, 2);
    assert.deepEqual(fs.readFileSync(file), bytes);
});
