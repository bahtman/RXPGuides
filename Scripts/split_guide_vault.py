"""Split a GuideVault into filtered, independently loadable Lua guide files.

Uses only Python's standard library. Run with --help for options.
"""

from __future__ import annotations

import argparse
from collections import Counter
from dataclasses import dataclass
import hashlib
import itertools
import json
from pathlib import Path
import re
import sys


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_SOURCE = ROOT / "Guides/Forever/GuideVault_001.lua"
DEFAULT_OUTPUT = ROOT / "Guides/Forever/GuideVault_Filtered"
MANIFEST = "manifest.json"
GENERATOR = "split_guide_vault.py/v1"
RACES = {"human", "dwarf", "gnome", "nightelf", "orc", "troll", "tauren",
         "undead", "scourge", "bloodelf", "draenei", "worgen", "goblin", "pandaren"}
CLASSES = {"warrior", "warlock", "paladin", "mage", "hunter", "rogue", "priest",
           "druid", "shaman", "deathknight", "dk", "monk", "demonhunter", "evoker"}
DEFAULT_TARGETS = tuple(itertools.product(("Dwarf", "Gnome"),
                                         ("Warrior", "Warlock", "Paladin")))
CALL_START = re.compile(r"(?m)^\s*RXPGuides\.RegisterGuide\s*\(\s*\[(=*)\[")
STEP = re.compile(r"^\s*step\b")
TAG = re.compile(r"^\s*#([\w-]+)\b")
TOKEN = re.compile(r"!?[A-Za-z0-9_]+|[!()/]")


@dataclass(frozen=True)
class Guide:
    opening: str
    content: str
    closing: str


def extract_guides(source: str) -> tuple[str, list[Guide]]:
    """Read long-string calls without executing Lua; reject unsupported wrappers."""
    guides = []
    preamble = ""
    cursor = 0
    while match := CALL_START.search(source, cursor):
        between = source[cursor:match.start()]
        if not guides:
            preamble = between
        elif between.strip():
            raise ValueError("Unexpected Lua between RegisterGuide calls")
        delimiter = "]" + match[1] + "]"
        end = source.find(delimiter, match.end())
        if end < 0:
            raise ValueError("Unterminated RegisterGuide long string")
        closing = re.match(r"\s*\)", source[end + len(delimiter):])
        if not closing:
            raise ValueError("Expected single-string RegisterGuide(...) call")
        call_end = end + len(delimiter) + closing.end()
        guides.append(Guide(source[match.start():match.end()].lstrip(),
                            source[match.end():end], source[end:call_end]))
        cursor = call_end
    if not guides:
        raise ValueError("No supported RegisterGuide calls found")
    if source[cursor:].strip():
        raise ValueError("Unexpected Lua after the final RegisterGuide call")
    return preamble, guides


def condition(line: str) -> str | None:
    # RXPGuides ignores Lua-style comments before evaluating conditions.
    code = line.split("--", 1)[0]
    return code.split("<<", 1)[1].strip() if "<<" in code else None


def has_skip_condition(line: str) -> bool:
    expression = condition(line)
    return bool(expression and re.search(r"\bskip\b", expression, re.I))


def atom_value(atom: str, target: tuple[str, str], exclude_sod: bool,
               unknown: set[str]) -> bool | None:
    key = atom.lower()
    race, cls = (part.lower() for part in target)
    if key in RACES:
        return key == race
    if key in CLASSES:
        return key == cls
    if key in {"alliance", "horde", "neutral"}:
        return key == "alliance"
    if key in {"skip", "null"}:
        return False
    if key == "sod" and exclude_sod:
        return False
    # Game, season, level, gender and locale can change at runtime.
    # Keep their content and original conditions. Unrecognized literal atoms
    # (for example the vault's typo "fRogue") are false in addon.applies.
    runtime = {"sod", "male", "female", "classic", "forever", "tbc", "wotlk",
               "cata", "mop", "retail", "df", "enus", "engb", "dede", "frfr",
               "eses", "esmx", "itit", "ptbr", "ruru", "kokr", "zhcn", "zhtw"}
    if key in runtime or key.isdigit():
        unknown.add(atom)
        return None
    return False


