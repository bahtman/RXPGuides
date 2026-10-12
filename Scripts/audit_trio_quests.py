"""Audit authored Forever trio/default quest actions; does not modify guides."""
from pathlib import Path
import re, json, csv
from collections import defaultdict

ROOT = Path(__file__).resolve().parents[1]
BASE = ROOT / 'Guides/Forever'
PROFILES = [('Dwarf', 'Paladin'), ('Dwarf', 'Warrior'), ('Gnome', 'Warrior'), ('Gnome', 'Warlock')]

def applies(expr, race, cls):
    # Same slash-OR, space-AND semantics as GuideLoader.lua:applies.
    while '(' in expr:
        expr = re.sub(r'(!?)\(([^()]*)\)', lambda m: cls if applies(m[2], race, cls) != bool(m[1]) else 'NULL', expr)
    return any(all((token.lstrip('!') in {race, cls, 'Alliance', 'FOREVER', 'Classic', 'enUS'}) != token.startswith('!') for token in re.findall(r'!?\w+', branch)) for branch in expr.split('/'))

def parse(path, limit=None):
    lines = path.read_text(encoding='utf-8-sig').splitlines()
    starts = [i for i,l in enumerate(lines) if re.match(r'^\s*step(?:\s|$)', l)]
    chapter = ''
    result = []
    for idx, start in enumerate(starts):
        if limit and start + 1 >= limit:
            break
        end = starts[idx+1] if idx+1 < len(starts) else len(lines)
        # A new RegisterGuide header can occur at the tail of a prior step.
        header_expr = ''
        for l in lines[:start+1]:
            if 'RegisterGuide' in l: header_expr = ''
            if l.startswith('#name '): chapter = l[6:]
            if l.startswith('<< '): header_expr = l[3:].strip()
        block = lines[start:end]
        for j,l in enumerate(block):
            if 'RegisterGuide' in l or l.strip() == ']])':
                block = block[:j]
                break
        step_expr = block[0].split('<<',1)[1].strip() if '<<' in block[0] else ''
        gates = [l.strip() for l in block if re.match(r'\s*(\.(?:isOnQuest|isQuest|xp|reputation|skill|abandon|dungeon|itemcount|maxlevel|minlevel|zoneskip|money|train)|#(?:optional|hardcore|softcore|dungeon|season))', l)]
        for off, line in enumerate(block):
            m = re.match(r'\s*\.(accept|turnin|abandon|complete)\s+([-+]?\d+)', line)
            if not m: continue
            action, qid = m[1], abs(int(m[2]))
            line_expr = line.split('<<',1)[1].strip() if '<<' in line else ''
            eligible = [f'{r} {c}' for r,c in PROFILES if applies(header_expr,r,c) and applies(step_expr,r,c) and applies(line_expr,r,c)]
            if not eligible: continue
            name = re.sub(r'\s*<<.*', '', line.split('>>',1)[-1]) if '>>' in line else ''
            name = re.sub(r'^\s*(Accept|Turn ?in|Abandon)\s*', '', name, flags=re.I).strip()
            result.append(dict(id=qid,action=action,name=name,path=path.relative_to(ROOT).as_posix(),line=start+off+1,chapter=chapter,profiles=eligible,gates=gates,selector='; '.join(filter(None,[step_expr,line_expr]))))
    return result

trio_paths = [ROOT / p.replace('\\','/') for p in re.findall(r'<Script file="([^"]*Custom-Forever[^"]+)"', (ROOT/'Guides/GuideList-forever.xml').read_text())]
trio_paths = [BASE/p.name for p in trio_paths]
default_paths = [BASE/'Alliance-1-14_DwarfGnome.lua', BASE/'Alliance-11-20.lua']
for prefix in ['21-23','22-24','23-24','24-27','27-29','29-30','29-32']:
    default_paths += sorted((BASE/'GuideVault_Filtered').glob(f'*__{prefix}-*.lua'))
