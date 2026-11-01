"""Execute generated Lua and the installed parser with mocked WoW APIs.

Uses lupa in %TEMP%/rxp-profession-validation; does not simulate the game server.
"""
import os
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(Path(os.environ.get('TEMP', '/tmp')) / 'rxp-profession-validation'))
from lupa.lua51 import LuaRuntime

vm = LuaRuntime(unpack_returned_tuples=True)
vm.execute(r'''
strings = {}
events = {}
RXPGuides = {RegisterGuide = function(text) table.insert(strings, text) end}
addon = {functions = {}, separators = {}, mapConversion = {}, icons = {collect = '', ['goto'] = ''},
    player = {faction = 'Alliance', class = 'MAGE', race = 'Human'}, game = 'FOREVER',
    settings = {profile = {}, ReplaceColors = function(text) return text end},
    comms = {PrettyDebug = error}, currentGuideName = 'validation',
    minGuideVersion = 0, maxGuideVersion = 0, skillList = {}}
addon.error = error
addon.affix = function(a,b) return a .. '-' .. b end
addon.GetItemName = function(id) return 'Item ' .. id end
addon.GetMapId = tonumber
addon.GetMapInfo = function(zone, x, y) return tonumber(zone), tonumber(x), tonumber(y) end
addon.BuildGuideKey = function(g) return g.group .. '\\' .. (g.subgroup or '') .. '\\' .. g.name end
addon.A32 = function() return 10000 end
addon.RegisterGroup = function() end
addon.GroupOverride = function(g) return g.group end
addon.GetSkillLevel = function(skill, max) return max and testMax or testSkill end
addon.GetGuideProgress = function() return 1 end
addon.UpdateStepText = function() end
addon.SetElementComplete = function(self) self.element.completed = true end
addon.SetElementIncomplete = function(self) self.element.completed = nil end
addon.IsOnTurnInGuide = function() end
addon.comms.AnnounceStepEvent = function() end
RXPCData = {currentGuideName = 'validation'}
addon.IsPlayerSpell = function() return false end
GetItemCount = function(id) return testItems and (testItems[id] or 0) or testCount or 0 end
GetInventoryItemID = function() return nil end
IsQuestTurnedIn = function() return false end
IsQuestComplete = function() return false end
IsOnQuest = function() return false end
GetSpellInfo = function(id) return 'Spell ' .. id end
UnitLevel = function() return 10 end
GetSpellSubtext = function() return '' end
C_Spell = {IsSpellDataCached = function() return true end}
HBD = {GetWorldCoordinatesFromZone = function(_, x, y, zone) return x, y, zone end}
INVSLOT_LAST_EQUIPPED = 19
L = function(text) return text end
fmt, tinsert, unpack, strlower = string.format, table.insert, unpack, string.lower
gameVersion = 16001
bit = {band = function(a,b)
    local r,p=0,1
    while a>0 and b>0 do
        local x,y=a%2,b%2
        if x==1 and y==1 then r=r+p end
        a,b,p=math.floor(a/2),math.floor(b/2),p*2
    end
    return r
end}
applies = function(text) return text == 'Alliance' end
''')

source = (ROOT / 'functions.lua').read_text(encoding='utf-8-sig')
for command in ['collect', 'skill', 'maxskill', 'train', 'itemcount', 'zone']:
    start = source.index('function addon.functions.' + command + '(')
    end = source.index('\nfunction ', start + 1)
    vm.execute(source[start:end])
start = source.index('addon.functions["goto"] = function')
end = source.index('\nevents.flygoto', start)
vm.execute(source[start:end])
loader = (ROOT / 'GuideLoader.lua').read_text(encoding='utf-8-sig')
start = loader.index('local function parseLine(')
end = loader.index('\naddon.groupAlias', start)
vm.execute(loader[start:end])
vm.execute((ROOT / 'Guides/forever/Custom-Forever-City-Professions.lua').read_text(encoding='utf-8'))

guides = {}
public = []
for text in vm.globals().strings.values():
    guide, skipped, metadata = vm.globals().addon.ParseGuide(text, None, None, True)
    assert skipped is None
    name = guide['name']
    assert name not in guides
    guides[name] = guide
    if guide['internal'] is None:
        public.append(name)
    assert 'tailoring,150' not in text.lower()
    for step in guide['steps'].values():
        objectives = [e for e in step['elements'].values() if not e['textOnly']]
        assert objectives or step['include'], (name, 'No completion objective')
        for element in step['elements'].values():
            if element['tag'] == 'collect' and element['profession']:
                assert element['questId'] == 0 and element['objFlags'] == 1
                # Test actual runtime code: quantities decline with progress,
                # and bag stock completes the collection independently.
                wrapper = vm.table_from({'element': element})
                step['active'] = True
                vm.globals().testSkill = 20
                vm.globals().testCount = 0
                vm.globals().addon.functions.collect(wrapper)
                expected = max(0, element['qty'] - 20 * element['multiplier'])
                assert element['numRequired'] == expected
                vm.globals().testCount = expected
                vm.globals().addon.functions.collect(wrapper)
                assert element['completed']
                if ';' in element['ids']:
                    # Either herb alone, or a mix, must satisfy one shared
                    # total. The player must never be forced to buy both.
                    for peace, silver in [(expected, 0), (0, expected),
                                          (expected // 2, expected - expected // 2)]:
                        vm.globals().testCount = 0
                        vm.globals().testItems = vm.table_from({2447: peace, 765: silver})
                        vm.globals().addon.functions.collect(wrapper)
                        assert element['completed'] and element['count'] == expected
                    vm.globals().testItems = None
                step['active'] = False
        if step['include']:
            assert step['include'].startswith('City Module - ')

for guide in guides.values():
    for step in guide['steps'].values():
        if step['include']:
            assert step['include'] in guides
assert len(guides) == 9 and len(public) == 1
assert public == ['01 One Character - City Professions']
route = guides[public[0]]
includes = [step['include'] for step in route['steps'].values() if step['include']]
assert includes == ['City Module - ' + name for name in [
    'Mining', 'Blacksmithing', 'Engineering', 'Leatherworking',
    'Enchanting', 'Alchemy', 'First Aid', 'Fishing']]

# Installed .skill and .maxskill gate semantics: fresh, progressed, done.
for skill in [1, 79, 150]:
    for target in [50, 100, 150]:
        vm.globals().testSkill = skill
        element = vm.globals().addon.functions.skill('.skill test', '', 'alchemy', str(target), '1')
        step = vm.table_from({'active': True})
        element['step'] = step
        vm.globals().addon.functions.skill(vm.table_from({'element': element}))
        assert bool(step['completed']) == (skill >= target)
for cap in [75, 150, 225]:
    vm.globals().testMax = cap
    element = vm.globals().addon.functions.maxskill('.maxskill test', '', 'alchemy', '150')
    element['step'] = vm.table_from({'active': True})
    vm.globals().addon.functions.maxskill(vm.table_from({'element': element}))
    assert bool(element['completed']) == (cap >= 150)

manifest = (ROOT / 'Guides/GuideList-forever.xml').read_text(encoding='utf-8-sig')
assert manifest.count('Guides/forever/Custom-Forever-City-Professions.lua') == 1
print('PASS: 1 public guide, 8 modules; installed Lua parser, completion objectives, ordered includes,')
print('      current-skill shopping counts, bag counts, fresh/progressed/finished skill gates, rank caps.')
print('Not tested in game: trainer availability, current server recipe tuning, fishing water, Legacy grey skill-ups.')
