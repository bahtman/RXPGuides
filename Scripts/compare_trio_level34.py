"""Read-only route comparison; writes research artifacts, never guide files."""
from pathlib import Path
import re, json, difflib
from collections import defaultdict

ROOT = Path(__file__).resolve().parents[1]
BASE = ROOT/'Guides/Forever'
OUT = ROOT/'docs/route-authoring'
PROFILES = [('Dwarf','Paladin'), ('Dwarf','Warrior'), ('Gnome','Warrior'), ('Gnome','Warlock')]

def applies(expr, race, cls):
    while '(' in expr:
        expr = re.sub(r'(!?)\(([^()]*)\)', lambda m: cls if applies(m[2],race,cls) != bool(m[1]) else 'NULL', expr)
    return any(all((t.lstrip('!') in {race,cls,'Alliance','FOREVER','Classic','enUS'} or (t.lstrip('!').isdigit() and int(t.lstrip('!'))<=34)) != t.startswith('!') for t in re.findall(r'!?\w+',b)) for b in expr.split('/'))

def parse(path):
    lines=path.read_text(encoding='utf-8-sig').splitlines()
    guides=[]; g=None; s=None
    for n,line in enumerate(lines,1):
        if re.match(r'\s*RXPGuides.RegisterGuide\(\[\[',line):
            g=dict(path=path.relative_to(ROOT).as_posix(),line=n,name='',group='',cond='',steps=[]); guides.append(g); s=None
        if g is None: continue
        if line.strip()==']])': g=None; s=None; continue
        if re.match(r'^\s*step(?:\s|$)',line):
            s=dict(line=n,lines=[],cond=line.split('<<',1)[1].strip() if '<<' in line else '',guide=g['name'],path=g['path']); g['steps'].append(s)
        if s is not None: s['lines'].append((n,line))
        else:
            for tag in ['name','group','next']:
                if line.startswith('#'+tag+' '): g[tag]=line[len(tag)+2:].split('<<')[0].strip()
            if line.startswith('<< '): g['cond']=line[3:]
    return guides

defaults=sum((parse(BASE/p) for p in ['Alliance-1-14_DwarfGnome.lua','Alliance-11-20.lua','RestedXP-Skyborne_01.lua']),[])
custom=sum((parse(p) for p in sorted(BASE.glob('Custom-Forever*.lua'))),[])
registry={(g['group'],g['name']):g for g in defaults+custom}
selected=[g for g in defaults if g['group']=='RestedXP Forever Guide (A)' and re.match(r'^\d',g['name']) and int(g['name'].split('-')[0])<34 and g['name']!='15-16 Loch Modan' and any(applies(g['cond'],*p) for p in PROFILES)]
trio=[g for g in custom if not g['name'].startswith(('01-60','34-35'))]
ordered=[]; current=next(g for g in trio if g['name']=='01-05 Coldridge Valley')
while current not in ordered:
    ordered.append(current)
    target=current.get('next','')
    nxt=next((g for g in trio if g['name']==target or re.sub(r'[^a-z0-9]+','-',g['name'].lower()).strip('-')==target.split('/')[-1]),None)
    if nxt is None: break
    current=nxt
assert len(ordered)==len(trio), 'Unresolved custom route order'
trio=ordered
shared=next(g for g in selected if g['name']=='33-34 Thousand Needles')

def expand(g):
    for s in g['steps']:
        inc=next((l.strip()[9:] for _,l in s['lines'] if l.strip().startswith('#include ')),None)
        if inc:
            if not any(applies(s['cond'],*p) for p in PROFILES): continue
            target,_,label=inc.partition('@'); group,_,name=target.rpartition('\\')
            if 'City Supplies' in name: continue # inspected: training/shopping only
            other=registry[(group or g['group'],name)]; steps=list(expand(other))
            if label:
                start,end=(label.split('-',1)+[''])[:2] if '-' in label else (label,'')
                begin=next(i for i,t in enumerate(steps) if any(l.strip()=='#label '+start for _,l in t['lines']))
                finish=next((i+1 for i,t in enumerate(steps) if end and any(l.strip()=='#label '+end for _,l in t['lines'])),len(steps))
                steps=steps[begin:finish]
            yield from steps
        else: yield s