handoff_path = next((BASE/'GuideVault_Filtered').glob('*__32-33-*.lua'))
trio = [a for p in trio_paths for a in parse(p)]
default = [a for p in default_paths for a in parse(p)] + parse(handoff_path,110)
handoff = parse(handoff_path)
all_later = [a for p in (BASE/'GuideVault_Filtered').glob('*.lua') for a in parse(p)]

def index(actions):
    out=defaultdict(lambda:defaultdict(list))
    for a in actions: out[a['id']][a['action']].append(a)
    return out
ti,di,hi,li = map(index,[trio,default,handoff,all_later])
names = {}
for a in default+trio+all_later:
    if a['action'] in ('accept','turnin') and a['name']: names[a['id']]=a['name']

rows=[]
for qid in sorted(set(ti)|set(di)):
    d,t=di[qid],ti[qid]
    if not (d.get('accept') or d.get('turnin') or t.get('accept') or t.get('turnin')):continue
    da,dt,ta,tt=[bool(v.get(k)) for v,k in [(d,'accept'),(d,'turnin'),(t,'accept'),(t,'turnin')]]
    if qid == 1094: status='Default conditional recovery only'
    elif qid == 337 and not ta: status='Shared item-start quest; trio uses item without accept tag'
    elif dt and not tt: status='Default turn-in missing in trio' if not ta else 'Trio accepts; default turn-in deferred/missing'
    elif da and not ta: status='Default pickup missing in trio' if not tt else 'Trio turn-in without authored pickup'
    elif not da and not dt: status='Trio addition'
    elif (ta and not da) or (tt and not dt): status='Shared quest; trio adds action before handoff'
    else: status='Same pickup/turn-in coverage'
    rows.append(dict(id=qid,name=names.get(qid,''),default_accept=da,default_turnin=dt,trio_accept=ta,trio_turnin=tt,status=status))

def ref(a):
    return f"[{a['chapter']}:{a['line']}](<{(ROOT/a['path']).as_posix()}:{a['line']}>)"
def refs(entries):
    seen=set(); out=[]
    for a in entries:
        key=(a['chapter'],a['action'])
        if key not in seen:out.append(ref(a));seen.add(key)
    return '; '.join(out)
def detail(qid, source):
    entries=source[qid].get('accept',[])+source[qid].get('turnin',[])
    return refs(entries)

out=ROOT/'TRIO_DEFAULT_QUEST_CROSSCHECK_2026-10-12.md'
counts=defaultdict(int)
for row in rows:counts[row['status']]+=1
head=[ '# Trio vs default: full quest crosscheck through Southshore', '',
        'Rebuilt from the installed files on 2026-10-12 after the requested pickup removals and delivery additions. This checks authored `.accept` and `.turnin` instructions, rather than character completion flags. The audit script does not modify guides.', '',
        '## Scope', '',
        '- Trio: all 20 chapters loaded in `Guides/GuideList-forever.xml`, in XML route order, ending at Gnomeregan & City Deliveries.',
        '- Default: Dwarf/Gnome 1-14, non-Hunter 11-20, 21-23 Stonetalon/Ashenvale, both 22-24 and 23-24 Wetlands alternatives, 24-27 Duskwood/Redridge, 27-29 Wetlands/Hillsbrad, **29-30 Ashenvale**, 29-32 Duskwood, and the Menethil opening of 32-33 Hillsbrad/Arathi (before Southshore).',
        '- Class/race selectors are evaluated for Dwarf Paladin, Dwarf Warrior, Gnome Warrior, and Gnome Warlock. Warrior race alternatives are a union, not extra quests for one Warrior. Other classes and disabled `skip` steps are excluded.',
        '- Optional dungeon, profession, level, and quest-state branches remain included and are shown in the action ledger. Both Wetlands alternatives are included; totals are a comparison envelope, not one mandatory playthrough.',
        '- The shared Hillsbrad/Arathi chapter is checked separately for handoff dependencies; its newly offered quests are not counted as trio omissions.', '',
        '## Counts', '', '| Coverage category | Unique quest IDs |','|---|---:|']
