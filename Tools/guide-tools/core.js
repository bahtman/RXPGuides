'use strict';

const catalog = require('./commands.json');
const STEP = /^step\b/;
const ATOMS = new Set(('Alliance Horde Neutral Warrior Paladin Hunter Rogue Priest Shaman Mage Warlock Druid DeathKnight DK Monk DemonHunter Evoker Human Dwarf Gnome NightElf Orc Troll Tauren Undead Scourge BloodElf Draenei Worgen Goblin Pandaren Dracthyr Earthen Vulpera Nightborne HighmountainTauren VoidElf LightforgedDraenei ZandalariTroll KulTiran DarkIronDwarf Mechagnome MagharOrc Haranir Harronir Male Female classic forever tbc wotlk cata mop retail df sod enUS enGB deDE frFR esES esMX itIT ptBR ruRU koKR zhCN zhTW NULL skip').toLowerCase().split(' '));

let positionText, lineStarts;
function location(text, offset) {
    if (positionText !== text) {
        positionText = text;
        lineStarts = [0];
        for (const match of text.matchAll(/\r\n|\n|\r/g)) lineStarts.push(match.index + match[0].length);
    }
    let low = 0, high = lineStarts.length;
    while (low + 1 < high) {
        const middle = Math.floor((low + high) / 2);
        if (lineStarts[middle] <= offset) low = middle;
        else high = middle;
    }
    return { line: low + 1, column: offset - lineStarts[low] + 1 };
}

function diagnostic(text, offset, code, message, severity = 'error', length = 1) {
    return { ...location(text, offset), offset, length: Math.max(1, length), code, severity, message };
}

