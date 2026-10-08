'use strict';

const test = require('node:test');
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');

// Optional integration test against the same TextMate/Oniguruma used by VS Code.
// Set RXP_VSCODE_APP to a VS Code resources/app directory on other installations.
const app = process.env.RXP_VSCODE_APP || (process.env.LOCALAPPDATA && path.join(process.env.LOCALAPPDATA, 'Programs/Microsoft VS Code/resources/app'));
const available = app && fs.existsSync(path.join(app, 'node_modules/vscode-textmate/package.json'));

test('real TextMate engine highlights embedded guides and preserves surrounding Lua', { skip: !available }, async () => {
    const textmate = require(path.join(app, 'node_modules/vscode-textmate'));
    const oniguruma = require(path.join(app, 'node_modules/vscode-oniguruma'));
    const wasm = fs.readFileSync(path.join(app, 'node_modules/vscode-oniguruma/release/onig.wasm'));
    await oniguruma.loadWASM(wasm.buffer.slice(wasm.byteOffset, wasm.byteOffset + wasm.byteLength));
    const registry = new textmate.Registry({
        onigLib: Promise.resolve({ createOnigScanner: sources => new oniguruma.OnigScanner(sources), createOnigString: source => new oniguruma.OnigString(source) }),
        getInjections: scope => scope === 'source.lua' ? ['restedxp.lua.injection'] : [],
        loadGrammar: async scope => {
            const file = {
                'source.lua': path.join(app, 'extensions/lua/syntaxes/lua.tmLanguage.json'),
                'source.restedxp': path.resolve(__dirname, '../syntaxes/restedxp.tmLanguage.json'),
                'restedxp.lua.injection': path.resolve(__dirname, '../syntaxes/lua-injection.tmLanguage.json')
            }[scope];
            return file ? textmate.parseRawGrammar(fs.readFileSync(file, 'utf8'), file) : null;
        }
    });
    const grammar = await registry.loadGrammar('source.lua');
    for (const opening of ['RXPGuides.RegisterGuide([[', 'RXPGuides.RegisterGuide("Group", [==[']) {
        const ending = opening.endsWith('[==[') ? ']==])' : ']])';
        const lines = ['local x = 42', '-- RXPGuides.RegisterGuide([[fake]])', 'local text = "step .goto"', opening,
            '#group My Routes', '#name Route', 'step << !Mage/Warlock',
            '    .goto Zone,12.5,42 >> |cRXP_WARN_Hello|r |T123:0|t', ending, 'local y = 24'];
        let state = textmate.INITIAL;
        const output = lines.map(line => {
            const result = grammar.tokenizeLine(line, state);
            state = result.ruleStack;
            return result.tokens;
        });
        const has = (index, scope) => output[index].some(token => token.scopes.includes(scope));
        assert.equal(has(1, 'meta.embedded.block.restedxp'), false);
        assert.equal(has(2, 'meta.embedded.block.restedxp'), false);
        assert.ok(has(4, 'entity.name.tag.restedxp'));
        assert.ok(has(6, 'keyword.control.step.restedxp'));
        assert.ok(has(6, 'entity.name.type.condition.restedxp'));
        assert.ok(has(7, 'support.function.restedxp'));
        assert.ok(has(7, 'constant.numeric.restedxp'));
        assert.ok(has(7, 'constant.other.color.restedxp'));
        assert.ok(has(7, 'constant.other.icon.restedxp'));
        assert.equal(has(9, 'meta.embedded.block.restedxp'), false);
    }
    registry.dispose();
});