def applies(expression: str | None, target: tuple[str, str],
            exclude_sod: bool = False, unknown: set[str] | None = None) -> bool:
    """AND: spaces, OR: slash, NOT: !. Unknown runtime atoms stay possible."""
    if not expression:
        return True
    unknown = unknown if unknown is not None else set()
    expression = expression.split("--", 1)[0].strip()
    tokens = TOKEN.findall(expression)
    if re.sub(r"\s+", "", "".join(tokens)) != re.sub(r"\s+", "", expression):
        raise ValueError(f"Unsupported condition syntax: {expression!r}")
    position = 0

    def negate(value):
        return None if value is None else not value

    def factor():
        nonlocal position
        if position >= len(tokens):
            raise ValueError(f"Incomplete condition: {expression!r}")
        token = tokens[position]
        position += 1
        if token == "!":
            return negate(factor())
        if token == "(":
            value = disjunction()
            if position >= len(tokens) or tokens[position] != ")":
                raise ValueError(f"Unclosed condition group: {expression!r}")
            position += 1
            return value
        if token in {"/", ")"}:
            raise ValueError(f"Unexpected {token!r} in condition: {expression!r}")
        value = atom_value(token.lstrip("!"), target, exclude_sod, unknown)
        return negate(value) if token.startswith("!") else value

    def conjunction():
        values = []
        while position < len(tokens) and tokens[position] not in {"/", ")"}:
            values.append(factor())
        if not values:
            raise ValueError(f"Empty condition branch: {expression!r}")
        return False if False in values else (None if None in values else True)

    def disjunction():
        nonlocal position
        values = [conjunction()]
        while position < len(tokens) and tokens[position] == "/":
            position += 1
            values.append(conjunction())
        return True if True in values else (None if None in values else False)

    result = disjunction()
    if position != len(tokens):
        raise ValueError(f"Unexpected condition suffix: {expression!r}")
    return result is not False


def metadata(lines: list[str], key: str) -> str:
    pattern = re.compile(r"^\s*#" + re.escape(key) + r"\s+(.+?)\s*$")
    for line in lines:
        match = pattern.match(line.split("<<", 1)[0])
        if match:
            return match[1]
    raise ValueError(f"Guide is missing #{key}")


def xprate_matches(line: str) -> bool:
    """Resolve XP-rate markers at 1; discard every > restriction as requested."""
    value = line.split("<<", 1)[0].split("--", 1)[0].strip()
    match = re.fullmatch(r"#xprate\s+([<>]?)\s*(\d+(?:\.\d*)?)"
                         r"(?:\s*-\s*(\d+(?:\.\d*)?))?(?:\s*/#som)?", value, re.I)
    if not match:
        raise ValueError(f"Unsupported XP-rate condition: {line.strip()!r}")
    operator, minimum, maximum = match.groups()
    if operator == ">":
        return False
    if operator == "<":
        return 1 <= float(minimum) - 1e-4
    return float(minimum) <= 1 <= (float(maximum) if maximum else 0xfff)


def constrain_line(line: str, targets: tuple[tuple[str, str], ...]) -> str:
    """Preserve restrictions lost when a conditional XP-rate tag is stripped."""
    target_expression = "/".join(f"Alliance {race} {cls}" for race, cls in targets)
    existing = condition(line)
    code = line.split("--", 1)[0].split("<<", 1)[0].rstrip()
    restricted = f"({existing}) ({target_expression})" if existing else target_expression
    return f"{code} << {restricted}".lstrip()