head += [f'| {k} | {v} |' for k,v in counts.items()]
head += ['',f"Default: {len([r for r in rows if r['default_accept'] or r['default_turnin']])} IDs; trio: {len([r for r in rows if r['trio_accept'] or r['trio_turnin']])} IDs; union: {len(rows)} IDs.",'', '## Default differences', '', '| Quest ID | Quest | Default A/T | Trio A/T | Finding | Default evidence | Trio evidence |','|---:|---|---|---|---|---|---|']
findings = [
    '## Findings that matter', '',
    f"**{counts['Same pickup/turn-in coverage'] + counts['Shared quest; trio adds action before handoff'] + counts.get('Shared item-start quest; trio uses item without accept tag',0)} default quest IDs have shared coverage:** {counts['Same pickup/turn-in coverage']} have the same explicit pickup/turn-in pattern and {counts['Shared quest; trio adds action before handoff']} gain an action in trio before the handoff. **{counts['Default turn-in missing in trio'] + counts['Default pickup missing in trio']} default quest IDs are absent from active trio pickup/turn-in instructions:** {counts['Default turn-in missing in trio']} have default turn-ins, plus {counts['Default pickup missing in trio']} carry-only pickups (1039 and 1059). Plea To The Alliance 634 is accepted but held. Further Instructions 1094 is a conditional recovery step, not a routed pickup.", '',
    '**The four unresolved trio pickups have been addressed at the user\'s request.** A New Threat 170 and The State of the Mines 92745 are removed. Unrequited Love 98461 is delivered during the first Wetlands loop. A Friend of the Family 98190 and its follow-up 98191 are delivered during the post-Stockades Stormwind visit.', '',
    '| Quest | Current coverage | Evidence |', '|---|---|---|',
    '| A New Threat 170 | Pickup removed; no active trio instruction | Coldridge chapter |',
    '| The State of the Mines 92745 | Pickup removed; no active trio instruction | Westfall & Redridge chapter |',
    f'| Unrequited Love 98461 | Hollee pickup; Tarrel Rockweaver delivery on first Menethil visit | {detail(98461,ti)} |',
    f'| A Friend of the Family 98190 | Stoutfist pickup; Bolvar delivery in the existing Stormwind Keep visit | {detail(98190,ti)} |',
    f'| A Friend of the Family 98191 | Bolvar pickup; Lord Grayson Shadowbreaker delivery before Thomas in the Cathedral | {detail(98191,ti)} |', '',
    'Destinations and follow-up checked against [Unrequited Love](https://www.wowhead.com/forever/quest=98461/unrequited-love), [A Friend of the Family 98190](https://www.wowhead.com/forever/quest=98190/a-friend-of-the-family), and [A Friend of the Family 98191](https://www.wowhead.com/forever/quest=98191/a-friend-of-the-family).', '',
    '**Thirteen pickup-only quests remain intentional handoff/later deliveries:** 231, 538, 634, 689, 690, 1179, 1264, 1302, 1718, 1798, 2904, 4738 and 95795. Gnome Improvement 2948 also has a conditional turn-in; it may remain carried if the materials are unavailable.', '',
    '**The complete Worgen chain is now scheduled:** accept and complete 173 on the third Duskwood pass; deliver 173, accept and complete 221 on the Darkshire/Eastvale visit; deliver 221 and accept 222 at the opening post-Stockades Darkshire visit. Complete both 222 objectives on the southern loop before the ogre cave/Defias strongbox, and finish 222/223 during the final town return. Crime and Punishment 377 is moved to arrival. Menethil remains the hearth destination. No default XP or hearth-cooldown grind is copied.', '',
    '**A Noble Brew 335/336 is now included:** accept 335 at the third-pass Stormwind visit (level 25+); gather Tear of Tilloa beside Stalvan during the post-Stockades circuit; gather Musquash Root from Wetlands during the final eastern golem circuit; deliver 335 to Zardeth and 336 to Wishock during the Gnomeregan Stormwind visit. Default gets the root during 27-29 after Greenwarden and the flower during 29-32. The root is below Stonewrought Dam in Wetlands, not in Loch Modan. Plant locations follow default; beta spawn availability has not been verified in game. The flower has a manual-skip note if missing, and incomplete brew deliveries skip safely.', '',
    '**The previously added chains are present:** Stalvan through 98; Morbent Fel through 55; Mor\'Ladim through 229/231 (231 held); Eliza 253; Armed and Ready 325; Missing Diplomat through 1250 with 1264 held; James Hyal through 1301 with 1302 held; Sully\'s Letter 637 and Sara Balloo 683/686 with 689 held; Cleansing the Eye 293; and the Gnomeregan main quests. Tinkmaster Overspark 2923 remains absent, although its destination quest Save Techbot\'s Brain 2922 is included directly.', '',
    '**The largest geographic omission is the later default Ashenvale circuit.** Trio completes its earlier Ashenvale visit but omits 22 of the turn-in IDs appearing in default 29-30: 1011, 1016, 1021, 1022, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1035, 1037, 1038, 1045, 1046, 1055, 1057, 1140 and 4581. Its two later carryovers, The Barrens Port 1039 and Reclaiming the Charred Vale 1059, are also absent.', '',
    '**Warlock class coverage differs:** Devourer of Souls 1716, Heartswood 1738, The Binding 1739, What Is Love? 65602, The Binding 65603 and You Have Served Us Well 397 have default instructions but no trio instructions. The default explicitly uses this chain for the Succubus/Incubus; trio\'s Voidwalker Binding 1689 is a different quest. The level-30 Seeking Strahad and Menara referrals are included.', '',
    '**Other notable default omissions:** the early STV quests 185/190/215/583; the Stonetalon chain; Bashal\'Aran and Buzzbox chains; Redridge fish/murloc quests; and the starter mail/class-scroll quests. Optional WC quests and Cooking/ingredient quests are included in the omission count, so this is not a count of required quests for each player. Apprentice\'s Duties 471 and Harvesting the Harvesters 92909 are deliberately disabled in trio.', '',
    '## Hillsbrad/Arathi handoff', '',
    '- **Plea To The Alliance 634 has no delivery in shared 32-33.** Trio holds it, but default delivered it during 27-29. It needs an explicit Captain Nials turn-in during the first Refuge Pointe visit, or it remains in the log.',
    '- **Refuge Pointe flight path is not obtained by trio.** Shared 32-33 tells the party to fly there from Southshore. The first trip requires ground travel and flight-path pickup unless already unlocked independently.',
    '- **The Menethil opening is covered:** 1301/1302 and Missing Diplomat 1248/1249/1250/1264 are already handled by trio before its hearth to Southshore. Their shared Menethil steps have zone skips. The optional Third Fleet step lacks that zone skip, but trio already turns in 288.',
    '- **City prerequisites are present:** Southshore 538 (conditional on the history book), A King\'s Tribute 689, Malin\'s Request 690, Brassbolts 1179, Warrior 1718 and Warlock 1798/4738. Shared Hillsbrad/Arathi supplies its own local quest pickups.',
    '- **Later Ratchet travel still differs:** shared 33-34 assumes the Warlock has its flight path. Trio\'s closing note correctly tells the Warlock to travel with the party on the first visit and unlock it.',
    '- **An Old History Book is conditional, not guaranteed.** Trio now offers an optional drop objective while completing the southern worgen kills, followed by an explicit item-start/turn-in at Milton during the final city visit. It does not require extra grinding until the book drops. Southshore 538 remains conditional on receiving that drop.', '',
    '## Validation and interpretation', '',
    '- Compared every active pickup/turn-in in the scope and retained source lines and gates in the CSV. Signed quest IDs are normalized: `.turnin -214`, `-1198`, `-3765` and similar forms are valid optional turn-ins, not absent quests. This follows `functions.lua` handling of negative IDs.',
    '- No additional class/race-specific missing turn-in was found among quest IDs that both routes turn in, across the four selected character profiles.',
    '- A/T presence establishes authored coverage, not that the quest is currently available or completed on the server. Level/quest-state/optional conditions are not simulated.',
    '- The older gap report is superseded for this question: it omitted 29-30 Ashenvale, and some older narrative sections still describe chains as absent after they were integrated.', '',
]
head[head.index('## Counts'):head.index('## Counts')] = findings
omission_focus = [
    '## Remaining omissions: suggested review order', '',
    'These are review priorities, not authorization to add every omitted quest. Worgen in the Woods and A Noble Brew now have full authored coverage.', '',
    '| Priority | Omission | Route implications |', '|---|---|---|',
    '| 1 | Tinkmaster Overspark 2923 | Small Ironforge referral before the already included Save Techbot\'s Brain 2922. |',
    '| 2 | Warlock 1716/1738/1739/65602/65603 and 397 | Class progression is absent. Requires routing the level-20 chain through the Barrens and Ashenvale, not merely adding a final city turn-in. |',
    '| 3 | Later Ashenvale circuit and Stonetalon | Largest route-expansion choice. Keep this separate from small additions along the existing trio route. |',
    '| 3 | Earlier Redridge and Darkshore omissions | Review level limits and opportunity during existing passes. Many are replacements for the trio\'s changed route rather than broken continuations. |',
    '| Optional | Cooking, Wailing Caverns, starter deliveries, deliberately disabled quests | Keep conditions visible; these are not mandatory party gaps. |', '',
]
head[head.index('## Counts'):head.index('## Counts')] = omission_focus
def at(a,t):return ('A' if a else '-')+'/'+('T' if t else '-')
for r in rows:
    if r['status'] in ('Same pickup/turn-in coverage','Trio addition','Shared quest; trio adds action before handoff'):continue
    head.append(f"| {r['id']} | {r['name']} | {at(r['default_accept'],r['default_turnin'])} | {at(r['trio_accept'],r['trio_turnin'])} | {r['status']} | {detail(r['id'],di)} | {detail(r['id'],ti)} |")