def actions(gs):
    out=[]
    for g in gs:
        for s in expand(g):
            if any(l.strip()=='skip' for _,l in s['lines']): continue
            gates=[l.strip() for _,l in s['lines'] if re.match(r'\s*(\.(?:xp|maxlevel|isOnQuest|isNotOnQuest|isQuest\w*|skill|itemcount|dungeon)|#(?:optional|hardcore|softcore))',l)]
            for n,l in s['lines']:
                m=re.match(r'\s*\.(accept|turnin|complete|abandon)\s+(-?\d+)([^ >]*)',l)
                if not m: continue
                cond=l.split('<<',1)[1].strip() if '<<' in l else ''
                prof=[r+' '+c for r,c in PROFILES if applies(g['cond'],r,c) and applies(s['cond'],r,c) and applies(cond,r,c)]
                if not prof: continue
                name=l.split('>>',1)[1].split('<<')[0].strip() if '>>' in l else ''
                name=re.sub(r'^(?:Accept|Turn in|Turnin|Abandon)\s+','',name,flags=re.I)
                out.append(dict(action=m[1],id=abs(int(m[2])),args=m[3],name=name,path=s['path'],line=n,step=s['line'],chapter=s['guide'],via=g['name'],profiles=prof,gates=gates,condition='; '.join(filter(None,[g['cond'],s['cond'],cond]))))
    return out

d,t=actions(selected),actions(trio+[shared])
def idx(aa):
    ix=defaultdict(list)
    for a in aa: ix[a['id']].append(a)
    return ix
di,ti=idx(d),idx(t)
names={a['id']:a['name'] for a in d+t if a['action'] in ('accept','turnin') and a['name']}
names.update({a['id']:a['name'] for a in d if a['action'] in ('accept','turnin') and a['name']})
def ref(a): return f"[{a['chapter']}:{a['line']}](<{(ROOT/a['path']).as_posix()}:{a['line']}>)"
def coverage(v): return ''.join(x for x,act in [('A','accept'),('C','complete'),('T','turnin')] if any(a['action']==act for a in v)) or '—'
missing=[]; partial=[]
for q,v in di.items():
    if not any(a['action'] in ('accept','turnin') for a in v): continue
    if not ti[q]: missing.append(q)
    elif any(a['action']=='turnin' for a in v) and not any(a['action']=='turnin' for a in ti[q]): partial.append(q)
rows=['# Quest ledger: Trio versus default through level 34','', 'Generated by `Scripts/compare_trio_level34.py`. A = accept, C = objective, T = turn-in. Counts are a union of Dwarf Paladin, Dwarf/Gnome Warrior and Gnome Warlock; optional, XP, profession and quest-state branches remain included. Not a mandatory quest count for one character. Shared Thousand Needles and the included Arathi tail count for Trio.','', '## Default quests with no explicit Trio quest action','', '| Quest | Default coverage | Default source | Conditions / gates |','|---|---|---|---|']
for q in sorted(missing,key=lambda q:(di[q][0]['path'],di[q][0]['line'])):
    a=next((a for a in di[q] if a['action']=='accept'),di[q][0]); gates=sorted(set(x for a in di[q] for x in a['gates']))
    rows.append(f"| {q} — {names.get(q,'')} | {coverage(di[q])} | {ref(a)} | {a['condition']} {'; '.join(gates)} |")
rows+=['','## Shared IDs whose default turn-in is absent before Trio handoff','','| Quest | Default | Trio | Evidence |','|---|---|---|---|']
for q in partial: rows.append(f"| {q} — {names.get(q,'')} | {coverage(di[q])} | {coverage(ti[q])} | {ref(di[q][0])}; {ref(ti[q][0])} |")
rows+=['','## Inherited actions without the earlier default pickup','','The shared chapter contains these actions, but Trio never authors the earlier pickup. Quest-state gates may safely skip these actions; their presence does not establish actual quest coverage.','', '| Quest | Default pickup | Inherited Trio action |','|---|---|---|']
for q,v in di.items():
    pickups=[a for a in v if a['action']=='accept']
    if pickups and ti[q] and not any(a['action']=='accept' for a in ti[q]):
        rows.append(f"| {q} — {names.get(q,'')} | {ref(pickups[0])} | {ref(ti[q][0])} |")
