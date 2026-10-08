# RestedXP Guide Tools

A local VS Code extension and dependency-free Node.js CLI for the guide language
parsed by this addon's `GuideLoader.lua`. It supports standalone `.rxp` files and
literal `RXPGuides.RegisterGuide([[...]])` blocks inside `.lua` files, including
`[=[...]=]` delimiters, multiple guides, and legacy quoted group arguments.

## Install in VS Code

1. Build from this directory with `python package_vsix.py` (or `npm run package`).
2. In VS Code, run **Extensions: Install from VSIX...** and select
   `restedxp-guide-tools-0.2.0.vsix` in this directory. Install the new VSIX to
   update an existing installation, then reload VS Code if prompted.
3. Open a Lua guide or `.rxp` file. Diagnostics appear in **Problems**.

Alternatively, open this directory as the VS Code workspace and press **F5**
to run the extension in a development window. No npm install is required.

The extension highlights steps, commands, tags, conditions, coordinates,
instruction markers, and WoW color/icon markup. Lua keeps its normal language
mode. Guide highlighting is injected into RegisterGuide long strings whose
opening call and delimiter share a line; linting/formatting also support
multiline openings. Type `.` inside a guide for command completion, hover a
command to see its declaration, and fold individual steps.

Formatting on save is enabled by default for Lua guide blocks and `.rxp` files.
It runs on normal saves and autosaves through a guide-specific save hook, using
the configured `restedxp.indentSize`. Your default Lua formatter can stay as it
is. To disable the guide save hook, set `"restedxp.formatOnSave": false`.

## Autocomplete

- Type `#` to suggest common tags with descriptions. Before the first step,
  suggestions focus on guide metadata; inside steps, they focus on step tags.
- Tags such as `#name`, `#version`, and `#label` insert editable value placeholders.
- Accept `#completewith` or `#requires` to open label suggestions immediately.
  Typing a space after either tag also triggers them; **Ctrl+Space** works manually.
- Label values are collected from `#label` declarations in the current registered
  guide, including declarations below the cursor. Suggestions show step numbers
  and class/race conditions; duplicate label names appear once.
- `#completewith` includes the special value `next`. `#requires` prioritizes earlier
  steps and only suggests `next` if a step actually declares that label.
- Labels containing spaces are supported. Replacing a value preserves any
  following `<< condition` or `-- comment`.
- Hover a `#tag` for an explanation. `.` command completion continues to work.

For example, with `#label Kill Wolves` in the guide, typing `#requires ` offers
`Kill Wolves`. Typing `#completewith ` offers that label and `next`. Suggestions
are based on source declarations and include conditional branches; choose the
label appropriate for your route.

Open `examples/example.rxp` for a small syntax example. Imported standalone text
can also be pasted directly into the addon's guide importer.

Run **RestedXP: Format Guide Blocks** from the Command Palette. For **Format
Document**, select **RestedXP Guide Tools** using **Format Document With...**.
To use it as your default formatter, add to VS Code settings:

```json
{
    "[lua]": { "editor.defaultFormatter": "local-restedxp.restedxp-guide-tools" },
    "[restedxp]": { "editor.defaultFormatter": "local-restedxp.restedxp-guide-tools" }
}
```

When used as the Lua formatter, only guide blocks are formatted; ordinary Lua
code is preserved. The guide command also works alongside your usual Lua
formatter. The guide save hook works independently of `editor.formatOnSave`;
setting that option is unnecessary for automatic guide formatting.

## CLI

From the addon directory:

```powershell
node Tools/guide-tools/cli.js lint "Guides/tbc/A-Human.lua"
node Tools/guide-tools/cli.js lint Guides --json
node Tools/guide-tools/cli.js format "Guides/tbc/A-Human.lua" --check
node Tools/guide-tools/cli.js format "MyGuide.rxp" --write
node --test Tools/guide-tools/test/*.test.js
node Tools/guide-tools/test/corpus-check.js Guides
```

