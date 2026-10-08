'use strict';

const test = require('node:test');
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const vm = require('node:vm');
const core = require('../core');
const authoring = require('../editor');

function harness() {
    const registered = {};
    const settings = {};
    const collection = new Map();
    class Position {
        constructor(line, character) { this.line = line; this.character = character; }
        translate(line, character) { return new Position(this.line + line, this.character + character); }
    }
    class Range {
        constructor(start, end) { this.start = start; this.end = end; }
    }
    const document = (text, languageId = 'lua') => {
        const lines = text.split('\n');
        return {
            languageId, uri: `test:${languageId}`, isClosed: false,
            getText: range => range ? text.slice(
                lines.slice(0, range.start.line).reduce((sum, line) => sum + line.length + 1, 0) + range.start.character,
                lines.slice(0, range.end.line).reduce((sum, line) => sum + line.length + 1, 0) + range.end.character) : text,
            lineAt: index => ({ text: lines[index] }),
            positionAt: offset => {
                const before = text.slice(0, offset).split('\n');
                return new Position(before.length - 1, before.at(-1).length);
            },
            offsetAt: position => lines.slice(0, position.line).reduce((sum, line) => sum + line.length + 1, 0) + position.character
        };
    };
    const hook = name => callback => { registered[name] = callback; return { dispose() {} }; };
    const provider = name => (_selector, callback) => { registered[name] = callback; return { dispose() {} }; };
    const vscode = {
        Range,
        Diagnostic: class { constructor(range, message, severity) { Object.assign(this, { range, message, severity }); } },
        DiagnosticSeverity: { Error: 0, Warning: 1 },
        CompletionItem: class { constructor(label) { this.label = label; } },
        CompletionItemKind: { Function: 1, Keyword: 13, Reference: 17, Value: 11 },
        SnippetString: class { constructor(value) { this.value = value; } },
        FoldingRange: class { constructor(start, end) { Object.assign(this, { start, end }); } },
        TextEdit: { replace: (range, newText) => ({ range, newText }) },
        workspace: {
            textDocuments: [], getConfiguration: () => ({ get: (key, fallback) => settings[key] ?? fallback }),
            onDidOpenTextDocument: hook('open'), onDidChangeTextDocument: hook('change'),
            onDidCloseTextDocument: hook('close'), onDidChangeConfiguration: hook('config'),
            onWillSaveTextDocument: hook('save')
        },
        languages: {
            createDiagnosticCollection: () => ({ set: (uri, issues) => collection.set(uri, issues), delete: uri => collection.delete(uri), dispose() {} }),
            registerDocumentFormattingEditProvider: provider('format'), registerCompletionItemProvider: provider('completion'),
            registerHoverProvider: provider('hover'), registerFoldingRangeProvider: provider('fold')
        },
        commands: { registerCommand: hook('command') }, window: {}
    };
    const sandbox = { module: { exports: {} }, require: name => ({ vscode, './core': core, './editor': authoring })[name], setTimeout, clearTimeout };
    vm.runInNewContext(fs.readFileSync(path.resolve(__dirname, '../extension.js'), 'utf8'), sandbox);
    const context = { subscriptions: [] };
    sandbox.module.exports.activate(context);
    return { registered, settings, collection, document, context };
}

test('editor diagnostics, completion and formatting operate only inside guide blocks', () => {
    const h = harness();
    const text = 'local x =  2\nRXPGuides.RegisterGuide([[\n#group Example\n#name Example\nstep\n.accpet 1\n.\n]])\nlocal y =  3';
    const doc = h.document(text);
    h.registered.open(doc);
    assert.equal(h.collection.get(doc.uri)[0].code, 'unknown-command');
    assert.equal(h.collection.get(doc.uri)[0].range.start.line, 5);
    const changes = h.registered.format.provideDocumentFormattingEdits(doc);
    assert.ok(changes.length > 0);
    assert.ok(changes.every(edit => edit.range.start.line > 1 && edit.range.start.line < 7));
    const suggestions = h.registered.completion.provideCompletionItems(doc, doc.positionAt(text.indexOf('\n.\n') + 2));
    assert.ok(suggestions.some(item => item.label === 'goto'));
    assert.equal(h.registered.completion.provideCompletionItems(doc, doc.positionAt(text.length)).length, 0);
    h.settings['lint.enabled'] = false;
    h.registered.open(doc);
    assert.equal(h.collection.has(doc.uri), false);
    h.context.subscriptions.forEach(item => item.dispose?.());
});

test('editor step folding includes the final standalone line without a newline', () => {
    const h = harness();
    const doc = h.document('#group Test\n#name Test\nstep\n.accept 1\nstep\n.turnin 1', 'restedxp');
    const folds = h.registered.fold.provideFoldingRanges(doc);
    assert.equal(folds[0].start, 2);
    assert.equal(folds[0].end, 3);
    assert.equal(folds[1].start, 4);
    assert.equal(folds[1].end, 5);
    h.context.subscriptions.forEach(item => item.dispose?.());
});

test('save hook formats guide blocks by default and respects the opt-out setting', async () => {
    const h = harness();
    const source = 'local x =  1\nRXPGuides.RegisterGuide([[\n#group Test\n#name Test\nstep\n.accept 1\n]])';
    const doc = h.document(source);
    const pending = [];
    h.registered.save({ document: doc, reason: 1, waitUntil: promise => pending.push(promise) });
    assert.equal(pending.length, 1, 'waitUntil is called during event dispatch');
    const changes = await pending[0];
    assert.equal(changes.length, 1);
    assert.equal(changes[0].range.start.line, 5);
    assert.equal(changes[0].newText, '    .accept 1');
    h.settings.formatOnSave = false;
    h.registered.save({ document: doc, waitUntil: () => assert.fail('Formatting should be disabled') });
    h.context.subscriptions.forEach(item => item.dispose?.());
});

test('save hook handles standalone autosaves and leaves unrelated or malformed Lua alone', async () => {
    const h = harness();
    const waits = [];
    const save = (doc, reason) => h.registered.save({ document: doc, reason, waitUntil: promise => waits.push(promise) });
    save(h.document('#group Test\n#name Test\nstep\n.accept 1', 'restedxp'), 2);
    assert.equal((await waits.pop())[0].newText, '    .accept 1');
    save(h.document('local x =  1'), 1);
    assert.equal((await waits.pop()).length, 0);
    save(h.document('RXPGuides.RegisterGuide([[\nstep\n.accept 1'), 1);
    assert.equal((await waits.pop()).length, 0);
    save(h.document('const x = 1', 'javascript'), 1);
    assert.equal(waits.length, 0);
    h.context.subscriptions.forEach(item => item.dispose?.());
});

test('editor tag completions offer snippets and trigger label suggestions after accepting reference tags', () => {
    const h = harness();
    const doc = h.document('#group Test\n#name Test\nstep\n#', 'restedxp');
    const items = h.registered.completion.provideCompletionItems(doc, doc.positionAt(doc.getText().length));
    const requires = items.find(item => item.label === 'requires');
    assert.equal(requires.insertText, 'requires ');
    assert.equal(requires.command.command, 'editor.action.triggerSuggest');
    assert.equal(items.find(item => item.label === 'label').insertText.value, 'label ${1:LabelName}');
    assert.ok(requires.documentation.includes('named step'));
    h.context.subscriptions.forEach(item => item.dispose?.());
});
