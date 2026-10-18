"""Read-only quest-action duplication scan of the manifest's custom trio guides.

Run with Python 3. Writes nothing; JSON on stdout includes source step context.
This is a candidate finder, not a game-state or route-reachability simulator.
"""
from pathlib import Path
from collections import defaultdict
import json
import re

ROOT = Path(__file__).resolve().parents[1]
PROFILES = [('Dwarf', 'Paladin'), ('Dwarf', 'Warrior'),
            ('Gnome', 'Warrior'), ('Gnome', 'Warlock')]


def applies(expr, race, cls):
    # GuideLoader.lua:36: parentheses, slash OR, whitespace AND, ! negation.
    # Numeric levels are included in this all-levels candidate envelope.
    while '(' in expr:
        expr = re.sub(r'(!?)\(([^()]*)\)',
                      lambda m: cls if applies(m[2], race, cls) != bool(m[1]) else 'NULL', expr)
    return any(all((token.lstrip('!').isdigit() or
                    token.lstrip('!').upper() in {race.upper(), cls.upper(), 'ALLIANCE', 'FOREVER', 'ENUS'})
                   != token.startswith('!')
                   for token in re.findall(r'!?\w+', branch))
               for branch in expr.split('/'))


def parse(path, from_label=None):
    lines = path.read_text(encoding='utf-8-sig').splitlines()
    chapter, header, block, start = '', '', [], 0
    result = []
    enabled = from_label is None

    def flush():
        nonlocal enabled
        if not block:
            return
        if from_label and any(re.match(r'\s*#label\s+' + re.escape(from_label) + r'\s*$', l) for l in block):
            enabled = True
        if not enabled:
            return
        step_expr = block[0].split('<<', 1)[1].strip() if '<<' in block[0] else ''
        for offset, line in enumerate(block):
            m = re.match(r'\s*\.(accept|turnin)\s+(-?\d+)', line)
            if not m:
                continue
            line_expr = line.split('<<', 1)[1].strip() if '<<' in line else ''
            profiles = [f'{r} {c}' for r, c in PROFILES
                        if all(applies(e, r, c) for e in (header, step_expr, line_expr))]
            if profiles:
                result.append(dict(id=abs(int(m[2])), action=m[1], signed_id=int(m[2]),
                                   path=path.relative_to(ROOT).as_posix(), line=start + offset + 1,
                                   chapter=chapter, profiles=profiles,
                                   selector='; '.join(filter(None, (header, step_expr, line_expr))),
                                   command=line.strip(), step_start=start + 1, context=block[:]))

    for i, raw in enumerate(lines):
        line = raw.split('--', 1)[0].rstrip()
        if 'RegisterGuide([[' in line or line.strip() == ']])':
            flush()
            block = []
            header = ''
            continue
        if re.match(r'^\s*step(?:\s|$)', line):
            flush()
            block, start = [line], i
        elif block:
            block.append(line)
        elif line.startswith('#name '):
            chapter = line[6:]
        elif line.startswith('<< '):
            header = line[3:]
    flush()
    return result


def audit():
    manifest = (ROOT / 'Guides/GuideList-forever.xml').read_text()
    paths = [ROOT / p for p in re.findall(r'<Script file="([^"]*Custom-Forever[^"]+)"', manifest)]
    actions = [a for p in paths for a in parse(p)]
    # City Supplies is a dynamically instantiated template. It has no quest actions.
    city = ROOT / 'Guides/Forever/Custom-Forever-City-Supplies.lua'
    assert not re.search(r'^\s*\.(accept|turnin|daily|dailyturnin|acceptmultiple|turninmultiple)\s', city.read_text(), re.M)
    # Include is a tail range, beginning at fly2, in the installed shared guide.
    shared = ROOT / 'Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__32-33-Hillsbrad-Arathi.lua'
    actions += parse(shared, 'fly2')
    # Fail visibly if new quest-action primitives or non-city includes need support.
    for p in paths + [shared]:
        text = p.read_text(encoding='utf-8-sig')
        assert not re.search(r'^\s*\.(daily|dailyturnin|acceptmultiple|turninmultiple|acceptmap)\s', text, re.M), p
        for inc in re.findall(r'^\s*#include (.*)', text, re.M):
            assert '01-60 City Supplies - ' in inc or inc.strip() == 'RestedXP Forever Guide (A)\\32-33 Hillsbrad/Arathi@fly2', inc
    index = defaultdict(list)
    for a in actions:
        index[a['id'], a['action']].append(a)
    duplicates = []
    for (qid, action), entries in sorted(index.items()):
        if len(entries) > 1:
            overlap = [f'{r} {c}' for r, c in PROFILES
                       if sum(f'{r} {c}' in a['profiles'] for a in entries) > 1]
            duplicates.append(dict(id=qid, action=action, overlapping_profiles=overlap, entries=entries))
    return dict(files=len(paths), registrations=sum(p.read_text().count('RXPGuides.RegisterGuide([[') for p in paths),
                actions=len(actions), quest_ids=len({a['id'] for a in actions}),
                duplicate_groups=len(duplicates), duplicates=duplicates)


if __name__ == '__main__':
    print(json.dumps(audit(), indent=2))