The CLI expands directories itself; pass file/directory paths rather than shell
globs. Symbolic links and `.git`, `node_modules`, and `.vscode` directories are
skipped. `lint` exits 1 on errors; `--strict` also fails on warnings. `format
--check` exits 1 when changes are needed. Usage and I/O errors exit 2. Without
`--check`/`--write`, format prints one formatted file to stdout. `--write` is
explicit: running lint or installing the extension never rewrites guides.
The editor's enabled save hook formats guide blocks when you save their file.

The optional corpus check reads guides, verifies formatter idempotence and content
preservation, and prints a diagnostic summary. The grammar test uses VS Code's
bundled TextMate/Oniguruma if available; set `RXP_VSCODE_APP` to its `resources/app`
directory if automatic discovery does not find your installation.

## Formatting contract

Formatting places metadata and `step` at column 1 and step contents at four
spaces (configurable). It preserves newline style, BOM, blank-line count, Lua
wrappers, comments, command arguments, conditions, markup, and route order.
Trailing spaces on structural lines are removed; spaces on instruction/objective
text are preserved. Content sharing a line with a Lua delimiter is left alone.
An unterminated guide blocks formatting of the entire file.

## Checks and customization

| Rule | Severity | Check |
| --- | --- | --- |
| `unterminated-guide` | Error | Missing closing Lua long-string delimiter |
| `missing-header` | Error | No nonempty `#group` or `#name` before the first step |
| `missing-value` | Error | Empty group, name, label, requires, or completewith tag |
| `invalid-step` | Error | Unexpected text after `step` |
| `unknown-command` | Error | Command absent from the addon command snapshot |
| `invalid-id` | Error | Non-numeric first ID on basic quest/item commands |
| `invalid-objective` | Error | Missing/non-numeric `.complete` objective index |
| `invalid-coordinates` | Error | Missing/non-numeric zone,x,y waypoint fields |
| `invalid-condition` | Error | Empty or malformed Boolean condition |
| `unknown-condition` | Warning | Possible typo in race/class/game/locale condition |
| `coordinate-range` | Warning | Percentage coordinates outside 0–100 |
| `unresolved-label` | Warning | Missing `#label` for requires/completewith |
| `misplaced-header` | Warning | Name/group appears inside a step |
| `outside-step` | Warning | Commands/text appear before the first step |
| `unrecognized-line` | Warning | Line the guide parser would ignore |
| `missing-step` | Warning | Guide contains no steps |
| `unsupported-wrapper` | Warning | RegisterGuide uses a computed string/group |

Negative quest IDs are allowed. Conditions support `!`, `/`, implicit AND,
parentheses, numeric level atoms, and repeated `<<`. Labels are scoped to each
registered guide; forward references and conditional duplicate labels are
allowed. Unknown tags are allowed because the addon accepts arbitrary metadata.

Set `restedxp.extraCommands`, `restedxp.extraConditions`, and
`restedxp.ignoredRules` in VS Code, or use repeatable `--extra-command`,
`--extra-condition`, and `--ignore` CLI flags. Set `restedxp.indentSize` or
`--indent N` for indentation. `restedxp.lint.enabled` disables editor diagnostics.
`restedxp.formatOnSave` controls automatic guide formatting independently.

The included `commands.json` is a portable snapshot of `functions.lua`, including
aliases and case-sensitive command names. Refresh it after addon changes with
`node Tools/guide-tools/sync-catalog.js`, then rebuild/reinstall the VSIX. Hover
signatures reflect source declarations; `...` indicates command-specific
arguments rather than a complete schema.

This is guide-language analysis, not a full Lua syntax checker or WoW simulator.
Computed Lua strings are reported as unsupported. Quest existence, map names,
objective counts, branch reachability, and completion behavior require the
game's data/runtime. Missing labels are warnings because class/phase branches
can affect which labels exist. Existing guides may contain findings; none are
automatically fixed by linting.

## Implementation reference

The editor integration uses VS Code's
[TextMate grammar injection](https://code.visualstudio.com/api/language-extensions/syntax-highlight-guide)
and [language feature APIs](https://code.visualstudio.com/api/language-extensions/programmatic-language-features).
