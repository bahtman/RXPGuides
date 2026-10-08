#!/usr/bin/env node
'use strict';

const fs = require('node:fs');
const path = require('node:path');
const core = require('./core');

const HELP = `RestedXP Guide Tools (Node.js 18+; no dependencies)

  node cli.js lint <file-or-directory>... [--json] [--strict]
  node cli.js format <file-or-directory>... [--check | --write]

Directories are scanned recursively for .lua and .rxp files.
Lua code outside literal RXPGuides.RegisterGuide blocks is untouched.
Formatting prints a single file by default; multiple files require --check or --write.

  --raw                 Treat input as standalone guide text (automatic for .rxp)
  --indent N            Step indentation, 1-16 spaces (default: 4)
  --extra-command NAME  Allow a custom command (repeatable; omit the dot)
  --extra-condition X   Allow a custom condition atom (repeatable)
  --ignore CODE         Suppress a diagnostic rule (repeatable)
  --strict              Lint warnings also cause exit status 1
  --json                Emit machine-readable lint results with file paths
  --check               Exit 1 if formatting would change any file
  --write               Format files in place

Exit status: 0 = passed; 1 = lint/format findings; 2 = usage or I/O error.
`;

function collect(target, output) {
    const stat = fs.lstatSync(target);
    if (stat.isSymbolicLink()) return;
    if (stat.isDirectory()) {
        for (const entry of fs.readdirSync(target).sort()) {
            if (['.git', 'node_modules', '.vscode'].includes(entry)) continue;
            collect(path.join(target, entry), output);
        }
    } else if (stat.isFile() && /\.(lua|rxp)$/i.test(target)) output.add(path.resolve(target));
}

function main(argv) {
    if (!argv.length || argv.includes('--help') || argv.includes('-h')) { process.stdout.write(HELP); return 0; }
    const command = argv.shift();
    if (!['lint', 'format'].includes(command)) throw new Error(`Unknown command '${command}'. Use --help.`);
    const options = { extraCommands: [], extraConditions: [], ignoredRules: [] };
    const targets = [];
    for (let i = 0; i < argv.length; i++) {
        const arg = argv[i];
        if (arg === '--') { targets.push(...argv.slice(i + 1)); break; }
        if (['--raw', '--strict', '--json', '--check', '--write'].includes(arg)) options[arg.slice(2)] = true;
        else if (['--indent', '--extra-command', '--extra-condition', '--ignore'].includes(arg)) {
            const value = argv[++i];
            if (!value || value.startsWith('--')) throw new Error(`Missing value for ${arg}.`);
            if (arg === '--indent') options.indentSize = Number(value);
            else options[{ '--extra-command': 'extraCommands', '--extra-condition': 'extraConditions', '--ignore': 'ignoredRules' }[arg]].push(value);
        } else if (arg.startsWith('-')) throw new Error(`Unknown option '${arg}'.`);
        else targets.push(arg);
    }
    if (!targets.length) throw new Error('Specify at least one file or directory.');
    if (options.check && options.write) throw new Error('--check and --write cannot be combined.');
    if (command === 'lint' && (options.check || options.write)) throw new Error('--check and --write apply to format only.');
    if (command === 'format' && (options.json || options.strict)) throw new Error('--json and --strict apply to lint only.');
    if (options.indentSize !== undefined && (!Number.isInteger(options.indentSize) || options.indentSize < 1 || options.indentSize > 16)) throw new Error('--indent must be an integer from 1 to 16.');
    const files = new Set();
    for (const target of targets) collect(path.resolve(target), files);
    if (!files.size) throw new Error('No .lua or .rxp files found.');
    if (command === 'format' && files.size > 1 && !options.check && !options.write) throw new Error('Multiple files require --check or --write.');
    let failed = false;
    const results = [];
    for (const file of files) {
        // Reject non-UTF-8 bytes instead of silently corrupting a file on --write.
        const bytes = fs.readFileSync(file);
        new TextDecoder('utf-8', { fatal: true }).decode(bytes);
        const text = bytes.toString('utf8');
        const config = { ...options, raw: options.raw || /\.rxp$/i.test(file) };
        if (command === 'lint') {
            const diagnostics = core.lint(text, config);
            failed ||= diagnostics.some(d => d.severity === 'error' || options.strict);
            results.push({ file, guides: core.extract(text, config).regions.length, diagnostics });
            if (!options.json) for (const d of diagnostics) console.log(`${file}:${d.line}:${d.column}: ${d.severity} [${d.code}] ${d.message}`);
        } else {
            const errors = core.extract(text, config).diagnostics.filter(d => d.severity === 'error');
            if (errors.length) {
                failed = true;
                for (const d of errors) process.stderr.write(`${file}:${d.line}: ${d.message}\n`);
                continue;
            }
            const formatted = core.format(text, config);
            if (options.check || options.write) {
                if (formatted !== text) {
                    if (options.write) { fs.writeFileSync(file, formatted, 'utf8'); console.log(`Formatted ${file}`); }
                    else { console.log(`Would format ${file}`); failed = true; }
                }
            } else process.stdout.write(formatted);
        }
    }
    if (command === 'lint' && options.json) console.log(JSON.stringify(results, null, 2));
    return failed ? 1 : 0;
}

if (require.main === module) {
    try { process.exitCode = main(process.argv.slice(2)); }
    catch (error) { console.error(error.message); process.exitCode = 2; }
}
module.exports = { main };
