'use strict';

const vscode = require('vscode');
const core = require('./core');
const authoring = require('./editor');

function activate(context) {
    const diagnostics = vscode.languages.createDiagnosticCollection('restedxp');
    const timers = new Map();
    const selector = [{ language: 'lua' }, { language: 'restedxp' }];
    const supported = doc => ['lua', 'restedxp'].includes(doc.languageId);
    const options = doc => {
        const settings = vscode.workspace.getConfiguration('restedxp', doc.uri);
        return { raw: doc.languageId === 'restedxp', indentSize: settings.get('indentSize', 4),
            extraCommands: settings.get('extraCommands', []), extraConditions: settings.get('extraConditions', []),
            ignoredRules: settings.get('ignoredRules', []) };
    };
    const refresh = doc => {
        if (!supported(doc) || doc.isClosed) return;
        if (!vscode.workspace.getConfiguration('restedxp', doc.uri).get('lint.enabled', true)) {
            diagnostics.delete(doc.uri); return;
        }
        const issues = core.lint(doc.getText(), options(doc)).map(issue => {
            const start = doc.positionAt(issue.offset);
            const end = doc.positionAt(issue.offset + issue.length);
            const d = new vscode.Diagnostic(new vscode.Range(start, end), issue.message,
                issue.severity === 'error' ? vscode.DiagnosticSeverity.Error : vscode.DiagnosticSeverity.Warning);
            d.source = 'RestedXP'; d.code = issue.code;
            return d;
        });
        diagnostics.set(doc.uri, issues);
    };
    const edits = doc => core.formatEdits(doc.getText(), options(doc)).map(edit =>
        vscode.TextEdit.replace(new vscode.Range(doc.positionAt(edit.start), doc.positionAt(edit.end)), edit.text));
    const regionAt = (doc, pos) => {
        const offset = doc.offsetAt(pos);
        return core.extract(doc.getText(), options(doc)).regions.find(region => offset >= region.start && offset < region.end);
    };
    context.subscriptions.push(diagnostics,
        vscode.workspace.onWillSaveTextDocument(event => {
            const doc = event.document;
            if (!supported(doc) || !vscode.workspace.getConfiguration('restedxp', doc.uri).get('formatOnSave', true)) return;
            // Register edits synchronously during the save event, as required by VS Code.
            event.waitUntil(Promise.resolve(edits(doc)));
        }),
        vscode.workspace.onDidOpenTextDocument(refresh),
        vscode.workspace.onDidChangeTextDocument(event => {
            if (!supported(event.document)) return;
            const key = event.document.uri.toString();
            clearTimeout(timers.get(key));
            timers.set(key, setTimeout(() => { timers.delete(key); refresh(event.document); }, 250));
        }),
        vscode.workspace.onDidCloseTextDocument(doc => {
            const key = doc.uri.toString(); clearTimeout(timers.get(key)); timers.delete(key); diagnostics.delete(doc.uri);
        }),
        vscode.workspace.onDidChangeConfiguration(event => {
            if (event.affectsConfiguration('restedxp')) vscode.workspace.textDocuments.forEach(refresh);
        }),
        { dispose() { for (const timer of timers.values()) clearTimeout(timer); } },
        vscode.languages.registerDocumentFormattingEditProvider(selector, { provideDocumentFormattingEdits: edits }),
        vscode.commands.registerCommand('restedxp.formatGuides', async () => {
            const editor = vscode.window.activeTextEditor;
            if (!editor || !supported(editor.document)) return;
            const changes = edits(editor.document);
            await editor.edit(builder => changes.forEach(change => builder.replace(change.range, change.newText)));
        }),
        vscode.languages.registerCompletionItemProvider(selector, {
            provideCompletionItems(doc, pos) {
                const result = authoring.completion(doc.getText(), doc.offsetAt(pos), options(doc));
                if (!result) return [];
                const range = new vscode.Range(doc.positionAt(result.start), doc.positionAt(result.end));
                return result.items.map(suggestion => {
                    const item = new vscode.CompletionItem(suggestion.name, vscode.CompletionItemKind[suggestion.kind]);
                    item.range = range;
                    item.detail = suggestion.detail;
                    item.documentation = suggestion.documentation;
                    item.sortText = suggestion.sortText;
                    if (suggestion.insertText) item.insertText = suggestion.snippet ? new vscode.SnippetString(suggestion.insertText) : suggestion.insertText;
                    if (suggestion.triggerSuggest) item.command = { command: 'editor.action.triggerSuggest', title: 'Suggest guide labels' };
                    return item;
                });
            }
        }, '.', '#', ' '),
        vscode.languages.registerHoverProvider(selector, {
            provideHover(doc, pos) {
                if (!regionAt(doc, pos)) return;
                const range = doc.getWordRangeAtPosition(pos, /[.#][A-Za-z_][\w-]*/);
                if (!range) return;
                const token = doc.getText(range);
                const name = token.slice(1);
                if (token.startsWith('#')) {
                    const tag = authoring.tags[name];
                    if (!tag) return;
                    const content = new vscode.MarkdownString();
                    content.appendCodeblock(`#${name}${tag.value ? ` ${tag.value}` : ['requires', 'completewith'].includes(name) ? ' LabelName' : ''}`, 'restedxp');
                    content.appendText(tag.description);
                    return new vscode.Hover(content, range);
                }
                if (!(name in core.catalog)) return;
                const content = new vscode.MarkdownString();
                content.appendCodeblock(`.${name} ${core.catalog[name]}`, 'restedxp');
                content.appendText('Command recognized by the installed RestedXP addon snapshot. Ellipses indicate command-specific arguments.');
                return new vscode.Hover(content, range);
            }
        }),
        vscode.languages.registerFoldingRangeProvider(selector, {
            provideFoldingRanges(doc) {
                const ranges = [];
                for (const region of core.extract(doc.getText(), options(doc)).regions) {
                    const steps = core.linesIn(doc.getText(), region).filter(line => /^\s*step\b/.test(line.text));
                    for (let i = 0; i < steps.length; i++) {
                        const start = doc.positionAt(steps[i].offset).line;
                        const regionEnd = doc.positionAt(region.end);
                        const end = i + 1 < steps.length ? doc.positionAt(steps[i + 1].offset).line - 1 : regionEnd.line - (regionEnd.character === 0 ? 1 : 0);
                        if (end > start) ranges.push(new vscode.FoldingRange(start, end));
                    }
                }
                return ranges;
            }
        })
    );
    vscode.workspace.textDocuments.forEach(refresh);
}

module.exports = { activate };