rows+=['','## Separate dungeon-reference comparison','','These are the standalone Alliance dungeon guides in the supplied Skyborne file, not additional mandatory chapters of the default speedrun itinerary. Only the four dungeons actually run by Trio and present in this reference set are compared.','', '| Dungeon | Reference quests absent from Trio accept/turn-in actions |','|---|---|']
for g in defaults:
    if g['group']=='RXP Dungeon Quest Guides (A)' and g['name'] in ['01. The Deadmines','03. Blackfathom Deeps','04. The Stockade','05. Gnomeregan']:
        aa=actions([g]); qs={a['id']:a for a in aa if a['action'] in ('accept','turnin')}
        absent=[f"{q} — {a['name']} ({ref(a)})" for q,a in qs.items() if not any(b['action'] in ('accept','turnin') for b in ti[q])]
        rows.append(f"| {g['name']} | {'; '.join(absent) or 'None'} |")
rows+=['','## All quest IDs','','| Quest | Default | Trio | Default evidence | Trio evidence |','|---|---|---|---|---|']
for q in sorted(set(di)|set(ti)):
    rows.append(f"| {q} — {names.get(q,'')} | {coverage(di[q])} | {coverage(ti[q])} | {ref(di[q][0]) if di[q] else ''} | {ref(ti[q][0]) if ti[q] else ''} |")
(OUT/'trio-default-level34-quest-ledger-2026-10-28.md').write_text('\n'.join(rows)+'\n',encoding='utf-8')

# Exact consecutive quest-action runs, preserving objective index and partial-count arguments.
# Travel/text-only steps do not break a run; this deliberately does NOT assert whole-step equivalence.
matches=[]
for cg in trio:
    ca=[a for a in actions([cg]) if a['path']==cg['path']]; ck=[(a['action'],a['id'],a['args']) for a in ca]
    for dg in selected:
        da=actions([dg]); dk=[(a['action'],a['id'],a['args']) for a in da]
        for b in difflib.SequenceMatcher(None,ck,dk,autojunk=False).get_matching_blocks():
            if b.size>=6:
                matches.append(dict(count=b.size,custom_start=ca[b.a],custom_end=ca[b.a+b.size-1],default_start=da[b.b],default_end=da[b.b+b.size-1],sequence=[f"{a['action']} {a['id']}{a['args']}" for a in ca[b.a:b.a+b.size]]))
matches.sort(key=lambda m:-m['count'])
mr=['# Consecutive matching quest actions','','These are candidate copy ranges, not verified drop-in replacements. Matching ignores travel, text and non-quest steps; retains complete objective indexes and partial counts. Class conditions, labels, inventory, hearth and quest-state gates must be reconciled.','', '| Actions | Trio start → end line | Default start → end line |','|---:|---|---|']
for m in matches: mr.append(f"| {m['count']} | {ref(m['custom_start'])} → {m['custom_end']['line']} | {ref(m['default_start'])} → {m['default_end']['line']} |")
(OUT/'trio-default-level34-matching-sequences-2026-10-28.md').write_text('\n'.join(mr)+'\n',encoding='utf-8')
(OUT/'trio-default-level34-data-2026-10-28.json').write_text(json.dumps(dict(default_chapters=[g['name'] for g in selected],trio_chapters=[g['name'] for g in trio],default=d,trio=t,missing=missing,partial=partial,matches=matches),indent=2),encoding='utf-8')
print(json.dumps(dict(default_chapters=[g['name'] for g in selected],missing_count=len(missing),partial=[(q,names.get(q)) for q in partial],default_ids=sum(bool(v) for v in di.values()),trio_ids=sum(bool(v) for v in ti.values()),matching_runs=len(matches)),indent=2))
