'use strict';

const test = require('node:test');
const assert = require('node:assert/strict');
const { completion } = require('../editor');

function at(source, options = { raw: true }) {
    const offset = source.indexOf('|');
    assert.ok(offset >= 0);
    const text = source.slice(0, offset) + source.slice(offset + 1);
    return { text, offset, result: completion(text, offset, options) };
}
const names = result => result.items.map(item => item.name);

test('suggests metadata before steps and step tags after them', () => {
    const header = at('#|').result;
    assert.ok(names(header).includes('group'));
    assert.ok(names(header).includes('name'));
    assert.equal(names(header).includes('requires'), false);
    const step = at('#group Test\n#name Test\nstep\n    #|').result;
    assert.ok(names(step).includes('requires'));
    assert.ok(names(step).includes('completewith'));
    assert.ok(names(step).includes('sticky'));
    assert.equal(names(step).includes('group'), false);
    assert.ok(step.items.every(item => item.documentation));
});

test('suggests forward, spaced, conditional, and duplicate labels once per guide', () => {
    const source = '#group Test\n#name Test\nstep\n#completewith |\nstep << Human\n#label Kill Wolves\nstep << Gnome\n#label Kill Wolves\nstep\n#label Finish';
    const result = at(source).result;
    assert.deepEqual(names(result), ['next', 'Kill Wolves', 'Finish']);
    assert.match(result.items[1].detail, /Step 2 \(Human\); Step 3 \(Gnome\)/);
    assert.match(result.items[1].documentation, /#label Kill Wolves/);
});

test('requires prefers earlier labels and only suggests next when it is a real label', () => {
    const source = 'step\n#label Before\nstep\n#requires |\nstep\n#label After';
    const result = at(source).result;
    assert.deepEqual(names(result), ['Before', 'After']);
    assert.ok(result.items[0].sortText < result.items[1].sortText);
    assert.ok(names(at(source + '\n#label next').result).includes('next'));
});

test('label completion replaces the full value and preserves trailing comments and conditions', () => {
    for (const trailing of [' << Human', ' -- comment']) {
        const { text, result } = at('step\n#label Kill Wolves\nstep\n#requires Kill Wo|lves' + trailing);
        assert.equal(text.slice(result.start, result.end), 'Kill Wolves');
        assert.equal(text.slice(result.end), trailing);
        const updated = text.slice(0, result.start) + 'Kill Wolves' + text.slice(result.end);
        assert.ok(updated.endsWith('#requires Kill Wolves' + trailing));
    }
});

test('tag completion preserves an existing value when editing the middle of a tag', () => {
    const { text, result } = at('step\n#comp|letewith Kill Wolves');
    assert.equal(text.slice(result.start, result.end), 'completewith');
    const item = result.items.find(item => item.name === 'completewith');
    assert.equal(item.insertText, 'completewith');
    assert.equal(item.triggerSuggest, false);
});

test('labels stay scoped to the current RegisterGuide long string', () => {
    const { result } = at('RXPGuides.RegisterGuide([[\n#group Test\n#name One\nstep\n#label First\n]])\nRXPGuides.RegisterGuide([=[\n#group Test\n#name Two\nstep\n#requires |\n#label Second\n]=])', {});
    assert.deepEqual(names(result), ['Second']);
});

test('ignores reference-like text outside guides, in comments, prose, and conditions', () => {
    assert.equal(at('local value = "#requires |"', {}).result, null);
    for (const line of ['-- #requires |', '>>Use #requires |', '*Use #requires |', '#requires Label << Hu|', '#requires Label -- no|']) {
        assert.equal(at('step\n#label Label\n' + line).result, null, line);
    }
});

test('command completion supports editing the middle of a command and custom commands', () => {
    const { text, result } = at('step\n    .go|to Zone,1,2', { raw: true, extraCommands: ['custom'] });
    assert.equal(text.slice(result.start, result.end), 'goto');
    assert.ok(names(result).includes('custom'));
});

test('only gathers label declarations from steps and ignores assignments and comments', () => {
    const { result } = at('#label HeaderLabel\nstep\n-- #label Comment\n#label = helper\n#label Keep << Human\nstep\n#requires |');
    assert.deepEqual(names(result), ['Keep']);
    assert.match(result.items[0].detail, /Human/);
});
