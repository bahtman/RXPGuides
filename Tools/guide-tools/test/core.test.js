'use strict';

const test = require('node:test');
const assert = require('node:assert/strict');
const core = require('../core');
const headers = '#group Test Routes\n#name Example\n';
const guide = body => `RXPGuides.RegisterGuide([[\n${headers}${body}\n]])`;
const codes = (text, options) => core.lint(text, options).map(d => d.code);

test('extracts multiple guides with equality delimiters and legacy group argument', () => {
    const source = guide('step\n.accept 123') + '\nRXPGuides.RegisterGuide("Legacy",[==[\n#name Other\nstep\n>>Text containing ]] and ]=]\n]==],"Human")';
    const parsed = core.extract(source);
    assert.equal(parsed.regions.length, 2);
    assert.equal(parsed.regions[1].group, 'Legacy');
    assert.deepEqual(core.lint(source), []);
});

test('ignores fake calls in Lua comments, short strings, and unrelated long strings', () => {
    const source = '-- RXPGuides.RegisterGuide([[broken\n' +
        '--[=[ RXPGuides.RegisterGuide([[fake]]) ]=]\n' +
        'local sample = "RXPGuides.RegisterGuide([[fake]])"\n' +
        'local other = [=[RXPGuides.RegisterGuide([[fake]])]=]\n' + guide('step\n.accept 123');
    assert.equal(core.extract(source).regions.length, 1);
    assert.deepEqual(core.lint(source), []);
});

test('accepts whitespace and comments between Lua wrapper tokens', () => {
    const source = 'RXPGuides --comment\n. RegisterGuide ( --[=[comment]=]\n[=[\n' + headers + 'step\n.accept 1\n]=])';
    assert.equal(core.extract(source).regions.length, 1);
    assert.deepEqual(core.lint(source), []);
});

test('reports unterminated guide and refuses all formatting in that file', () => {
    const source = guide('  step\n.accept 123') + '\nRXPGuides.RegisterGuide([=[\nstep';
    assert.ok(codes(source).includes('unterminated-guide'));
    assert.equal(core.format(source), source);
});

test('warns on computed wrappers without executing Lua', () => {
    const source = 'RXPGuides.RegisterGuide(loadGuide())\nlocal x = 1';
    assert.deepEqual(codes(source), ['unsupported-wrapper']);
    assert.equal(core.format(source), source);
});

test('reports missing metadata and invalid step contents at real source lines', () => {
    const diagnostics = core.lint('local x = 1\r\nRXPGuides.RegisterGuide([[\r\nstep nonsense\r\n.accept 1\r\n]])');
    assert.deepEqual(diagnostics.map(d => d.code), ['missing-header', 'missing-header', 'invalid-step']);
    assert.ok(diagnostics.every(d => d.line === 3 && d.column === 1));
});

test('supports negative and positive signed quest IDs, aliases, and case-sensitive commands', () => {
    assert.deepEqual(core.lint(guide('step\n.accept -123\n.turnin -123\n.complete +123,1\n.acceptmultiple 123,456\n.isOnQuest 123\n.collect 6948;123,1')), []);
    const diagnostics = core.lint(guide('step\n.isonquest 123\n.accpet 123'));
    assert.deepEqual(diagnostics.map(d => d.code), ['unknown-command', 'unknown-command']);
    assert.match(diagnostics[0].message, /isOnQuest/);
});

test('checks IDs, quest objectives, numeric coordinate fields and percentage ranges', () => {
    assert.deepEqual(codes(guide('step\n.accept ABC\n.complete 123\n.goto Zone,a,2\n.waypoint Zone,2,101')), [
        'invalid-id', 'invalid-objective', 'invalid-coordinates', 'coordinate-range'
    ]);
    assert.deepEqual(core.lint(guide('step\n.goto 1415/0,-1234,2300\n.goto Zone,,25,50,0')), []);
});

test('parses conditions with precedence syntax, parentheses and repeated <<', () => {
    assert.deepEqual(core.lint(guide('step << !(Warrior/Paladin) Human << tbc\n.accept 123 << 10 !sod/enUS')), []);
    for (const condition of ['', 'Warrior/', '(Warrior', 'Warrior)', '!!Mage', 'Mage & Human', '()']) {
        assert.ok(codes(guide(`step << ${condition}`)).includes('invalid-condition'), condition);
    }
});

test('ignores comment text when interpreting commands and conditions', () => {
    assert.deepEqual(core.lint(guide('step\n.accept 123 -- << Broken(\n-- .accpet 0\n>>Speak to Bob -- note')), []);
});

test('allows configurable custom commands/conditions and ignored rule codes', () => {
    const source = guide('step << MyMode\n.custom 123\n.goto Zone,1,101');
    assert.deepEqual(core.lint(source, { extraCommands: ['custom'], extraConditions: ['MyMode'], ignoredRules: ['coordinate-range'] }), []);
});

test('resolves labels per guide, allowing forward and conditional duplicate labels', () => {
    const body = 'step\n#completewith end\n#requires Later\nstep << Human\n#label Later\nstep << Gnome\n#label Later\nstep\n#label end';
    assert.deepEqual(core.lint(guide(body)), []);
    assert.deepEqual(codes(guide('step\n#requires Other') + '\n' + guide('step\n#label Other')), ['unresolved-label']);
    assert.deepEqual(core.lint(guide('step\n#completewith next')), []);
});

test('formatter preserves Lua, text, arguments, comments, BOM and CRLF', () => {
    const source = '\ufefflocal keep = {  1, 2 }  \r\n' + guide('  step << Human\n\t#label Start  \n.goto Zone, 1.23,4.56 >>  |cRXP_WARN_Text|r  \n   -- note  \n *Note with spaces  ').replaceAll('\n', '\r\n') + '\r\nlocal tail = 2  ';
    const formatted = core.format(source);
    assert.ok(formatted.startsWith('\ufefflocal keep = {  1, 2 }  \r\n'));
    assert.ok(formatted.endsWith('\r\nlocal tail = 2  '));
    assert.ok(formatted.includes('\r\nstep << Human\r\n    #label Start\r\n'));
    assert.ok(formatted.includes('    .goto Zone, 1.23,4.56 >>  |cRXP_WARN_Text|r  \r\n'));
    assert.ok(formatted.includes('    *Note with spaces  \r\n'));
    assert.equal(core.format(formatted), formatted);
    assert.equal(formatted.replace(/\r\n/g, '').includes('\n'), false);
});

test('preserves guide content sharing a line with Lua delimiters', () => {
    const source = 'RXPGuides.RegisterGuide([[  #group Example\n#name Example\nstep\n  >>Keep  ]])';
    const result = core.format(source);
    assert.equal(result, source);
});

test('formats standalone text with configured indentation and no final newline', () => {
    const source = headers + ' step\n.goto Zone,1,2\n\n  >>Instruction';
    const result = core.format(source, { raw: true, indentSize: 2 });
    assert.equal(result, headers + 'step\n  .goto Zone,1,2\n\n  >>Instruction');
    assert.deepEqual(core.lint(result, { raw: true }), []);
    assert.throws(() => core.format(source, { raw: true, indentSize: 0 }), /indentSize/);
});

test('preserves a BOM on standalone guides', () => {
    const source = '\ufeff' + headers + 'step\n.accept 123';
    const result = core.format(source, { raw: true });
    assert.equal(result, '\ufeff' + headers + 'step\n    .accept 123');
    assert.equal(core.format(result, { raw: true }), result);
});