head += ['', '## Trio additions', '', '| Quest ID | Quest | Trio A/T | Trio evidence |','|---:|---|---|---|']
for r in rows:
    if r['status'] == 'Trio addition':head.append(f"| {r['id']} | {r['name']} | {at(r['trio_accept'],r['trio_turnin'])} | {detail(r['id'],ti)} |")
head += ['', '## Accepted but not turned in by trio', '', '| Quest ID | Quest | Later default turn-in chapter(s) | Trio evidence |','|---:|---|---|---|']
for qid,t in sorted(ti.items()):
    if t.get('accept') and not t.get('turnin'):
        head.append(f"| {qid} | {names.get(qid,'')} | {refs(li[qid].get('turnin',[])) or 'No turn-in found in filtered default'} | {detail(qid,ti)} |")
head += ['', '## Every compared quest', '', 'A = pickup; T = turn-in. Dashes mean no active authored instruction within the comparison boundary. Every action, condition, and source line is also included in the CSV ledger.', '', '| ID | Quest | Default A/T | Trio A/T | Result |','|---:|---|---|---|---|']
for r in rows:head.append(f"| {r['id']} | {r['name']} | {at(r['default_accept'],r['default_turnin'])} | {at(r['trio_accept'],r['trio_turnin'])} | {r['status']} |")
out.write_text('\n'.join(head)+'\n', encoding='utf-8')
with (ROOT/'TRIO_DEFAULT_QUEST_ACTIONS_2026-10-12.csv').open('w',newline='',encoding='utf-8-sig') as f:
    w=csv.DictWriter(f,fieldnames=['route','id','action','name','chapter','path','line','profiles','selector','gates']);w.writeheader()
    for route,actions in [('trio',trio),('default',default),('shared_handoff',handoff)]:
        for a in actions:w.writerow(dict(route=route,**{k:('; '.join(v) if isinstance(v,list) else v) for k,v in a.items()}))
(ROOT/'Scripts/trio_quest_audit_data.json').write_text(json.dumps(dict(rows=rows,trio=trio,default=default,handoff=handoff),indent=2),encoding='utf-8')
print(json.dumps(dict(counts=counts,default_ids=sum(r['default_accept'] or r['default_turnin'] for r in rows),trio_ids=sum(r['trio_accept'] or r['trio_turnin'] for r in rows),union=len(rows)),indent=2))
for r in rows:
    if r['status']!='Same pickup/turn-in coverage':print(r['id'],r['name'],r['status'])