def filter_guide(guide: Guide, targets: tuple[tuple[str, str], ...],
                 filter_lines: bool, remove_hardcoreserver: bool,
                 exclude_sod: bool, stats: Counter, unknown: set[str]) -> tuple[str, str, str] | None:
    lines = guide.content.splitlines()
    first_step = next((i for i, line in enumerate(lines) if STEP.match(line)), len(lines))
    header = lines[:first_step]
    if any(has_skip_condition(line) for line in header if line.lstrip().startswith("<<")):
        stats["guides_removed"] += 1
        stats["guides_removed_skip"] += 1
        return None
    if exclude_sod and re.search(r"\bSoD\b", metadata(header, "name"), re.I):
        stats["guides_removed"] += 1
        return None
    enabled = [condition(line) for line in header if line.lstrip().startswith("<<")]
    eligible = tuple(t for t in targets if all(applies(c, t, exclude_sod, unknown) for c in enabled))
    if not eligible:
        stats["guides_removed"] += 1
        return None
    remove_tags = {"hardcore", "som"}
    if remove_hardcoreserver:
        remove_tags.add("hardcoreserver")

    def should_remove(line):
        if has_skip_condition(line):
            return False
        match = TAG.match(line)
        if not match:
            return False
        if match[1].lower() in remove_tags:
            return True
        if exclude_sod and match[1].lower() == "season":
            value = line.split("<<", 1)[0].split("--", 1)[0].split(maxsplit=1)
            return len(value) == 2 and value[1].strip() == "2"
        return False

    def clean(block, eligible_targets):
        kept = []
        for line in block:
            if has_skip_condition(line):
                stats["lines_removed_skip"] += 1
                continue
            match = TAG.match(line)
            if match and (match[1].lower() in {"phase", "era", "softcore", "xprate"}
                          or re.fullmatch(r"phase\d+(?:-\d+)?", match[1], re.I)):
                stats["markers_removed"] += 1
                continue
            if filter_lines and not any(applies(condition(line), t, exclude_sod, unknown)
                                        for t in eligible_targets):
                stats["lines_removed"] += 1
                continue
            kept.append(line)
        return kept

    def rate_targets(block, eligible_targets):
        retained = eligible_targets
        for line in block:
            if has_skip_condition(line):
                continue
            match = TAG.match(line)
            if match and match[1].lower() == "xprate" and not xprate_matches(line):
                retained = tuple(t for t in retained
                                 if not applies(condition(line), t, exclude_sod, unknown))
        return retained

    if any(should_remove(line) for line in header):
        stats["guides_removed"] += 1
        return None
    before_rate = eligible
    eligible = rate_targets(header, eligible)
    if not eligible:
        stats["guides_removed"] += 1
        stats["guides_removed_xprate"] += 1
        return None
    kept_header = clean(header, eligible)
    if eligible != before_rate:
        index = next((i for i, line in enumerate(kept_header)
                      if line.lstrip().startswith("<<")), None)
        if index is None:
            kept_header.append(constrain_line("", eligible))
        else:
            kept_header[index] = constrain_line(kept_header[index], eligible)
    group = metadata(kept_header, "group")
    name = metadata(kept_header, "name")
    output = [line.rstrip() for line in kept_header]
    while output and not output[-1].strip():
        output.pop()
    boundaries = [i for i in range(first_step, len(lines)) if STEP.match(lines[i])] + [len(lines)]
    kept_steps = 0
    for start, end in zip(boundaries, boundaries[1:]):
        block = lines[start:end]
        stats["steps_seen"] += 1
        if has_skip_condition(block[0]):
            stats["steps_removed_skip"] += 1
            continue
        step_targets = tuple(t for t in eligible if applies(condition(block[0]), t, exclude_sod, unknown))
        if not step_targets:
            stats["steps_removed_conditions"] += 1
            continue
        if any(should_remove(line) for line in block):
            stats["steps_removed_modes"] += 1
            continue
        before_rate = step_targets
        step_targets = rate_targets(block, step_targets)
        if not step_targets:
            stats["steps_removed_xprate"] += 1
            continue
        cleaned = clean(block, step_targets)
        if not any(line.strip() and not line.lstrip().startswith(("#", "--")) for line in cleaned[1:]):
            stats["steps_removed_empty"] += 1
            continue
        if step_targets != before_rate:
            cleaned[0] = constrain_line(cleaned[0], step_targets)
        output.extend(("", cleaned[0].strip()))
        body = [line.strip() for line in cleaned[1:]]
        while body and not body[-1]:
            body.pop()
        for line in body:
            if line:
                output.append("    " + line)
            elif output[-1]:
                output.append("")
        stats["steps_kept"] += 1
        kept_steps += 1
    if not kept_steps:
        stats["guides_removed"] += 1
        stats["guides_removed_empty"] += 1
        return None
    stats["guides_kept"] += 1
    return group, name, "\n".join(output).rstrip() + "\n"


def slug(value: str) -> str:
    value = re.sub(r"[^A-Za-z0-9_-]+", "-", value).strip("-_")
    return value[:100] or "Guide"


def digest(content: bytes) -> str:
    return hashlib.sha256(content).hexdigest()