// Lex enough Lua to skip comments/strings safely. Never execute guide or Lua code.
function luaTokens(text) {
    const tokens = [];
    let i = 0;
    while (i < text.length) {
        if (/\s/.test(text[i])) { i++; continue; }
        const start = i;
        const comment = text.startsWith('--', i);
        if (comment) i += 2;
        const long = /^\[(=*)\[/.exec(text.slice(i));
        if (long) {
            const contentStart = i + long[0].length;
            const close = ']' + long[1] + ']';
            const end = text.indexOf(close, contentStart);
            tokens.push({ kind: comment ? 'comment' : 'long', start, contentStart,
                contentEnd: end < 0 ? text.length : end, end: end < 0 ? text.length : end + close.length,
                terminated: end >= 0 });
            i = tokens.at(-1).end;
        } else if (comment) {
            while (i < text.length && !/[\r\n]/.test(text[i])) i++;
        } else if (text[i] === '"' || text[i] === "'") {
            const quote = text[i++];
            while (i < text.length && text[i] !== quote) {
                if (text[i] === '\\') i++;
                i++;
            }
            if (i < text.length) i++;
            tokens.push({ kind: 'short', start, end: i, value: text.slice(start + 1, i - 1) });
        } else {
            const word = /^[A-Za-z_][\w]*/.exec(text.slice(i));
            i += word ? word[0].length : 1;
            tokens.push({ kind: 'token', start, end: i, value: text.slice(start, i) });
        }
    }
    return tokens.filter(t => t.kind !== 'comment');
}

function extract(text, options = {}) {
    if (options.raw) return { regions: [{ start: 0, end: text.length, group: null }], diagnostics: [] };
    const tokens = luaTokens(text);
    const regions = [], diagnostics = [];
    for (let i = 0; i < tokens.length - 3; i++) {
        if (tokens[i].value !== 'RXPGuides' || tokens[i + 1].value !== '.' ||
            tokens[i + 2].value !== 'RegisterGuide' || tokens[i + 3].value !== '(') continue;
        let arg = tokens[i + 4];
        let group = null;
        if (arg?.kind === 'short' && tokens[i + 5]?.value === ',') {
            group = arg.value;
            arg = tokens[i + 6];
        }
        if (arg?.kind !== 'long') {
            diagnostics.push(diagnostic(text, tokens[i].start, 'unsupported-wrapper',
                'Guide tools require a literal Lua long string, optionally preceded by a quoted group name.', 'warning'));
            continue;
        }
        if (!arg.terminated) {
            diagnostics.push(diagnostic(text, arg.start, 'unterminated-guide', 'Unterminated RegisterGuide long string.'));
            continue;
        }
        regions.push({ start: arg.contentStart, end: arg.contentEnd, group });
    }
    return { regions, diagnostics };
}

function linesIn(text, region) {
    const lines = [];
    const regex = /([^\r\n]*)(\r\n|\n|\r|$)/g;
    const content = text.slice(region.start, region.end);
    let match;
    while ((match = regex.exec(content)) && match[0]) {
        lines.push({ text: match[1], eol: match[2], offset: region.start + match.index });
    }
    return lines;
}

function splitLine(line) {
    // The addon strips -- comments before interpreting conditions/instructions.
    const code = line.split('--', 1)[0];
    const conditionAt = code.indexOf('<<');
    const body = (conditionAt < 0 ? code : code.slice(0, conditionAt)).trim();
    const instructionAt = body.indexOf('>>');
    return {
        body, action: (instructionAt < 0 ? body : body.slice(0, instructionAt)).trim(),
        condition: conditionAt < 0 ? null : code.slice(conditionAt + 2).trim(),
        conditionAt
    };
}

function checkCondition(condition, known) {
    // Repeated << is used in shipped guides; it behaves as implicit AND.
    const source = condition.replace(/<</g, '  ');
    const tokens = source.match(/[A-Za-z0-9_]+|[!()/]|\S/g) || [];
    const unknown = new Set();
    let i = 0;
    let error = null;
    function operand() {
        if (tokens[i] === '!') i++;
        if (tokens[i] === '(') {
            i++;
            expression();
            if (tokens[i] !== ')') error ||= 'Missing closing parenthesis in condition.';
            else i++;
        } else if (/^[A-Za-z0-9_]+$/.test(tokens[i] || '')) {
            const atom = tokens[i++];
            if (!known.has(atom.toLowerCase()) && !/^\d+$/.test(atom)) unknown.add(atom);
        } else {
            error ||= 'Expected a condition atom or parenthesized expression.';
            if (i < tokens.length) i++;
        }
    }
    function expression() {
        operand();
        while (i < tokens.length && tokens[i] !== ')') {
            if (tokens[i] === '/') i++;
            operand();
        }
    }
    if (!tokens.length) error = 'Condition after << must not be empty.';
    else {
        expression();
        if (i < tokens.length) error ||= 'Unexpected closing parenthesis in condition.';
    }
    return { error, unknown: [...unknown] };
}

function lint(text, options = {}) {
    const parsed = extract(text, options);
    const diagnostics = [...parsed.diagnostics];
    const commands = new Set([...Object.keys(catalog), ...(options.extraCommands || [])]);
    const known = new Set([...ATOMS, ...(options.extraConditions || []).map(x => x.toLowerCase())]);
    for (const region of parsed.regions) {
        const lines = linesIn(text, region);
        let inStep = false;
        const headers = new Set(region.group ? ['group'] : []);
        const labels = new Set(), references = [];
        const report = (line, code, message, severity = 'error') => {
            const indent = /^\s*/.exec(line.text)[0].length;
            diagnostics.push(diagnostic(text, line.offset + indent, code, message, severity, line.text.trim().length));
        };
        for (const line of lines) {
            const { body, action, condition, conditionAt } = splitLine(line.text);
            if (!body && condition === null) continue;
            if (condition !== null) {
                const check = checkCondition(condition, known);
                const offset = line.offset + conditionAt;
                if (check.error) diagnostics.push(diagnostic(text, offset, 'invalid-condition', check.error, 'error', line.text.length - conditionAt));
                for (const atom of check.unknown) diagnostics.push(diagnostic(text, offset, 'unknown-condition',
                    `Unknown condition '${atom}'; check spelling or add it to extraConditions.`, 'warning', line.text.length - conditionAt));
            }
            if (STEP.test(body)) {
                if (!inStep) {
                    for (const name of ['group', 'name']) if (!headers.has(name)) report(line, 'missing-header', `Guide requires #${name} before its first step.`);
                }
                inStep = true;
                if (body !== 'step') report(line, 'invalid-step', 'Only a << condition may follow step.');
                continue;
            }
            const tag = /^#(\S+)(?:\s+(.*))?$/.exec(body);
            if (tag) {
                const name = tag[1], value = (tag[2] || '').trim();
                if (!inStep) {
                    if (value) headers.add(name);
                } else if (name === 'group' || name === 'name') {
                    report(line, 'misplaced-header', `#${name} belongs before the first step.`, 'warning');
                }
                if (inStep && name === 'label' && value) labels.add(value);
                if (inStep && ['requires', 'completewith'].includes(name) && value && !value.startsWith('=')) references.push({ line, name, value });
                if (['group', 'name', 'label', 'requires', 'completewith'].includes(name) && !value) report(line, 'missing-value', `#${name} requires a value.`);
                continue;
            }
            if (!inStep) {
                if (body) report(line, 'outside-step', 'Only metadata and guide conditions belong before the first step.', 'warning');
                continue;
            }
            const command = /^\.(\S+)(?:\s+(.*))?$/.exec(action);
            if (command) {
                // GuideLoader's [^,]+ separator discards empty comma fields.
                const name = command[1], args = (command[2] || '').split(',').map(x => x.trim()).filter(Boolean);
                if (!commands.has(name)) {
                    const suggestion = [...commands].find(x => x.toLowerCase() === name.toLowerCase());
                    report(line, 'unknown-command', `Unknown command .${name}.${suggestion ? ` Did you mean .${suggestion}?` : ''}`);
                    continue;
                }
                const validId = name === 'collect' ? /^\d+/.test(args[0] || '') : /^[+-]?\d+$/.test(args[0] || '');
                if (['accept', 'turnin', 'abandon', 'complete', 'collect', 'destroy', 'buy'].includes(name) && !validId) {
                    report(line, 'invalid-id', `.${name} requires a numeric quest or item ID as its first argument.`);
                }
                if (name === 'complete' && !/^\d+$/.test(args[1] || '')) report(line, 'invalid-objective', '.complete requires a numeric objective index as its second argument.');
                if (['goto', 'groundgoto', 'flygoto', 'waypoint', 'questgoto', 'questwaypoint'].includes(name)) {
                    if (!args[0] || args.length < 3 || args.slice(1, 3).some(x => !x || !Number.isFinite(Number(x)))) {
                        report(line, 'invalid-coordinates', `.${name} requires zone,x,y with numeric coordinates.`);
                    } else if (!args[0].includes('/') && args.slice(1, 3).some(x => Number(x) < 0 || Number(x) > 100)) {
                        report(line, 'coordinate-range', 'Map percentages normally lie between 0 and 100; verify these coordinates.', 'warning');
                    }
                }
            } else if (body && !/^(>>|\+|\*|<<)/.test(body)) {
                report(line, 'unrecognized-line', 'Unrecognized guide line; use a command, #tag, >> instruction, + objective, or * note.', 'warning');
            }
        }
        if (!inStep && lines.length) diagnostics.push(diagnostic(text, region.start, 'missing-step', 'Guide contains no steps.', 'warning'));
        for (const ref of references) {
            if (ref.name === 'completewith' && ref.value === 'next') continue;
            if (!labels.has(ref.value)) report(ref.line, 'unresolved-label', `#${ref.name} references missing label '${ref.value}'.`, 'warning');
        }
    }
    const ignored = new Set(options.ignoredRules || []);
    return diagnostics.filter(d => !ignored.has(d.code)).sort((a, b) => a.offset - b.offset);
}

function formatEdits(text, options = {}) {
    const { regions, diagnostics } = extract(text, options);
    if (diagnostics.some(d => d.severity === 'error')) return [];
    const size = options.indentSize ?? 4;
    if (!Number.isInteger(size) || size < 1 || size > 16) throw new Error('indentSize must be an integer from 1 to 16.');
    const edits = [];
    for (const region of regions) {
        let inStep = false;
        for (const line of linesIn(text, region)) {
            // Leave content sharing a line with a Lua delimiter alone.
            if (region.start > 0 && line.offset === region.start && !/[\r\n]/.test(text[region.start - 1])) continue;
            if (line.offset + line.text.length === region.end && region.end < text.length && line.text.trim()) continue;
            const trimmed = line.text.trim();
            // Keep even accidental trailing whitespace on player-facing text.
            const content = />>|^[+*]/.test(trimmed) ? line.text.trimStart() : trimmed;
            const step = STEP.test(trimmed);
            if (step) inStep = true;
            const bom = line.offset === 0 && text.startsWith('\ufeff') ? '\ufeff' : '';
            const replacement = bom + (content ? (inStep && !step ? ' '.repeat(size) : '') + content : '');
            if (replacement !== line.text) edits.push({ start: line.offset, end: line.offset + line.text.length, text: replacement });
        }
    }
    return edits;
}

function format(text, options = {}) {
    const edits = formatEdits(text, options);
    const chunks = [];
    let cursor = 0;
    for (const edit of edits) {
        chunks.push(text.slice(cursor, edit.start), edit.text);
        cursor = edit.end;
    }
    chunks.push(text.slice(cursor));
    return chunks.join('');
}

module.exports = { catalog, extract, linesIn, splitLine, checkCondition, lint, formatEdits, format };
