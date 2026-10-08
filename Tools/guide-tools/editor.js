'use strict';

const core = require('./core');
const tags = require('./tags');

function guideInfo(text, region, offset) {
    const labels = new Map();
    let step = 0, currentStep = 0, stepCondition = null;
    for (const line of core.linesIn(text, region)) {
        const parsed = core.splitLine(line.text);
        if (/^step\b/.test(parsed.body)) { step++; stepCondition = parsed.condition; }
        if (line.offset <= offset) currentStep = step;
        const label = /^#label\s+(.+)$/.exec(parsed.body);
        if (step && label && !label[1].startsWith('=')) {
            const name = label[1].trim();
            if (!labels.has(name)) labels.set(name, []);
            labels.get(name).push({ step, offset: line.offset, condition: [stepCondition, parsed.condition].filter(Boolean).join(' AND ') });
        }
    }
    return { labels, currentStep };
}

function completion(text, offset, options = {}) {
    const region = core.extract(text, options).regions.find(r => offset >= r.start && offset <= r.end);
    if (!region) return null;
    const lineStart = Math.max(text.lastIndexOf('\n', offset - 1), text.lastIndexOf('\r', offset - 1), region.start - 1) + 1;
    const eol = /[\r\n]/.exec(text.slice(offset, region.end));
    const lineEnd = eol ? offset + eol.index : region.end;
    const prefix = text.slice(lineStart, offset);
    const suffix = text.slice(offset, lineEnd);
    const match = /^\s*([.#])([\w-]*)$/.exec(prefix);
    if (match) {
        const start = offset - match[2].length;
        const end = offset + (/^[\w-]*/.exec(suffix)[0].length);
        if (match[1] === '.') {
            return { start, end, items: [...new Set([...Object.keys(core.catalog), ...(options.extraCommands || [])])].map(name => ({
                name, kind: 'Function', detail: `.${name} ${core.catalog[name] || '...'}`
            })) };
        }
        const { currentStep } = guideInfo(text, region, offset);
        const hasValue = text.slice(end, lineEnd).trim().length > 0;
        return { start, end, items: Object.entries(tags)
            .filter(([, tag]) => tag.scope === 'both' || tag.scope === (currentStep ? 'step' : 'header'))
            .map(([name, tag]) => ({
                name, kind: 'Keyword', detail: `#${name}${tag.value ? ' value' : ['requires', 'completewith'].includes(name) ? ' label' : ''}`,
                documentation: tag.description,
                insertText: hasValue ? name : tag.value ? `${name} \${1:${tag.value}}` : ['requires', 'completewith'].includes(name) ? `${name} ` : name,
                snippet: !hasValue && tag.value !== null,
                triggerSuggest: !hasValue && ['requires', 'completewith'].includes(name)
            })) };
    }
    const reference = /^\s*#(completewith|requires)[ \t]+(.*)$/.exec(prefix);
    if (!reference || /<<|--/.test(reference[2])) return null;
    const { labels, currentStep } = guideInfo(text, region, offset);
    if (!currentStep) return null;
    const start = offset - reference[2].length;
    const tail = text.slice(start, lineEnd);
    const delimiter = /<<|--/.exec(tail);
    const value = (delimiter ? tail.slice(0, delimiter.index) : tail).trimEnd();
    const end = Math.max(offset, start + value.length);
    const items = [];
    if (reference[1] === 'completewith') items.push({
        name: 'next', kind: 'Value', detail: 'The following step',
        documentation: 'Complete this sticky step together with the next step.', sortText: '0-next'
    });
    for (const [name, definitions] of labels) {
        if (reference[1] === 'completewith' && name === 'next') continue;
        const detail = definitions.map(label => `Step ${label.step}${label.condition ? ` (${label.condition})` : ''}`).join('; ');
        items.push({ name, kind: 'Reference', detail,
            documentation: `#label ${name}\n${detail}`,
            sortText: `${reference[1] === 'requires' && definitions.some(label => label.step < currentStep) ? '0' : '1'}-${name}` });
    }
    return { start, end, items };
}

module.exports = { completion, guideInfo, tags };