def write_output(output: Path, files: dict[str, str], manifest: dict) -> None:
    """Only replace/remove unchanged files owned by this generator's manifest."""
    previous = {}
    manifest_path = output / MANIFEST
    if manifest_path.exists():
        saved = json.loads(manifest_path.read_text(encoding="utf-8"))
        if saved.get("generator") != GENERATOR:
            raise ValueError(f"Unrecognized manifest: {manifest_path}")
        previous = saved["files"]
    for name in set(previous) | set(files):
        if Path(name).name != name or not name.endswith(".lua") or "/" in name or "\\" in name:
            raise ValueError(f"Unsafe generated filename: {name!r}")
        path = output / name
        if path.is_symlink():
            raise ValueError(f"Refusing to replace a symlink: {path}")
        if path.exists():
            if name not in previous or digest(path.read_bytes()) != previous[name]:
                raise ValueError(f"Refusing to overwrite an unowned or edited file: {path}")
            if path.resolve().parent != output.resolve():
                raise ValueError(f"Generated file escapes the output directory: {path}")
    output.mkdir(parents=True, exist_ok=True)
    for name, content in files.items():
        with (output / name).open("w", encoding="utf-8", newline="\n") as handle:
            handle.write(content)
    for name in previous.keys() - files.keys():
        path = output / name
        if path.exists():
            path.unlink()
    manifest["files"] = {name: digest(content.encode("utf-8")) for name, content in files.items()}
    with manifest_path.open("w", encoding="utf-8", newline="\n") as handle:
        json.dump(manifest, handle, indent=2, ensure_ascii=False)
        handle.write("\n")


def parse_target(value: str) -> tuple[str, str]:
    parts = value.replace(":", " ").split()
    if len(parts) != 2 or parts[0].lower() not in {"dwarf", "gnome"} or parts[1].lower() not in {"warrior", "warlock", "paladin"}:
        raise argparse.ArgumentTypeError('Use a target such as "Dwarf Warrior" or "Gnome:Warlock"')
    return tuple(part.capitalize() for part in parts)


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source", type=Path, default=DEFAULT_SOURCE)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--target", action="append", type=parse_target,
                        help="Repeat for specific race/class pairs; default is all six combinations")
    parser.add_argument("--whole-steps-only", action="store_true", help="Keep conditional lines inside retained steps")
    parser.add_argument("--keep-hardcoreserver", action="store_true")
    parser.add_argument("--keep-sod", action="store_false", dest="exclude_sod", default=True,
                        help="Keep SoD content; by default exclude SoD conditions, #season 2 blocks and guides named SoD")
    parser.add_argument("--dry-run", action="store_true", help="Report filtering without writing files")
    args = parser.parse_args(argv)
    try:
        source_path = args.source.resolve()
        output_path = args.output.resolve()
        source_bytes = source_path.read_bytes()
        source = source_bytes.decode("utf-8-sig")
        preamble, guides = extract_guides(source)
        stats = Counter(guides_seen=len(guides))
        unknown = set()
        files = {}
        targets = tuple(args.target or DEFAULT_TARGETS)
        for guide in guides:
            filtered = filter_guide(guide, targets, not args.whole_steps_only,
                                    not args.keep_hardcoreserver, args.exclude_sod, stats, unknown)
            if filtered is None:
                continue
            group, name, content = filtered
            filename = slug(group) + "__" + slug(name) + ".lua"
            if filename in files:
                raise ValueError(f"Duplicate generated filename: {filename}")
            if (output_path / filename).resolve() == source_path:
                raise ValueError("Output would overwrite the source vault")
            files[filename] = ("-- Generated by Scripts/split_guide_vault.py; rerun the script to update.\n"
                               + preamble.rstrip() + "\n\n" + guide.opening + content + guide.closing + "\n")
        manifest = {"generator": GENERATOR, "source": str(source_path),
                    "source_sha256": digest(source_bytes), "targets": targets,
                    "filter_lines": not args.whole_steps_only,
                    "remove_hardcoreserver": not args.keep_hardcoreserver,
                    "exclude_sod": args.exclude_sod, "statistics": dict(stats),
                    "xprate": 1, "remove_skip_conditions": True,
                    "preserved_runtime_atoms": sorted(unknown)}
        if not args.dry_run:
            write_output(output_path, files, manifest)
        print(("Would write" if args.dry_run else "Wrote") + f" {len(files)} guides to {output_path}")
        print(json.dumps(dict(stats), indent=2))
        if unknown:
            print("Preserved runtime conditions: " + ", ".join(sorted(unknown)))
        return 0
    except (OSError, ValueError, KeyError) as error:
        print(f"Error: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
