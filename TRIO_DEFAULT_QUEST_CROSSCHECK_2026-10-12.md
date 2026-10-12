# Trio vs default: full quest crosscheck through Southshore

Rebuilt from the installed files on 2026-10-12 after the requested pickup removals and delivery additions. This checks authored `.accept` and `.turnin` instructions, rather than character completion flags. The audit script does not modify guides.

## Scope

- Trio: all 20 chapters loaded in `Guides/GuideList-forever.xml`, in XML route order, ending at Gnomeregan & City Deliveries.
- Default: Dwarf/Gnome 1-14, non-Hunter 11-20, 21-23 Stonetalon/Ashenvale, both 22-24 and 23-24 Wetlands alternatives, 24-27 Duskwood/Redridge, 27-29 Wetlands/Hillsbrad, **29-30 Ashenvale**, 29-32 Duskwood, and the Menethil opening of 32-33 Hillsbrad/Arathi (before Southshore).
- Class/race selectors are evaluated for Dwarf Paladin, Dwarf Warrior, Gnome Warrior, and Gnome Warlock. Warrior race alternatives are a union, not extra quests for one Warrior. Other classes and disabled `skip` steps are excluded.
- Optional dungeon, profession, level, and quest-state branches remain included and are shown in the action ledger. Both Wetlands alternatives are included; totals are a comparison envelope, not one mandatory playthrough.
- The shared Hillsbrad/Arathi chapter is checked separately for handoff dependencies; its newly offered quests are not counted as trio omissions.

## Findings that matter

**355 default quest IDs have shared coverage:** 350 have the same explicit pickup/turn-in pattern and 5 gain an action in trio before the handoff. **83 default quest IDs are absent from active trio pickup/turn-in instructions:** 81 have default turn-ins, plus 2 carry-only pickups (1039 and 1059). Plea To The Alliance 634 is accepted but held. Further Instructions 1094 is a conditional recovery step, not a routed pickup.

**The four unresolved trio pickups have been addressed at the user's request.** A New Threat 170 and The State of the Mines 92745 are removed. Unrequited Love 98461 is delivered during the first Wetlands loop. A Friend of the Family 98190 and its follow-up 98191 are delivered during the post-Stockades Stormwind visit.

| Quest | Current coverage | Evidence |
|---|---|---|
| A New Threat 170 | Pickup removed; no active trio instruction | Coldridge chapter |
| The State of the Mines 92745 | Pickup removed; no active trio instruction | Westfall & Redridge chapter |
| Unrequited Love 98461 | Hollee pickup; Tarrel Rockweaver delivery on first Menethil visit | [18-20 Darkshore:310](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-18-20-Darkshore.lua:310>); [25 Wetlands First Loop:91](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-Wetlands-First-Loop.lua:91>) |
| A Friend of the Family 98190 | Stoutfist pickup; Bolvar delivery in the existing Stormwind Keep visit | [27-28 Wetlands Second Loop:338](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:338>); [27-28 Wetlands Second Loop:649](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:649>) |
| A Friend of the Family 98191 | Bolvar pickup; Lord Grayson Shadowbreaker delivery before Thomas in the Cathedral | [27-28 Wetlands Second Loop:650](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:650>); [27-28 Wetlands Second Loop:678](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:678>) |

Destinations and follow-up checked against [Unrequited Love](https://www.wowhead.com/forever/quest=98461/unrequited-love), [A Friend of the Family 98190](https://www.wowhead.com/forever/quest=98190/a-friend-of-the-family), and [A Friend of the Family 98191](https://www.wowhead.com/forever/quest=98191/a-friend-of-the-family).

**Thirteen pickup-only quests remain intentional handoff/later deliveries:** 231, 538, 634, 689, 690, 1179, 1264, 1302, 1718, 1798, 2904, 4738 and 95795. Gnome Improvement 2948 also has a conditional turn-in; it may remain carried if the materials are unavailable.

**The complete Worgen chain is now scheduled:** accept and complete 173 on the third Duskwood pass; deliver 173, accept and complete 221 on the Darkshire/Eastvale visit; deliver 221 and accept 222 at the opening post-Stockades Darkshire visit. Complete both 222 objectives on the southern loop before the ogre cave/Defias strongbox, and finish 222/223 during the final town return. Crime and Punishment 377 is moved to arrival. Menethil remains the hearth destination. No default XP or hearth-cooldown grind is copied.

**A Noble Brew 335/336 is now included:** accept 335 at the third-pass Stormwind visit (level 25+); gather Tear of Tilloa beside Stalvan during the post-Stockades circuit; gather Musquash Root from Wetlands during the final eastern golem circuit; deliver 335 to Zardeth and 336 to Wishock during the Gnomeregan Stormwind visit. Default gets the root during 27-29 after Greenwarden and the flower during 29-32. The root is below Stonewrought Dam in Wetlands, not in Loch Modan. Plant locations follow default; beta spawn availability has not been verified in game. The flower has a manual-skip note if missing, and incomplete brew deliveries skip safely.

**The previously added chains are present:** Stalvan through 98; Morbent Fel through 55; Mor'Ladim through 229/231 (231 held); Eliza 253; Armed and Ready 325; Missing Diplomat through 1250 with 1264 held; James Hyal through 1301 with 1302 held; Sully's Letter 637 and Sara Balloo 683/686 with 689 held; Cleansing the Eye 293; and the Gnomeregan main quests. Tinkmaster Overspark 2923 remains absent, although its destination quest Save Techbot's Brain 2922 is included directly.

**The largest geographic omission is the later default Ashenvale circuit.** Trio completes its earlier Ashenvale visit but omits 22 of the turn-in IDs appearing in default 29-30: 1011, 1016, 1021, 1022, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1035, 1037, 1038, 1045, 1046, 1055, 1057, 1140 and 4581. Its two later carryovers, The Barrens Port 1039 and Reclaiming the Charred Vale 1059, are also absent.

**Warlock class coverage differs:** Devourer of Souls 1716, Heartswood 1738, The Binding 1739, What Is Love? 65602, The Binding 65603 and You Have Served Us Well 397 have default instructions but no trio instructions. The default explicitly uses this chain for the Succubus/Incubus; trio's Voidwalker Binding 1689 is a different quest. The level-30 Seeking Strahad and Menara referrals are included.

**Other notable default omissions:** the early STV quests 185/190/215/583; the Stonetalon chain; Bashal'Aran and Buzzbox chains; Redridge fish/murloc quests; and the starter mail/class-scroll quests. Optional WC quests and Cooking/ingredient quests are included in the omission count, so this is not a count of required quests for each player. Apprentice's Duties 471 and Harvesting the Harvesters 92909 are deliberately disabled in trio.

## Hillsbrad/Arathi handoff

- **Plea To The Alliance 634 has no delivery in shared 32-33.** Trio holds it, but default delivered it during 27-29. It needs an explicit Captain Nials turn-in during the first Refuge Pointe visit, or it remains in the log.
- **Refuge Pointe flight path is not obtained by trio.** Shared 32-33 tells the party to fly there from Southshore. The first trip requires ground travel and flight-path pickup unless already unlocked independently.
- **The Menethil opening is covered:** 1301/1302 and Missing Diplomat 1248/1249/1250/1264 are already handled by trio before its hearth to Southshore. Their shared Menethil steps have zone skips. The optional Third Fleet step lacks that zone skip, but trio already turns in 288.
- **City prerequisites are present:** Southshore 538 (conditional on the history book), A King's Tribute 689, Malin's Request 690, Brassbolts 1179, Warrior 1718 and Warlock 1798/4738. Shared Hillsbrad/Arathi supplies its own local quest pickups.
- **Later Ratchet travel still differs:** shared 33-34 assumes the Warlock has its flight path. Trio's closing note correctly tells the Warlock to travel with the party on the first visit and unlock it.
- **An Old History Book is conditional, not guaranteed.** Trio now offers an optional drop objective while completing the southern worgen kills, followed by an explicit item-start/turn-in at Milton during the final city visit. It does not require extra grinding until the book drops. Southshore 538 remains conditional on receiving that drop.

## Validation and interpretation

- Compared every active pickup/turn-in in the scope and retained source lines and gates in the CSV. Signed quest IDs are normalized: `.turnin -214`, `-1198`, `-3765` and similar forms are valid optional turn-ins, not absent quests. This follows `functions.lua` handling of negative IDs.
- No additional class/race-specific missing turn-in was found among quest IDs that both routes turn in, across the four selected character profiles.
- A/T presence establishes authored coverage, not that the quest is currently available or completed on the server. Level/quest-state/optional conditions are not simulated.
- The older gap report is superseded for this question: it omitted 29-30 Ashenvale, and some older narrative sections still describe chains as absent after they were integrated.

## Remaining omissions: suggested review order

These are review priorities, not authorization to add every omitted quest. Worgen in the Woods and A Noble Brew now have full authored coverage.

| Priority | Omission | Route implications |
|---|---|---|
| 1 | Tinkmaster Overspark 2923 | Small Ironforge referral before the already included Save Techbot's Brain 2922. |
| 2 | Warlock 1716/1738/1739/65602/65603 and 397 | Class progression is absent. Requires routing the level-20 chain through the Barrens and Ashenvale, not merely adding a final city turn-in. |
| 3 | Later Ashenvale circuit and Stonetalon | Largest route-expansion choice. Keep this separate from small additions along the existing trio route. |
| 3 | Earlier Redridge and Darkshore omissions | Review level limits and opportunity during existing passes. Many are replacements for the trio's changed route rather than broken continuations. |
| Optional | Cooking, Wailing Caverns, starter deliveries, deliberately disabled quests | Keep conditions visible; these are not mandatory party gaps. |

## Counts

| Coverage category | Unique quest IDs |
|---|---:|
| Same pickup/turn-in coverage | 350 |
| Trio addition | 102 |
| Default turn-in missing in trio | 81 |
| Shared quest; trio adds action before handoff | 5 |
| Trio accepts; default turn-in deferred/missing | 1 |
| Default pickup missing in trio | 2 |
| Default conditional recovery only | 1 |

Default: 440 IDs; trio: 458 IDs; union: 542 IDs.

## Default differences

| Quest ID | Quest | Default A/T | Trio A/T | Finding | Default evidence | Trio evidence |
|---:|---|---|---|---|---|---|
| 90 | Seasoned Wolf Kabobs | A/T | -/- | Default turn-in missing in trio | [24-27 Duskwood/Redridge:329](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:329>); [24-27 Duskwood/Redridge:330](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:330>) |  |
| 92 | Redridge Goulash | A/T | -/- | Default turn-in missing in trio | [19-20 Redridge:4433](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:4433>); [19-20 Redridge:4683](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:4683>) |  |
| 122 | Underbelly Scales | A/T | -/- | Default turn-in missing in trio | [19-20 Redridge:5215](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:5215>); [19-20 Redridge:5319](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:5319>) |  |
| 127 | Selling Fish | A/T | -/- | Default turn-in missing in trio | [19-20 Redridge:4406](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:4406>); [24-27 Duskwood/Redridge:810](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:810>); [19-20 Redridge:4664](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:4664>); [24-27 Duskwood/Redridge:857](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:857>) |  |
| 150 | Murloc Poachers | A/T | -/- | Default turn-in missing in trio | [19-20 Redridge:4665](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:4665>); [24-27 Duskwood/Redridge:811](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:811>); [19-20 Redridge:4666](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:4666>); [24-27 Duskwood/Redridge:864](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:864>) |  |
| 179 | Dwarven Outfitters | A/T | -/- | Default turn-in missing in trio | [1-5 Coldridge Valley:28](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:28>); [1-5 Coldridge Valley:143](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:143>) |  |
| 185 | Tiger Mastery | A/T | -/- | Default turn-in missing in trio | [29-32 Duskwood:759](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-32-Duskwood.lua:759>); [29-32 Duskwood:795](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-32-Duskwood.lua:795>) |  |
| 190 | Panther Mastery | A/T | -/- | Default turn-in missing in trio | [29-32 Duskwood:762](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-32-Duskwood.lua:762>); [29-32 Duskwood:798](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-32-Duskwood.lua:798>) |  |
| 215 | Jungle Secrets | A/T | -/- | Default turn-in missing in trio | [29-32 Duskwood:744](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-32-Duskwood.lua:744>); [29-32 Duskwood:806](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-32-Duskwood.lua:806>) |  |
| 233 | Coldridge Valley Mail Delivery | A/T | -/- | Default turn-in missing in trio | [1-5 Coldridge Valley:144](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:144>); [1-5 Coldridge Valley:234](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:234>) |  |
| 234 | Coldridge Valley Mail Delivery | A/T | -/- | Default turn-in missing in trio | [1-5 Coldridge Valley:236](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:236>); [1-5 Coldridge Valley:282](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:282>) |  |
| 245 | Eight-Legged Menaces | A/T | -/- | Default turn-in missing in trio | [24-27 Duskwood/Redridge:454](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:454>); [24-27 Duskwood/Redridge:917](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:917>) |  |
| 397 | You Have Served Us Well | A/T | -/- | Default turn-in missing in trio | [29-32 Duskwood:1036](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-32-Duskwood.lua:1036>); [29-32 Duskwood:1038](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-32-Duskwood.lua:1038>) |  |
| 416 | Rat Catching | A/T | -/- | Default turn-in missing in trio | [5-11 Dun Morogh:2087](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:2087>); [12-14 Loch Modan (Dwarf/Gnome):3876](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:3876>) |  |
| 469 | Daily Delivery | A/T | -/- | Default turn-in missing in trio | [22-24 Wetlands:291](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__22-24-Wetlands.lua:291>); [23-24 Wetlands:187](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__23-24-Wetlands.lua:187>); [22-24 Wetlands:561](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__22-24-Wetlands.lua:561>); [23-24 Wetlands:360](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__23-24-Wetlands.lua:360>); [27-29 Wetlands/Hillsbrad:200](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__27-29-Wetlands-Hillsbrad.lua:200>) |  |
| 471 | Apprentice's Duties | A/T | -/- | Default turn-in missing in trio | [27-29 Wetlands/Hillsbrad:202](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__27-29-Wetlands-Hillsbrad.lua:202>); [27-29 Wetlands/Hillsbrad:936](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__27-29-Wetlands-Hillsbrad.lua:936>) |  |
| 583 | Welcome to the Jungle | A/T | -/- | Default turn-in missing in trio | [29-32 Duskwood:750](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-32-Duskwood.lua:750>); [29-32 Duskwood:753](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-32-Duskwood.lua:753>) |  |
| 634 | Plea To The Alliance | A/T | A/- | Trio accepts; default turn-in deferred/missing | [27-29 Wetlands/Hillsbrad:820](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__27-29-Wetlands-Hillsbrad.lua:820>); [27-29 Wetlands/Hillsbrad:830](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__27-29-Wetlands-Hillsbrad.lua:830>) | [30 Wetlands Final Loop & Excavation Site:289](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:289>) |
| 954 | Bashal'Aran | A/T | -/- | Default turn-in missing in trio | [14-16 Darkshore:1257](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:1257>); [14-16 Darkshore:1391](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:1391>) |  |
| 955 | Bashal'Aran | A/T | -/- | Default turn-in missing in trio | [14-16 Darkshore:1392](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:1392>); [14-16 Darkshore:1437](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:1437>) |  |
| 956 | Bashal'Aran | A/T | -/- | Default turn-in missing in trio | [14-16 Darkshore:1438](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:1438>); [14-16 Darkshore:1474](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:1474>) |  |
| 957 | Bashal'Aran | A/T | -/- | Default turn-in missing in trio | [14-16 Darkshore:1475](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:1475>); [14-16 Darkshore:2378](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:2378>) |  |
| 958 | Tools of the Highborne | A/T | -/- | Default turn-in missing in trio | [14-16 Darkshore:1258](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:1258>); [14-16 Darkshore:2174](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:2174>) |  |
| 959 | Trouble at the Docks | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:413](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:413>); [21-23 Stonetalon/Ashenvale:546](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:546>) |  |
| 968 | The Powers Below | A/T | -/- | Default turn-in missing in trio | [16-19 Darkshore:3247](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:3247>); [20-21 Darkshore/Ashenvale:6100](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:6100>); [22-24 Wetlands:841](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__22-24-Wetlands.lua:841>); [23-24 Wetlands:379](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__23-24-Wetlands.lua:379>); [22-24 Wetlands:851](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__22-24-Wetlands.lua:851>); [23-24 Wetlands:422](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__23-24-Wetlands.lua:422>) |  |
| 983 | Buzzbox 827 | A/T | -/- | Default turn-in missing in trio | [14-16 Darkshore:804](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:804>); [14-16 Darkshore:1020](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:1020>) |  |
| 1001 | Buzzbox 411 | A/T | -/- | Default turn-in missing in trio | [14-16 Darkshore:1021](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:1021>); [14-16 Darkshore:1351](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:1351>) |  |
| 1002 | Buzzbox 323 | A/T | -/- | Default turn-in missing in trio | [14-16 Darkshore:1352](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:1352>); [14-16 Darkshore:2447](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:2447>); [16-19 Darkshore:3601](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:3601>) |  |
| 1003 | Buzzbox 525 | A/T | -/- | Default turn-in missing in trio | [14-16 Darkshore:2448](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:2448>); [16-19 Darkshore:3602](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:3602>); [16-19 Darkshore:3129](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:3129>); [20-21 Darkshore/Ashenvale:6212](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:6212>) |  |
| 1011 | Forsaken Diseases | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:246](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:246>); [29-30 Ashenvale:379](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:379>) |  |
| 1016 | Elemental Bracers | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:1029](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:1029>); [29-30 Ashenvale:303](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:303>); [21-23 Stonetalon/Ashenvale:1056](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:1056>); [29-30 Ashenvale:322](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:322>) |  |
| 1021 | Vile Satyr! Dryads in Danger! | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:168](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:168>); [29-30 Ashenvale:231](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:231>) |  |
| 1022 | The Howling Vale | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:162](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:162>); [29-30 Ashenvale:258](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:258>) |  |
| 1024 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:182](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:182>); [29-30 Ashenvale:194](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:194>) |  |
| 1025 | An Aggressive Defense | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:216](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:216>); [29-30 Ashenvale:183](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:183>); [21-23 Stonetalon/Ashenvale:1150](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:1150>); [29-30 Ashenvale:443](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:443>) |  |
| 1026 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:196](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:196>); [29-30 Ashenvale:272](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:272>) |  |
| 1027 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:274](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:274>); [29-30 Ashenvale:412](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:412>) |  |
| 1028 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:414](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:414>); [29-30 Ashenvale:424](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:424>) |  |
| 1029 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:432](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:432>); [29-30 Ashenvale:444](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:444>) |  |
| 1030 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:446](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:446>); [29-30 Ashenvale:463](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:463>) |  |
| 1031 | The Branch of Cenarius | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:233](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:233>); [29-30 Ashenvale:265](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:265>) |  |
| 1032 | Satyr Slaying! | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:267](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:267>); [29-30 Ashenvale:519](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:519>) |  |
| 1035 | Fallen Sky Lake | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:189](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:189>); [29-30 Ashenvale:438](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:438>) |  |
| 1037 | Velinde Starsong | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:260](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:260>); [29-30 Ashenvale:550](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:550>) |  |
| 1038 | Velinde's Effects | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:552](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:552>); [29-30 Ashenvale:564](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:564>) |  |
| 1039 | The Barrens Port | A/- | -/- | Default pickup missing in trio | [29-30 Ashenvale:566](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:566>) |  |
| 1045 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:464](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:464>); [29-30 Ashenvale:497](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:497>) |  |
| 1046 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:498](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:498>); [29-30 Ashenvale:511](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:511>) |  |
| 1055 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:425](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:425>); [29-30 Ashenvale:430](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:430>) |  |
| 1056 | Journey to Stonetalon Peak | A/T | -/- | Default turn-in missing in trio | [20-21 Darkshore/Ashenvale:6403](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:6403>); [21-23 Stonetalon/Ashenvale:803](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:803>) |  |
| 1057 | Reclaiming the Charred Vale | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:53](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:53>); [29-30 Ashenvale:100](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:100>) |  |
| 1059 | Reclaiming the Charred Vale | A/- | -/- | Default pickup missing in trio | [29-30 Ashenvale:102](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:102>) |  |
| 1070 | On Guard in Stonetalon | A/T | -/- | Default turn-in missing in trio | [20-21 Darkshore/Ashenvale:6398](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:6398>); [21-23 Stonetalon/Ashenvale:726](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:726>) |  |
| 1071 | A Gnome's Respite | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:734](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:734>); [21-23 Stonetalon/Ashenvale:780](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:780>) |  |
| 1072 | An Old Colleague | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:781](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:781>); [23-24 Wetlands:439](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__23-24-Wetlands.lua:439>) |  |
| 1073 | Ineptitude + Chemicals = Fun | A/T | -/- | Default turn-in missing in trio | [23-24 Wetlands:446](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__23-24-Wetlands.lua:446>); [23-24 Wetlands:447](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__23-24-Wetlands.lua:447>) |  |
| 1075 | A Scroll from Mauren | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:782](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:782>); [24-27 Duskwood/Redridge:136](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:136>) |  |
| 1076 | Devils in Westfall | A/T | -/- | Default turn-in missing in trio | [24-27 Duskwood/Redridge:144](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:144>); [24-27 Duskwood/Redridge:1003](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:1003>) |  |
| 1078 | Retrieval for Mauren | A/T | -/- | Default turn-in missing in trio | [24-27 Duskwood/Redridge:997](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:997>); [29-32 Duskwood:938](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-32-Duskwood.lua:938>) |  |
| 1085 | On Guard in Stonetalon | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:727](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:727>); [21-23 Stonetalon/Ashenvale:733](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:733>) |  |
| 1093 | Super Reaper 6000 | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:740](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:740>); [21-23 Stonetalon/Ashenvale:773](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:773>) |  |
| 1094 | Further Instructions | -/T | -/- | Default conditional recovery only | [21-23 Stonetalon/Ashenvale:870](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:870>) |  |
| 1134 | Pridewings of Stonetalon | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:233](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:233>); [21-23 Stonetalon/Ashenvale:994](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:994>) |  |
| 1140 | The Tower of Althalaxx | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:175](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:175>); [29-30 Ashenvale:525](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:525>) |  |
| 1486 | Deviate Hides | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:437](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:437>); [21-23 Stonetalon/Ashenvale:575](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:575>) |  |
| 1487 | Deviate Eradication | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:440](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:440>); [21-23 Stonetalon/Ashenvale:578](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:578>) |  |
| 1716 | Devourer of Souls | A/T | -/- | Default turn-in missing in trio | [19-20 Redridge:4918](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:4918>); [21-23 Stonetalon/Ashenvale:419](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:419>) |  |
| 1738 | Heartswood | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:421](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:421>); [24-27 Duskwood/Redridge:72](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:72>) |  |
| 1739 | The Binding | A/T | -/- | Default turn-in missing in trio | [24-27 Duskwood/Redridge:74](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:74>); [24-27 Duskwood/Redridge:130](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:130>) |  |
| 2923 | Tinkmaster Overspark | A/T | -/- | Default turn-in missing in trio | [27-29 Wetlands/Hillsbrad:107](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__27-29-Wetlands-Hillsbrad.lua:107>); [27-29 Wetlands/Hillsbrad:138](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__27-29-Wetlands-Hillsbrad.lua:138>); [29-32 Duskwood:1062](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-32-Duskwood.lua:1062>) |  |
| 3106 | Simple Rune | A/T | -/- | Default turn-in missing in trio | [1-5 Coldridge Valley:145](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:145>); [1-5 Coldridge Valley:545](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:545>) |  |
| 3107 | Consecrated Rune | A/T | -/- | Default turn-in missing in trio | [1-5 Coldridge Valley:146](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:146>); [1-5 Coldridge Valley:355](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:355>) |  |
| 3112 | Simple Memorandum | A/T | -/- | Default turn-in missing in trio | [1-5 Coldridge Valley:150](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:150>); [1-5 Coldridge Valley:546](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:546>) |  |
| 3115 | Tainted Memorandum | A/T | -/- | Default turn-in missing in trio | [1-5 Coldridge Valley:153](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:153>); [1-5 Coldridge Valley:225](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:225>) |  |
| 4581 | Kayneth Stillwind | A/T | -/- | Default turn-in missing in trio | [29-30 Ashenvale:114](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:114>); [29-30 Ashenvale:244](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__29-30-Ashenvale.lua:244>) |  |
| 5545 | A Bundle of Trouble | A/T | -/- | Default turn-in missing in trio | [11-12 Elwynn (Dwarf/Gnome):2958](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:2958>); [11-12 Elwynn (Dwarf/Gnome):3003](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:3003>) |  |
| 6981 | The Glowing Shard | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:512](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:512>); [21-23 Stonetalon/Ashenvale:562](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:562>) |  |
| 65602 | What Is Love? | A/T | -/- | Default turn-in missing in trio | [21-23 Stonetalon/Ashenvale:422](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__21-23-Stonetalon-Ashenvale.lua:422>); [24-27 Duskwood/Redridge:73](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:73>) |  |
| 65603 | The Binding | A/T | -/- | Default turn-in missing in trio | [24-27 Duskwood/Redridge:75](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:75>); [24-27 Duskwood/Redridge:131](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__24-27-Duskwood-Redridge.lua:131>) |  |
| 86667 | Snowbound | A/T | -/- | Default turn-in missing in trio | [12-14 Loch Modan (Dwarf/Gnome):3514](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:3514>); [12-14 Loch Modan (Dwarf/Gnome):3609](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:3609>) |  |
| 92909 | Harvesting the Harvesters | A/T | -/- | Default turn-in missing in trio | [13-15 Westfall:336](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:336>); [13-15 Westfall:337](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:337>) |  |
| 95214 | Stolen Blasting Powder | A/T | -/- | Default turn-in missing in trio | [5-11 Dun Morogh:2009](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:2009>); [5-11 Dun Morogh:2033](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:2033>) |  |
| 95999 | WANTED: Incinerator Gar'im | A/T | -/- | Default turn-in missing in trio | [19-20 Redridge:4396](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:4396>); [19-20 Redridge:4659](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:4659>) |  |
| 98387 | Blackrock Blockade | A/T | -/- | Default turn-in missing in trio | [19-20 Redridge:4380](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:4380>); [19-20 Redridge:4645](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-11-20.lua:4645>) |  |
| 99158 | Dawn in the Mountains | A/T | -/- | Default turn-in missing in trio | [5-11 Dun Morogh:754](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:754>); [5-11 Dun Morogh:1772](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Alliance-1-14_DwarfGnome.lua:1772>) |  |

## Trio additions

| Quest ID | Quest | Trio A/T | Trio evidence |
|---:|---|---|---|
| 13 | The People's Militia | A/T | [16-18 Westfall & Redridge:701](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:701>); [21 Duskwood & Defias Escort:142](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-Duskwood-Defias-Escort.lua:142>) |
| 62 | The Fargodeep Mine | A/T | [11-12 Elwynn Forest:58](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:58>); [11-12 Elwynn Forest:199](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:199>) |
| 76 | The Jasperlode Mine | A/T | [11-12 Elwynn Forest:200](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:200>); [11-12 Elwynn Forest:490](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:490>) |
| 84 | Back to Billy | A/T | [11-12 Elwynn Forest:153](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:153>); [11-12 Elwynn Forest:166](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:166>) |
| 85 | Lost Necklace | A/T | [11-12 Elwynn Forest:90](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:90>); [11-12 Elwynn Forest:119](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:119>) |
| 86 | Pie for Billy | A/T | [11-12 Elwynn Forest:120](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:120>); [11-12 Elwynn Forest:152](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:152>) |
| 87 | Goldtooth | A/T | [11-12 Elwynn Forest:167](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:167>); [11-12 Elwynn Forest:555](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:555>) |
| 106 | Young Lovers | A/T | [11-12 Elwynn Forest:126](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:126>); [11-12 Elwynn Forest:143](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:143>) |
| 107 | Note to William | A/T | [11-12 Elwynn Forest:160](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:160>); [11-12 Elwynn Forest:210](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:210>) |
| 111 | Speak with Gramma | A/T | [11-12 Elwynn Forest:144](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:144>); [11-12 Elwynn Forest:159](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:159>) |
| 112 | Collecting Kelp | A/T | [11-12 Elwynn Forest:211](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:211>); [11-12 Elwynn Forest:505](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:505>) |
| 114 | The Escape | A/T | [11-12 Elwynn Forest:507](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:507>); [11-12 Elwynn Forest:543](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:543>) |
| 132 | The Defias Brotherhood | A/T | [16-18 Westfall & Redridge:56](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:56>); [16-18 Westfall & Redridge:177](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:177>) |
| 135 | The Defias Brotherhood | A/T | [16-18 Westfall & Redridge:178](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:178>); [16-18 Westfall & Redridge:235](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:235>) |
| 141 | The Defias Brotherhood | A/T | [16-18 Westfall & Redridge:236](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:236>); [16-18 Westfall & Redridge:333](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:333>) |
| 142 | The Defias Brotherhood | A/T | [16-18 Westfall & Redridge:334](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:334>); [16-18 Westfall & Redridge:700](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:700>) |
| 143 | Messenger to Westfall | A/T | [20-21 Redridge:108](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-20-21-Redridge.lua:108>); [21 Duskwood & Defias Escort:60](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-Duskwood-Defias-Escort.lua:60>) |
| 144 | Messenger to Westfall | A/T | [21 Duskwood & Defias Escort:61](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-Duskwood-Defias-Escort.lua:61>); [21-22 Ruins of Lordaeron:94](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-22-Ruins-of-Lordaeron.lua:94>) |
| 145 | Messenger to Darkshire | A/T | [21-22 Ruins of Lordaeron:95](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-22-Ruins-of-Lordaeron.lua:95>); [22 Duskwood Return:59](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-Duskwood-Return.lua:59>) |
| 146 | Messenger to Darkshire | A/T | [22 Duskwood Return:60](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-Duskwood-Return.lua:60>); [25-27 Redridge Return:56](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-27-Redridge-Return.lua:56>) |
| 155 | The Defias Brotherhood | A/T | [21 Duskwood & Defias Escort:109](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-Duskwood-Defias-Escort.lua:109>); [21 Duskwood & Defias Escort:143](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-Duskwood-Defias-Escort.lua:143>) |
| 166 | The Defias Brotherhood | A/T | [21 Duskwood & Defias Escort:144](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-Duskwood-Defias-Escort.lua:144>); [22-24 Deadmines:115](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:115>) |
| 167 | Oh Brother. . . | A/T | [16-18 Westfall & Redridge:242](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:242>); [22-24 Deadmines:176](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:176>) |
| 168 | Collecting Memories | A/T | [16-18 Westfall & Redridge:243](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:243>); [22-24 Deadmines:177](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:177>) |
| 178 | Theocritus' Retrieval | A/T | [25-27 Redridge Return:263](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-27-Redridge-Return.lua:263>); [27 Darkshire, Eastvale & Tower Turn-ins:233](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-Darkshire-Eastvale-Tower-Turnins.lua:233>) |
| 214 | Red Silk Bandanas | A/T | [21 Duskwood & Defias Escort:148](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-Duskwood-Defias-Escort.lua:148>); [22-24 Deadmines:118](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:118>) |
| 237 | In Defense of the King's Lands | A/T | [12-15 Loch Modan:58](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:58>); [12-15 Loch Modan:110](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:110>) |
| 239 | Westbrook Garrison Needs Help! | A/T | [11-12 Elwynn Forest:491](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:491>); [11-12 Elwynn Forest:561](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:561>) |
| 249 | Morganth | A/T | [25-27 Redridge Return:204](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-27-Redridge-Return.lua:204>); [27 Darkshire, Eastvale & Tower Turn-ins:226](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-Darkshire-Eastvale-Tower-Turnins.lua:226>) |
| 257 | A Hunter's Boast | A/T | [12-15 Loch Modan:178](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:178>); [12-15 Loch Modan:202](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:202>) |
| 258 | A Hunter's Challenge | A/T | [12-15 Loch Modan:203](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:203>); [12-15 Loch Modan:240](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:240>) |
| 298 | Excavation Progress Report | A/T | [12-15 Loch Modan:168](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:168>); [12-15 Loch Modan:256](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:256>) |
| 301 | Report to Ironforge | A/T | [12-15 Loch Modan:257](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:257>); [12-15 Loch Modan:357](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:357>) |
| 373 | The Unsent Letter | A/T | [22-24 Deadmines:91](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:91>); [22-24 Deadmines:162](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:162>) |
| 378 | The Fury Runs Deep | A/T | [27-28 Wetlands Second Loop:225](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:225>); [30 Wetlands Final Loop & Excavation Site:221](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:221>) |
| 389 | Bazil Thredd | A/T | [22-24 Deadmines:171](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:171>); [22-24 Deadmines:188](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:188>) |
| 436 | Ironband's Excavation | A/T | [12-15 Loch Modan:27](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:27>); [12-15 Loch Modan:162](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:162>) |
| 526 | Lightforge Ingots | A/T | [27-28 Wetlands Second Loop:373](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:373>); [27-28 Wetlands Second Loop:380](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:380>) |
| 971 | Knowledge in the Deeps | A/T | [12-15 Loch Modan:384](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:384>); [25 Blackfathom Deeps:171](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-28-30-Blackfathom-Deeps.lua:171>); [30-32 Gnomeregan & City Deliveries:88](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-32-Gnomeregan-City-Deliveries.lua:88>) |
| 990 | Trek to Ashenvale | A/T | [18-20 Darkshore:335](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-18-20-Darkshore.lua:335>); [18-20 Darkshore:1191](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-18-20-Darkshore.lua:1191>) |
| 1198 | Search of Thaelrid | A/T | [18-20 Darkshore:1047](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-18-20-Darkshore.lua:1047>); [25 Blackfathom Deeps:77](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-28-30-Blackfathom-Deeps.lua:77>) |
| 1199 | Twilight Falls | A/T | [18-20 Darkshore:1054](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-18-20-Darkshore.lua:1054>); [25 Blackfathom Deeps:120](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-28-30-Blackfathom-Deeps.lua:120>) |
| 1200 | Blackfathom Villainy | A/T | [25 Blackfathom Deeps:78](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-28-30-Blackfathom-Deeps.lua:78>); [25 Blackfathom Deeps:126](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-28-30-Blackfathom-Deeps.lua:126>) |
| 1275 | Researching the Corruption | A/T | [25 Blackfathom Deeps:25](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-28-30-Blackfathom-Deeps.lua:25>); [25 Blackfathom Deeps:150](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-28-30-Blackfathom-Deeps.lua:150>) |
| 1666 | Marshal Haggard | A/T | [5-11 Dun Morogh:1742](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-5-11-Dun-Morogh.lua:1742>); [11-12 Elwynn Forest:311](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:311>) |
| 1667 | Dead-tooth Jack | A/T | [11-12 Elwynn Forest:312](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:312>); [11-12 Elwynn Forest:357](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:357>) |
| 2040 | Underground Assault | A/T | [16-18 Westfall & Redridge:249](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:249>); [22-24 Deadmines:180](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:180>) |
| 79362 | Grant's Shield | A/T | [22 Duskwood Return:132](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-Duskwood-Return.lua:132>); [24-25 Duskwood Third Pass:112](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-24-25-Duskwood-Third-Pass.lua:112>); [22-24 Deadmines:299](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:299>); [27 Darkshire, Eastvale & Tower Turn-ins:78](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-Darkshire-Eastvale-Tower-Turnins.lua:78>) |
| 86585 | Banner of the Fallen | A/T | [12-15 Loch Modan:80](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:80>); [12-15 Loch Modan:116](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:116>) |
| 86758 | Twisting the Knife | A/T | [12-15 Loch Modan:209](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:209>); [12-15 Loch Modan:246](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:246>) |
| 87318 | Hearts of the Lost | A/T | [30 Wetlands Final Loop & Excavation Site:228](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:228>); [30 Wetlands Final Loop & Excavation Site:233](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:233>) |
| 87491 | Spark of Freedom | A/T | [27-28 Wetlands Second Loop:147](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:147>); [27-28 Wetlands Second Loop:157](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:157>) |
| 87760 | Holy Diver | A/T | [18-20 Darkshore:660](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-18-20-Darkshore.lua:660>); [18-20 Darkshore:1000](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-18-20-Darkshore.lua:1000>) |
| 88756 | Bring Back a Bang | A/T | [27-28 Wetlands Second Loop:121](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:121>); [27-28 Wetlands Second Loop:219](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:219>) |
| 88757 | Accessories of the Lost | A/T | [30 Wetlands Final Loop & Excavation Site:234](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:234>); [30 Wetlands Final Loop & Excavation Site:247](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:247>) |
| 88758 | Sentiments of the Lost | A/T | [30 Wetlands Final Loop & Excavation Site:248](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:248>); [30 Wetlands Final Loop & Excavation Site:254](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:254>) |
| 91736 | Applejack Still three times | -/T | [11-12 Elwynn Forest:34](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:34>) |
| 91738 | An Apple Treat | A/T | [11-12 Elwynn Forest:574](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:574>); [11-12 Elwynn Forest:575](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:575>) |
| 92415 | Remember That I Love You | A/T | [21-22 Ruins of Lordaeron:54](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-22-Ruins-of-Lordaeron.lua:54>); [22-24 Deadmines:149](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:149>) |
| 95161 | Remember That I Love You | A/T | [22-24 Deadmines:150](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:150>); [22-24 Deadmines:274](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:274>) |
| 95189 | Crest of Lordaeron | A/T | [21-22 Ruins of Lordaeron:60](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-22-Ruins-of-Lordaeron.lua:60>); [22-24 Deadmines:143](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:143>) |
| 95195 | Bloodied Insignia | A/T | [21-22 Ruins of Lordaeron:44](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-22-Ruins-of-Lordaeron.lua:44>); [22-24 Deadmines:138](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:138>) |
| 95250 | Abominable Creatures | A/T | [21-22 Ruins of Lordaeron:38](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-22-Ruins-of-Lordaeron.lua:38>); [21-22 Ruins of Lordaeron:69](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-21-22-Ruins-of-Lordaeron.lua:69>) |
| 95646 | Horrors in the Highland | A/T | [30 Wetlands Final Loop & Excavation Site:84](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:84>); [30 Wetlands Final Loop & Excavation Site:202](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:202>) |
| 95647 | Lost in the Thicket Things | A/T | [25 Wetlands First Loop:46](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-Wetlands-First-Loop.lua:46>); [30 Wetlands Final Loop & Excavation Site:164](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:164>) |
| 95737 | Seeking Caitlin | A/T | [19-20 Ashenvale:261](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-19-20-Ashenvale.lua:261>); [25 Wetlands First Loop:39](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-Wetlands-First-Loop.lua:39>) |
| 95772 | Songblade Search | A/T | [25-27 Redridge Return:70](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-27-Redridge-Return.lua:70>); [30 Wetlands Final Loop & Excavation Site:170](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:170>) |
| 95795 | Fallen in the Fen | A/- | [30 Wetlands Final Loop & Excavation Site:171](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:171>) |
| 95809 | Heartwoven | A/T | [30 Wetlands Final Loop & Excavation Site:165](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:165>); [30 Wetlands Final Loop & Excavation Site:328](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:328>) |
| 95810 | Lost Relic Carry | A/T | [30 Wetlands Final Loop & Excavation Site:176](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:176>); [30 Wetlands Final Loop & Excavation Site:185](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:185>) |
| 96050 | Camping 101: Fishing to learn Fish Bowl | A/T | [5-11 Dun Morogh:125](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-5-11-Dun-Morogh.lua:125>); [5-11 Dun Morogh:743](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-5-11-Dun-Morogh.lua:743>) |
| 96056 | Camping 101: Skinning | A/T | [5-11 Dun Morogh:124](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-5-11-Dun-Morogh.lua:124>); [5-11 Dun Morogh:1375](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-5-11-Dun-Morogh.lua:1375>) |
| 96139 | The Valor Family | A/T | [22 Duskwood Return:77](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-Duskwood-Return.lua:77>); [22-24 Deadmines:292](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-22-24-Deadmines.lua:292>) |
| 96394 | The Restless Dead | A/T | [12-15 Loch Modan:402](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:402>); [12-15 Loch Modan:461](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:461>) |
| 96395 | An Ancient Grudge | A/T | [12-15 Loch Modan:414](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:414>); [12-15 Loch Modan:424](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:424>) |
| 96403 | Important Heirlooms | A/T | [12-15 Loch Modan:408](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:408>); [12-15 Loch Modan:455](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:455>) |
| 97234 | Reading Room | A/T | [16-18 Westfall & Redridge:752](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:752>); [16-18 Westfall & Redridge:779](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:779>) |
| 97237 | Shelf Picked | A/T | [16-18 Westfall & Redridge:780](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:780>); [16-18 Westfall & Redridge:810](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:810>) |
| 98013 | Swelling Forces | A/T | [18-20 Darkshore:546](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-18-20-Darkshore.lua:546>); [18-20 Darkshore:1081](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-18-20-Darkshore.lua:1081>) |
| 98028 | Baron Marinous | A/T | [18-20 Darkshore:810](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-18-20-Darkshore.lua:810>); [18-20 Darkshore:1075](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-18-20-Darkshore.lua:1075>) |
| 98189 |  | A/T | [27-28 Wetlands Second Loop:330](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:330>); [27-28 Wetlands Second Loop:337](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:337>) |
| 98190 | A Friend of the Family | A/T | [27-28 Wetlands Second Loop:338](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:338>); [27-28 Wetlands Second Loop:649](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:649>) |
| 98191 | A Friend of the Family | A/T | [27-28 Wetlands Second Loop:650](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:650>); [27-28 Wetlands Second Loop:678](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:678>) |
| 98216 | Understanding Our Present | A/T | [25 Wetlands First Loop:307](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-Wetlands-First-Loop.lua:307>); [25 Wetlands First Loop:325](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-Wetlands-First-Loop.lua:325>) |
| 98221 | From the Ashes | A/T | [25 Wetlands First Loop:84](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-Wetlands-First-Loop.lua:84>); [25 Wetlands First Loop:375](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-Wetlands-First-Loop.lua:375>) |
| 98223 | Old Habits | A/T | [27-28 Wetlands Second Loop:277](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:277>); [27-28 Wetlands Second Loop:347](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:347>) |
| 98230 | This Land Was Their Land | A/T | [27-28 Wetlands Second Loop:354](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:354>); [30 Wetlands Final Loop & Excavation Site:62](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:62>) |
| 98245 | Razormaw Needling | A/T | [25 Wetlands First Loop:195](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-Wetlands-First-Loop.lua:195>); [27-28 Wetlands Second Loop:255](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:255>) |
| 98246 | Trying Times | A/T | [25 Wetlands First Loop:196](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-Wetlands-First-Loop.lua:196>); [27-28 Wetlands Second Loop:256](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:256>) |
| 98282 | Alchemical Hazards | A/T | [25 Wetlands First Loop:48](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-Wetlands-First-Loop.lua:48>); [25 Wetlands First Loop:383](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-Wetlands-First-Loop.lua:383>) |
| 98283 | Carnage | A/T | [30 Wetlands Final Loop & Excavation Site:90](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:90>); [30 Wetlands Final Loop & Excavation Site:201](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:201>) |
| 98291 | Death to the Dragonmaw | A/T | [30 Wetlands Final Loop & Excavation Site:63](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:63>); [30 Wetlands Final Loop & Excavation Site:193](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:193>) |
| 98293 | Forced Disarmament | A/T | [30 Wetlands Final Loop & Excavation Site:97](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:97>); [30 Wetlands Final Loop & Excavation Site:334](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:334>) |
| 98297 | Stopping the Cycle | A/T | [30 Wetlands Final Loop & Excavation Site:194](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:194>); [30 Wetlands Final Loop & Excavation Site:214](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:214>) |
| 98310 | Gleaning Our Future | A/T | [25 Wetlands First Loop:326](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-Wetlands-First-Loop.lua:326>); [30 Wetlands Final Loop & Excavation Site:183](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:183>) |
| 98313 | For Further Study | A/T | [30 Wetlands Final Loop & Excavation Site:184](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:184>); [30-32 Gnomeregan & City Deliveries:81](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-32-Gnomeregan-City-Deliveries.lua:81>) |
| 98326 | Frosthowl to Gretta Ganter | A/T | [5-11 Dun Morogh:65](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-5-11-Dun-Morogh.lua:65>); [5-11 Dun Morogh:665](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-5-11-Dun-Morogh.lua:665>) |
| 98386 | Alther's Mill | A/T | [25-27 Redridge Return:49](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-27-Redridge-Return.lua:49>); [25-27 Redridge Return:242](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-27-Redridge-Return.lua:242>) |
| 98423 | The Treaty of Understanding | A/T | [12-15 Loch Modan:447](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:447>); [12-15 Loch Modan:470](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-12-15-Loch-Modan.lua:470>) |
| 98461 | Unrequited Love | A/T | [18-20 Darkshore:310](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-18-20-Darkshore.lua:310>); [25 Wetlands First Loop:91](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-25-Wetlands-First-Loop.lua:91>) |
| 98815 | Highland Hides | A/T | [27-28 Wetlands Second Loop:315](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:315>); [30 Wetlands Final Loop & Excavation Site:322](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:322>) |
| 98824 | Prehistoric Prism | A/T | [30 Wetlands Final Loop & Excavation Site:186](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:186>); [30-32 Gnomeregan & City Deliveries:74](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-32-Gnomeregan-City-Deliveries.lua:74>) |

## Accepted but not turned in by trio

| Quest ID | Quest | Later default turn-in chapter(s) | Trio evidence |
|---:|---|---|---|
| 231 | A Daughter's Love | [34-35 Stranglethorn Vale I:120](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__34-35-Stranglethorn-Vale-I.lua:120>) | [27-28 Wetlands Second Loop:1021](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua:1021>) |
| 538 | Southshore | [32-33 Hillsbrad/Arathi:131](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__32-33-Hillsbrad-Arathi.lua:131>); [39-40 Alterac/Arathi:293](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__39-40-Alterac-Arathi.lua:293>) | [30-32 Gnomeregan & City Deliveries:456](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-32-Gnomeregan-City-Deliveries.lua:456>) |
| 634 | Plea To The Alliance | [27-29 Wetlands/Hillsbrad:830](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__27-29-Wetlands-Hillsbrad.lua:830>) | [30 Wetlands Final Loop & Excavation Site:289](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:289>) |
| 689 | A King's Tribute | [34-35 Stranglethorn Vale I:713](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__34-35-Stranglethorn-Vale-I.lua:713>) | [30-32 Gnomeregan & City Deliveries:61](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-32-Gnomeregan-City-Deliveries.lua:61>) |
| 690 | Malin's Request | [32-33 Hillsbrad/Arathi:487](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__32-33-Hillsbrad-Arathi.lua:487>); [39-40 Alterac/Arathi:43](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__39-40-Alterac-Arathi.lua:43>) | [30-32 Gnomeregan & City Deliveries:406](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-32-Gnomeregan-City-Deliveries.lua:406>) |
| 1179 | The Brassbolts Brothers | [33-34 Thousand Needles:327](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__33-34-Thousand-Needles.lua:327>) | [30-32 Gnomeregan & City Deliveries:68](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-32-Gnomeregan-City-Deliveries.lua:68>) |
| 1264 | The Missing Diplomat | [33-34 Thousand Needles:63](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__33-34-Thousand-Needles.lua:63>) | [30 Wetlands Final Loop & Excavation Site:56](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:56>) |
| 1302 | James Hyal | [33-34 Thousand Needles:56](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__33-34-Thousand-Needles.lua:56>) | [30 Wetlands Final Loop & Excavation Site:22](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:22>) |
| 1718 | The Islander | [33-34 Thousand Needles:578](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__33-34-Thousand-Needles.lua:578>) | [30-32 Gnomeregan & City Deliveries:400](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-32-Gnomeregan-City-Deliveries.lua:400>) |
| 1798 | Seeking Strahad | [33-34 Thousand Needles:644](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__33-34-Thousand-Needles.lua:644>) | [30-32 Gnomeregan & City Deliveries:427](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-32-Gnomeregan-City-Deliveries.lua:427>) |
| 2904 | A Fine Mess | [34-35 Stranglethorn Vale I:46](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__34-35-Stranglethorn-Vale-I.lua:46>) | [30-32 Gnomeregan & City Deliveries:238](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-32-Gnomeregan-City-Deliveries.lua:238>) |
| 4738 | In Search of Menara Voidrender | [33-34 Thousand Needles:638](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__33-34-Thousand-Needles.lua:638>) | [30-32 Gnomeregan & City Deliveries:433](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-32-Gnomeregan-City-Deliveries.lua:433>) |
| 95795 | Fallen in the Fen | No turn-in found in filtered default | [30 Wetlands Final Loop & Excavation Site:171](<C:/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns/RXPGuides/Guides/Forever/Custom-Forever-30-Wetlands-Final-Loop.lua:171>) |

## Every compared quest

A = pickup; T = turn-in. Dashes mean no active authored instruction within the comparison boundary. Every action, condition, and source line is also included in the CSV ledger.

| ID | Quest | Default A/T | Trio A/T | Result |
|---:|---|---|---|---|
| 5 | Jitters' Growling Gut | A/T | A/T | Same pickup/turn-in coverage |
| 9 | The Killing Fields | A/T | A/T | Same pickup/turn-in coverage |
| 12 | The People's Militia | A/T | A/T | Same pickup/turn-in coverage |
| 13 | The People's Militia | -/- | A/T | Trio addition |
| 19 | Tharil'zun | A/T | A/T | Same pickup/turn-in coverage |
| 20 | Blackrock Menace | A/T | A/T | Same pickup/turn-in coverage |
| 22 | Goretusk Liver Pie | A/T | A/T | Same pickup/turn-in coverage |
| 34 | An Unwelcome Guest | A/T | A/T | Same pickup/turn-in coverage |
| 35 | Further Concerns | A/T | A/T | Same pickup/turn-in coverage |
| 36 | Westfall Stew | A/T | A/T | Same pickup/turn-in coverage |
| 37 | Find the Lost Guards | A/T | A/T | Same pickup/turn-in coverage |
| 38 | Westfall Stew | A/T | A/T | Same pickup/turn-in coverage |
| 39 | Deliver Thomas' Report | A/T | A/T | Same pickup/turn-in coverage |
| 40 | A Fishy Peril | A/T | A/T | Same pickup/turn-in coverage |
| 45 | Discover Rolf's Fate | A/T | A/T | Same pickup/turn-in coverage |
| 52 | Protect the Frontier | A/T | A/T | Same pickup/turn-in coverage |
| 55 | Morbent Fel | A/T | A/T | Same pickup/turn-in coverage |
| 56 | The Night Watch | A/T | A/T | Same pickup/turn-in coverage |
| 57 | The Night Watch | A/T | A/T | Same pickup/turn-in coverage |
| 58 | The Night Watch | A/T | A/T | Same pickup/turn-in coverage |
| 62 | The Fargodeep Mine | -/- | A/T | Trio addition |
| 64 | The Forgotten Heirloom | A/T | A/T | Same pickup/turn-in coverage |
| 65 | The Defias Brotherhood | A/T | A/T | Same pickup/turn-in coverage |
| 66 | The Legend of Stalvan | A/T | A/T | Same pickup/turn-in coverage |
| 67 | The Legend of Stalvan | A/T | A/T | Same pickup/turn-in coverage |
| 68 | The Legend of Stalvan | A/T | A/T | Same pickup/turn-in coverage |
| 69 | The Legend of Stalvan | A/T | A/T | Same pickup/turn-in coverage |
| 70 | The Legend of Stalvan | A/T | A/T | Same pickup/turn-in coverage |
| 71 | Report to Thomas | A/T | A/T | Same pickup/turn-in coverage |
| 72 | The Legend of Stalvan | A/T | A/T | Same pickup/turn-in coverage |
| 74 | The Legend of Stalvan | A/T | A/T | Same pickup/turn-in coverage |
| 75 | The Legend of Stalvan | A/T | A/T | Same pickup/turn-in coverage |
| 76 | The Jasperlode Mine | -/- | A/T | Trio addition |
| 78 | The Legend of Stalvan | A/T | A/T | Same pickup/turn-in coverage |
| 79 | The Legend of Stalvan | A/T | A/T | Same pickup/turn-in coverage |
| 80 | The Legend of Stalvan | A/T | A/T | Same pickup/turn-in coverage |
| 84 | Back to Billy | -/- | A/T | Trio addition |
| 85 | Lost Necklace | -/- | A/T | Trio addition |
| 86 | Pie for Billy | -/- | A/T | Trio addition |
| 87 | Goldtooth | -/- | A/T | Trio addition |
| 88 | Princess Must Die! | A/T | A/T | Same pickup/turn-in coverage |
| 89 | The Everstill Bridge | A/T | A/T | Same pickup/turn-in coverage |
| 90 | Seasoned Wolf Kabobs | A/T | -/- | Default turn-in missing in trio |
| 91 | Solomon's Law | A/T | A/T | Same pickup/turn-in coverage |
| 92 | Redridge Goulash | A/T | -/- | Default turn-in missing in trio |
| 93 | Dusky Crab Cakes | A/T | A/T | Same pickup/turn-in coverage |
| 94 | A Watchful Eye | A/T | A/T | Same pickup/turn-in coverage |
| 95 | Sven's Revenge | A/T | A/T | Same pickup/turn-in coverage |
| 97 | The Legend of Stalvan | A/T | A/T | Same pickup/turn-in coverage |
| 98 | The Legend of Stalvan | A/T | A/T | Same pickup/turn-in coverage |
| 101 | The Totem of Infliction | A/T | A/T | Same pickup/turn-in coverage |
| 102 | Patrolling Westfall | A/T | A/T | Same pickup/turn-in coverage |
| 103 | Keeper of the Flame | A/T | A/T | Same pickup/turn-in coverage |
| 104 | The Coastal Menace | A/T | A/T | Same pickup/turn-in coverage |
| 106 | Young Lovers | -/- | A/T | Trio addition |
| 107 | Note to William | -/- | A/T | Trio addition |
| 109 | Report to Gryan Stoutmantle | A/T | A/T | Same pickup/turn-in coverage |
| 111 | Speak with Gramma | -/- | A/T | Trio addition |
| 112 | Collecting Kelp | -/- | A/T | Trio addition |
| 114 | The Escape | -/- | A/T | Trio addition |
| 115 | Shadow Magic | A/T | A/T | Same pickup/turn-in coverage |
| 118 | The Price of Shoes | A/T | A/T | Same pickup/turn-in coverage |
| 119 | Return to Verner | A/T | A/T | Same pickup/turn-in coverage |
| 120 | Messenger to Stormwind | A/T | A/T | Same pickup/turn-in coverage |
| 121 | Messenger to Stormwind | A/T | A/T | Same pickup/turn-in coverage |
| 122 | Underbelly Scales | A/T | -/- | Default turn-in missing in trio |
| 123 | The Collector | A/- | A/T | Shared quest; trio adds action before handoff |
| 124 | A Baying of Gnolls | A/T | A/T | Same pickup/turn-in coverage |
| 125 | The Lost Tools | A/T | A/T | Same pickup/turn-in coverage |
| 126 | Howling in the Hills | A/T | A/T | Same pickup/turn-in coverage |
| 127 | Selling Fish | A/T | -/- | Default turn-in missing in trio |
| 128 | Blackrock Bounty | A/T | A/T | Same pickup/turn-in coverage |
| 129 | A Free Lunch | A/T | A/T | Same pickup/turn-in coverage |
| 130 | Visit the Herbalist | A/T | A/T | Same pickup/turn-in coverage |
| 131 | Delivering Daffodils | A/T | A/T | Same pickup/turn-in coverage |
| 132 | The Defias Brotherhood | -/- | A/T | Trio addition |
| 133 | Ghoulish Effigy | A/T | A/T | Same pickup/turn-in coverage |
| 134 | Ogre Thieves | A/T | A/T | Same pickup/turn-in coverage |
| 135 | The Defias Brotherhood | -/- | A/T | Trio addition |
| 141 | The Defias Brotherhood | -/- | A/T | Trio addition |
| 142 | The Defias Brotherhood | -/- | A/T | Trio addition |
| 143 | Messenger to Westfall | -/- | A/T | Trio addition |
| 144 | Messenger to Westfall | -/- | A/T | Trio addition |
| 145 | Messenger to Darkshire | -/- | A/T | Trio addition |
| 146 | Messenger to Darkshire | -/- | A/T | Trio addition |
| 147 | Manhunt | -/T | A/T | Shared quest; trio adds action before handoff |
| 148 | Supplies from Darkshire | A/T | A/T | Same pickup/turn-in coverage |
| 149 | Ghost Hair Thread | A/T | A/T | Same pickup/turn-in coverage |
| 150 | Murloc Poachers | A/T | -/- | Default turn-in missing in trio |
| 151 | Poor Old Blanchy | A/T | A/T | Same pickup/turn-in coverage |
| 153 | Red Leather Bandanas | A/T | A/T | Same pickup/turn-in coverage |
| 154 | Return the Comb | A/T | A/T | Same pickup/turn-in coverage |
| 155 | The Defias Brotherhood | -/- | A/T | Trio addition |
| 156 | Gather Rot Blossoms | A/T | A/T | Same pickup/turn-in coverage |
| 157 | Deliver the Thread | A/T | A/T | Same pickup/turn-in coverage |
| 158 | Zombie Juice | A/T | A/T | Same pickup/turn-in coverage |
| 159 | Juice Delivery | A/T | A/T | Same pickup/turn-in coverage |
| 160 | Note to the Mayor | A/T | A/T | Same pickup/turn-in coverage |
| 163 | Raven Hill | A/T | A/T | Same pickup/turn-in coverage |
| 164 | Deliveries to Sven | A/T | A/T | Same pickup/turn-in coverage |
| 165 | The Hermit | A/T | A/T | Same pickup/turn-in coverage |
| 166 | The Defias Brotherhood | -/- | A/T | Trio addition |
| 167 | Oh Brother. . . | -/- | A/T | Trio addition |
| 168 | Collecting Memories | -/- | A/T | Trio addition |
| 169 | Wanted: Gath'Ilzogg | A/T | A/T | Same pickup/turn-in coverage |
| 173 | Worgen in the Woods | A/T | A/T | Same pickup/turn-in coverage |
| 174 | Look To The Stars | A/T | A/T | Same pickup/turn-in coverage |
| 175 | Look To The Stars | A/T | A/T | Same pickup/turn-in coverage |
| 176 | Wanted: "Hogger" | A/- | A/T | Shared quest; trio adds action before handoff |
| 177 | Look To The Stars | A/T | A/T | Same pickup/turn-in coverage |
| 178 | Theocritus' Retrieval | -/- | A/T | Trio addition |
| 179 | Dwarven Outfitters | A/T | -/- | Default turn-in missing in trio |
| 180 | Wanted: Lieutenant Fangore | A/T | A/T | Same pickup/turn-in coverage |
| 181 | Look To The Stars | A/T | A/T | Same pickup/turn-in coverage |
| 182 | The Troll Cave | A/T | A/T | Same pickup/turn-in coverage |
| 183 | The Boar Hunter | A/T | A/T | Same pickup/turn-in coverage |
| 184 | Furlbrow's Deed | -/T | -/T | Same pickup/turn-in coverage |
| 185 | Tiger Mastery | A/T | -/- | Default turn-in missing in trio |
| 190 | Panther Mastery | A/T | -/- | Default turn-in missing in trio |
| 214 | Red Silk Bandanas | -/- | A/T | Trio addition |
| 215 | Jungle Secrets | A/T | -/- | Default turn-in missing in trio |
| 218 | The Stolen Journal | A/T | A/T | Same pickup/turn-in coverage |
| 219 | Missing In Action | A/T | A/T | Same pickup/turn-in coverage |
| 221 | Worgen in the Woods | A/T | A/T | Same pickup/turn-in coverage |
| 222 | Worgen in the Woods | A/T | A/T | Same pickup/turn-in coverage |
| 223 | Worgen in the Woods | A/T | A/T | Same pickup/turn-in coverage |
| 224 | In Defense of the King's Lands | A/T | A/T | Same pickup/turn-in coverage |
| 225 | The Weathered Grave | A/T | A/T | Same pickup/turn-in coverage |
| 226 | Wolves at Our Heels | A/T | A/T | Same pickup/turn-in coverage |
| 227 | Morgan Ladimore | A/T | A/T | Same pickup/turn-in coverage |
| 228 | Mor'Ladim | A/T | A/T | Same pickup/turn-in coverage |
| 229 | The Daughter Who Lived | A/T | A/T | Same pickup/turn-in coverage |
| 230 | Sven's Camp | A/T | A/T | Same pickup/turn-in coverage |
| 231 | A Daughter's Love | A/- | A/- | Same pickup/turn-in coverage |
| 233 | Coldridge Valley Mail Delivery | A/T | -/- | Default turn-in missing in trio |
| 234 | Coldridge Valley Mail Delivery | A/T | -/- | Default turn-in missing in trio |
| 237 | In Defense of the King's Lands | -/- | A/T | Trio addition |
| 239 | Westbrook Garrison Needs Help! | -/- | A/T | Trio addition |
| 240 | Return to Jitters | A/T | A/T | Same pickup/turn-in coverage |
| 244 | Encroaching Gnolls | A/T | A/T | Same pickup/turn-in coverage |
| 245 | Eight-Legged Menaces | A/T | -/- | Default turn-in missing in trio |
| 246 | Assessing the Threat | A/T | A/T | Same pickup/turn-in coverage |
| 248 | Looking Further | A/T | A/T | Same pickup/turn-in coverage |
| 249 | Morganth | -/- | A/T | Trio addition |
| 251 | Translate Abercrombie's Note | A/T | A/T | Same pickup/turn-in coverage |
| 252 | Translation to Ello | A/T | A/T | Same pickup/turn-in coverage |
| 253 | Bride of the Embalmer | A/T | A/T | Same pickup/turn-in coverage |
| 257 | A Hunter's Boast | -/- | A/T | Trio addition |
| 258 | A Hunter's Challenge | -/- | A/T | Trio addition |
| 262 | The Shadowy Figure | A/T | A/T | Same pickup/turn-in coverage |
| 265 | The Shadowy Search Continues | A/T | A/T | Same pickup/turn-in coverage |
| 266 | Inquire at the Inn | A/T | A/T | Same pickup/turn-in coverage |
| 267 | The Trogg Threat | A/T | A/T | Same pickup/turn-in coverage |
| 268 | Return to Sven | A/T | A/T | Same pickup/turn-in coverage |
| 269 | Seeking Wisdom | A/T | A/T | Same pickup/turn-in coverage |
| 270 | The Doomed Fleet | A/T | A/T | Same pickup/turn-in coverage |
| 275 | Blisters on The Land | A/T | A/T | Same pickup/turn-in coverage |
| 276 | Tramping Paws | A/T | A/T | Same pickup/turn-in coverage |
| 277 | Fire Taboo | A/T | A/T | Same pickup/turn-in coverage |
| 279 | Claws from the Deep | A/T | A/T | Same pickup/turn-in coverage |
| 281 | Reclaiming Goods | A/T | A/T | Same pickup/turn-in coverage |
| 282 | Senir's Observations | A/T | A/T | Same pickup/turn-in coverage |
| 284 | The Search Continues | A/T | A/T | Same pickup/turn-in coverage |
| 285 | Search More Hovels | A/T | A/T | Same pickup/turn-in coverage |
| 286 | Return the Statuette | A/T | A/T | Same pickup/turn-in coverage |
| 287 | Frostmane Hold | A/T | A/T | Same pickup/turn-in coverage |
| 288 | The Third Fleet | A/T | A/T | Same pickup/turn-in coverage |
| 289 | The Cursed Crew | A/T | A/T | Same pickup/turn-in coverage |
| 290 | Lifting the Curse | A/T | A/T | Same pickup/turn-in coverage |
| 291 | The Reports | A/T | A/T | Same pickup/turn-in coverage |
| 292 | The Eye of Paleth | A/T | A/T | Same pickup/turn-in coverage |
| 293 | Cleansing the Eye | A/T | A/T | Same pickup/turn-in coverage |
| 294 | Ormer's Revenge | A/T | A/T | Same pickup/turn-in coverage |
| 295 | Ormer's Revenge | A/T | A/T | Same pickup/turn-in coverage |
| 296 | Ormer's Revenge | A/T | A/T | Same pickup/turn-in coverage |
| 298 | Excavation Progress Report | -/- | A/T | Trio addition |
| 299 | Uncovering the Past | A/T | A/T | Same pickup/turn-in coverage |
| 301 | Report to Ironforge | -/- | A/T | Trio addition |
| 303 | The Dark Iron War | A/T | A/T | Same pickup/turn-in coverage |
| 304 | A Grim Task | A/T | A/T | Same pickup/turn-in coverage |
| 305 | In Search of The Excavation Team | A/T | A/T | Same pickup/turn-in coverage |
| 306 | In Search of The Excavation Team | A/T | A/T | Same pickup/turn-in coverage |
| 307 | Filthy Paws | A/T | A/T | Same pickup/turn-in coverage |
| 308 | Distracting Jarven | -/T | -/T | Same pickup/turn-in coverage |
| 310 | Bitter Rivals | A/T | A/T | Same pickup/turn-in coverage |
| 311 | Return to Marleth | A/T | A/T | Same pickup/turn-in coverage |
| 312 | Tundra MacGrann's Stolen Stash | A/T | A/T | Same pickup/turn-in coverage |
| 313 | The Grizzled Den | A/T | A/T | Same pickup/turn-in coverage |
| 314 | Protecting the Herd | A/T | A/T | Same pickup/turn-in coverage |
| 315 | The Perfect Stout | A/T | A/T | Same pickup/turn-in coverage |
| 317 | Stocking Jetsteam | A/T | A/T | Same pickup/turn-in coverage |
| 318 | Evershine | A/T | A/T | Same pickup/turn-in coverage |
| 319 | A Favor for Evershine | A/T | A/T | Same pickup/turn-in coverage |
| 320 | Return to Bellowfiz | A/T | A/T | Same pickup/turn-in coverage |
| 321 | Lightforge Iron | A/T | A/T | Same pickup/turn-in coverage |
| 322 | Blessed Arm | A/T | A/T | Same pickup/turn-in coverage |
| 323 | Proving Your Worth | A/T | A/T | Same pickup/turn-in coverage |
| 324 | The Lost Ingots | A/T | A/T | Same pickup/turn-in coverage |
| 325 | Armed and Ready | A/T | A/T | Same pickup/turn-in coverage |
| 335 | A Noble Brew | A/T | A/T | Same pickup/turn-in coverage |
| 336 | A Noble Brew | A/T | A/T | Same pickup/turn-in coverage |
| 337 | An Old History Book | A/T | A/T | Same pickup/turn-in coverage |
| 350 | Look to an Old Friend | A/T | A/T | Same pickup/turn-in coverage |
| 353 | Stormpike's Delivery | A/T | A/T | Same pickup/turn-in coverage |
| 373 | The Unsent Letter | -/- | A/T | Trio addition |
| 377 | Crime and Punishment | A/T | A/T | Same pickup/turn-in coverage |
| 378 | The Fury Runs Deep | -/- | A/T | Trio addition |
| 384 | Beer Basted Boar Ribs | A/T | A/T | Same pickup/turn-in coverage |
| 386 | What Comes Around... | A/T | A/T | Same pickup/turn-in coverage |
| 387 | Quell The Uprising | A/T | A/T | Same pickup/turn-in coverage |
| 388 | The Color of Blood | A/T | A/T | Same pickup/turn-in coverage |
| 389 | Bazil Thredd | -/- | A/T | Trio addition |
| 391 | The Stockade Riots | A/T | A/T | Same pickup/turn-in coverage |
| 392 | The Curious Visitor | A/T | A/T | Same pickup/turn-in coverage |
| 393 | Shadow of the Past | A/T | A/T | Same pickup/turn-in coverage |
| 394 | The Head of the Beast | A/T | A/T | Same pickup/turn-in coverage |
| 395 | Brotherhood's End | A/T | A/T | Same pickup/turn-in coverage |
| 396 | An Audience with the King | A/T | A/T | Same pickup/turn-in coverage |
| 397 | You Have Served Us Well | A/T | -/- | Default turn-in missing in trio |
| 399 | Humble Beginnings | A/T | A/T | Same pickup/turn-in coverage |
| 400 | Tools for Steelgrill | A/T | A/T | Same pickup/turn-in coverage |
| 401 | Wait for Sirra to Finish | A/T | A/T | Same pickup/turn-in coverage |
| 413 | Shimmer Stout | A/T | A/T | Same pickup/turn-in coverage |
| 414 | Stout to Kadrell | A/T | A/T | Same pickup/turn-in coverage |
| 416 | Rat Catching | A/T | -/- | Default turn-in missing in trio |
| 417 | A Pilot's Revenge | A/T | A/T | Same pickup/turn-in coverage |
| 418 | Thelsamar Blood Sausages | A/T | A/T | Same pickup/turn-in coverage |
| 419 | The Lost Pilot | A/T | A/T | Same pickup/turn-in coverage |
| 420 | Senir's Observations | A/T | A/T | Same pickup/turn-in coverage |
| 432 | Those Blasted Troggs! | A/T | A/T | Same pickup/turn-in coverage |
| 433 | The Public Servant | A/T | A/T | Same pickup/turn-in coverage |
| 434 | The Attack! | A/T | A/T | Same pickup/turn-in coverage |
| 436 | Ironband's Excavation | -/- | A/T | Trio addition |
| 453 | Finding the Shadowy Figure | A/T | A/T | Same pickup/turn-in coverage |
| 463 | The Greenwarden | A/T | A/T | Same pickup/turn-in coverage |
| 464 | War Banners | A/T | A/T | Same pickup/turn-in coverage |
| 465 | Nek'rosh's Gambit | A/T | A/T | Same pickup/turn-in coverage |
| 469 | Daily Delivery | A/T | -/- | Default turn-in missing in trio |
| 470 | Digging Through the Ooze | A/T | A/T | Same pickup/turn-in coverage |
| 471 | Apprentice's Duties | A/T | -/- | Default turn-in missing in trio |
| 472 | Fall of Dun Modr | A/T | A/T | Same pickup/turn-in coverage |
| 474 | Defeat Nek'rosh | A/T | A/T | Same pickup/turn-in coverage |
| 484 | Young Crocolisk Skins | A/T | A/T | Same pickup/turn-in coverage |
| 526 | Lightforge Ingots | -/- | A/T | Trio addition |
| 538 | Southshore | A/- | A/- | Same pickup/turn-in coverage |
| 583 | Welcome to the Jungle | A/T | -/- | Default turn-in missing in trio |
| 631 | The Thandol Span | A/T | A/T | Same pickup/turn-in coverage |
| 632 | The Thandol Span | A/T | A/T | Same pickup/turn-in coverage |
| 633 | The Thandol Span | A/T | A/T | Same pickup/turn-in coverage |
| 634 | Plea To The Alliance | A/T | A/- | Trio accepts; default turn-in deferred/missing |
| 637 | Sully Balloo's Letter | A/T | A/T | Same pickup/turn-in coverage |
| 647 | MacKreel's Moonshine | A/T | A/T | Same pickup/turn-in coverage |
| 683 | Sara Balloo's Plea | A/T | A/T | Same pickup/turn-in coverage |
| 686 | A King's Tribute | A/T | A/T | Same pickup/turn-in coverage |
| 689 | A King's Tribute | A/- | A/- | Same pickup/turn-in coverage |
| 690 | Malin's Request | A/- | A/- | Same pickup/turn-in coverage |
| 729 | The Absent Minded Prospector | A/T | A/T | Same pickup/turn-in coverage |
| 731 | The Absent Minded Prospector | A/T | A/T | Same pickup/turn-in coverage |
| 741 | The Absent Minded Prospector | A/T | A/T | Same pickup/turn-in coverage |
| 942 | The Absent Minded Prospector | A/T | A/T | Same pickup/turn-in coverage |
| 943 | The Absent Minded Prospector | A/T | A/T | Same pickup/turn-in coverage |
| 944 | The Master's Glaive | A/T | A/T | Same pickup/turn-in coverage |
| 945 | Therylune's Escape | A/T | A/T | Same pickup/turn-in coverage |
| 947 | Cave Mushrooms | A/T | A/T | Same pickup/turn-in coverage |
| 948 | Onu | A/T | A/T | Same pickup/turn-in coverage |
| 949 | The Twilight Camp | A/T | A/T | Same pickup/turn-in coverage |
| 950 | Return to Onu | A/T | A/T | Same pickup/turn-in coverage |
| 951 | Mathystra Relics | A/T | A/T | Same pickup/turn-in coverage |
| 953 | The Fall of Ameth'Aran | A/T | A/T | Same pickup/turn-in coverage |
| 954 | Bashal'Aran | A/T | -/- | Default turn-in missing in trio |
| 955 | Bashal'Aran | A/T | -/- | Default turn-in missing in trio |
| 956 | Bashal'Aran | A/T | -/- | Default turn-in missing in trio |
| 957 | Bashal'Aran | A/T | -/- | Default turn-in missing in trio |
| 958 | Tools of the Highborne | A/T | -/- | Default turn-in missing in trio |
| 959 | Trouble at the Docks | A/T | -/- | Default turn-in missing in trio |
| 963 | For Love Eternal | A/T | A/T | Same pickup/turn-in coverage |
| 965 | The Tower of Althalaxx | A/T | A/T | Same pickup/turn-in coverage |
| 966 | The Tower of Althalaxx | A/T | A/T | Same pickup/turn-in coverage |
| 967 | The Tower of Althalaxx | A/T | A/T | Same pickup/turn-in coverage |
| 968 | The Powers Below | A/T | -/- | Default turn-in missing in trio |
| 970 | The Tower of Althalaxx | A/T | A/T | Same pickup/turn-in coverage |
| 971 | Knowledge in the Deeps | -/- | A/T | Trio addition |
| 973 | The Tower of Althalaxx | A/T | A/T | Same pickup/turn-in coverage |
| 982 | Deep Ocean, Vast Sea | A/T | A/T | Same pickup/turn-in coverage |
| 983 | Buzzbox 827 | A/T | -/- | Default turn-in missing in trio |
| 984 | How Big a Threat? | A/T | A/T | Same pickup/turn-in coverage |
| 985 | How Big a Threat? | A/T | A/T | Same pickup/turn-in coverage |
| 986 | A Lost Master | A/T | A/T | Same pickup/turn-in coverage |
| 990 | Trek to Ashenvale | -/- | A/T | Trio addition |
| 991 | Raene's Cleansing | A/T | A/T | Same pickup/turn-in coverage |
| 993 | A Lost Master | A/T | A/T | Same pickup/turn-in coverage |
| 995 | Escape Through Stealth | A/T | A/T | Same pickup/turn-in coverage |
| 1001 | Buzzbox 411 | A/T | -/- | Default turn-in missing in trio |
| 1002 | Buzzbox 323 | A/T | -/- | Default turn-in missing in trio |
| 1003 | Buzzbox 525 | A/T | -/- | Default turn-in missing in trio |
| 1007 | The Ancient Statuette | A/T | A/T | Same pickup/turn-in coverage |
| 1008 | The Zoram Strand | A/T | A/T | Same pickup/turn-in coverage |
| 1009 | Ruuzel | A/T | A/T | Same pickup/turn-in coverage |
| 1010 | Bathran's Hair | A/T | A/T | Same pickup/turn-in coverage |
| 1011 | Forsaken Diseases | A/T | -/- | Default turn-in missing in trio |
| 1016 | Elemental Bracers | A/T | -/- | Default turn-in missing in trio |
| 1020 | Orendil's Cure | A/T | A/T | Same pickup/turn-in coverage |
| 1021 | Vile Satyr! Dryads in Danger! | A/T | -/- | Default turn-in missing in trio |
| 1022 | The Howling Vale | A/T | -/- | Default turn-in missing in trio |
| 1023 | Raene's Cleansing | A/T | A/T | Same pickup/turn-in coverage |
| 1024 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio |
| 1025 | An Aggressive Defense | A/T | -/- | Default turn-in missing in trio |
| 1026 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio |
| 1027 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio |
| 1028 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio |
| 1029 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio |
| 1030 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio |
| 1031 | The Branch of Cenarius | A/T | -/- | Default turn-in missing in trio |
| 1032 | Satyr Slaying! | A/T | -/- | Default turn-in missing in trio |
| 1033 | Elune's Tear | A/T | A/T | Same pickup/turn-in coverage |
| 1034 | The Ruins of Stardust | A/T | A/T | Same pickup/turn-in coverage |
| 1035 | Fallen Sky Lake | A/T | -/- | Default turn-in missing in trio |
| 1037 | Velinde Starsong | A/T | -/- | Default turn-in missing in trio |
| 1038 | Velinde's Effects | A/T | -/- | Default turn-in missing in trio |
| 1039 | The Barrens Port | A/- | -/- | Default pickup missing in trio |
| 1045 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio |
| 1046 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio |
| 1054 | Culling the Threat | A/T | A/T | Same pickup/turn-in coverage |
| 1055 | Raene's Cleansing | A/T | -/- | Default turn-in missing in trio |
| 1056 | Journey to Stonetalon Peak | A/T | -/- | Default turn-in missing in trio |
| 1057 | Reclaiming the Charred Vale | A/T | -/- | Default turn-in missing in trio |
| 1059 | Reclaiming the Charred Vale | A/- | -/- | Default pickup missing in trio |
| 1070 | On Guard in Stonetalon | A/T | -/- | Default turn-in missing in trio |
| 1071 | A Gnome's Respite | A/T | -/- | Default turn-in missing in trio |
| 1072 | An Old Colleague | A/T | -/- | Default turn-in missing in trio |
| 1073 | Ineptitude + Chemicals = Fun | A/T | -/- | Default turn-in missing in trio |
| 1075 | A Scroll from Mauren | A/T | -/- | Default turn-in missing in trio |
| 1076 | Devils in Westfall | A/T | -/- | Default turn-in missing in trio |
| 1078 | Retrieval for Mauren | A/T | -/- | Default turn-in missing in trio |
| 1085 | On Guard in Stonetalon | A/T | -/- | Default turn-in missing in trio |
| 1093 | Super Reaper 6000 | A/T | -/- | Default turn-in missing in trio |
| 1094 | Further Instructions | -/T | -/- | Default conditional recovery only |
| 1134 | Pridewings of Stonetalon | A/T | -/- | Default turn-in missing in trio |
| 1138 | Fruit of the Sea | A/T | A/T | Same pickup/turn-in coverage |
| 1140 | The Tower of Althalaxx | A/T | -/- | Default turn-in missing in trio |
| 1141 | The Family and the Fishing Pole | A/T | A/T | Same pickup/turn-in coverage |
| 1179 | The Brassbolts Brothers | A/- | A/- | Same pickup/turn-in coverage |
| 1198 | Search of Thaelrid | -/- | A/T | Trio addition |
| 1199 | Twilight Falls | -/- | A/T | Trio addition |
| 1200 | Blackfathom Villainy | -/- | A/T | Trio addition |
| 1241 | The Missing Diplomat | A/T | A/T | Same pickup/turn-in coverage |
| 1242 | The Missing Diplomat | A/T | A/T | Same pickup/turn-in coverage |
| 1243 | The Missing Diplomat | A/T | A/T | Same pickup/turn-in coverage |
| 1244 | The Missing Diplomat | A/T | A/T | Same pickup/turn-in coverage |
| 1245 | The Missing Diplomat | A/T | A/T | Same pickup/turn-in coverage |
| 1246 | The Missing Diplomat | A/T | A/T | Same pickup/turn-in coverage |
| 1247 | The Missing Diplomat | A/T | A/T | Same pickup/turn-in coverage |
| 1248 | The Missing Diplomat | A/T | A/T | Same pickup/turn-in coverage |
| 1249 | The Missing Diplomat | A/T | A/T | Same pickup/turn-in coverage |
| 1250 | The Missing Diplomat | A/T | A/T | Same pickup/turn-in coverage |
| 1264 | The Missing Diplomat | A/- | A/- | Same pickup/turn-in coverage |
| 1274 | The Missing Diplomat | A/T | A/T | Same pickup/turn-in coverage |
| 1275 | Researching the Corruption | -/- | A/T | Trio addition |
| 1301 | James Hyal | A/T | A/T | Same pickup/turn-in coverage |
| 1302 | James Hyal | A/- | A/- | Same pickup/turn-in coverage |
| 1338 | Stormpike's Order | A/T | A/T | Same pickup/turn-in coverage |
| 1339 | Mountaineer Stormpike's Task | A/T | A/T | Same pickup/turn-in coverage |
| 1447 | The Missing Diplomat | A/T | A/T | Same pickup/turn-in coverage |
| 1486 | Deviate Hides | A/T | -/- | Default turn-in missing in trio |
| 1487 | Deviate Eradication | A/T | -/- | Default turn-in missing in trio |
| 1599 | Beginnings | A/T | A/T | Same pickup/turn-in coverage |
| 1638 | A Warrior's Training | A/T | A/T | Same pickup/turn-in coverage |
| 1639 | Bartleby the Drunk | A/T | A/T | Same pickup/turn-in coverage |
| 1640 | Beat Bartleby | A/T | A/T | Same pickup/turn-in coverage |
| 1645 | The Tome of Divinity | A/T | A/T | Same pickup/turn-in coverage |
| 1646 | The Tome of Divinity | A/T | A/T | Same pickup/turn-in coverage |
| 1647 | The Tome of Divinity | A/T | A/T | Same pickup/turn-in coverage |
| 1648 | The Tome of Divinity | A/T | A/T | Same pickup/turn-in coverage |
| 1649 | The Tome of Valor | A/T | A/T | Same pickup/turn-in coverage |
| 1650 | The Tome of Valor | A/T | A/T | Same pickup/turn-in coverage |
| 1651 | The Tome of Valor | A/T | A/T | Same pickup/turn-in coverage |
| 1652 | The Tome of Valor | A/T | A/T | Same pickup/turn-in coverage |
| 1665 | Bartleby's Mug | A/T | A/T | Same pickup/turn-in coverage |
| 1666 | Marshal Haggard | -/- | A/T | Trio addition |
| 1667 | Dead-tooth Jack | -/- | A/T | Trio addition |
| 1688 | Surena Caledon | A/T | A/T | Same pickup/turn-in coverage |
| 1689 | The Binding | A/T | A/T | Same pickup/turn-in coverage |
| 1716 | Devourer of Souls | A/T | -/- | Default turn-in missing in trio |
| 1718 | The Islander | A/- | A/- | Same pickup/turn-in coverage |
| 1738 | Heartswood | A/T | -/- | Default turn-in missing in trio |
| 1739 | The Binding | A/T | -/- | Default turn-in missing in trio |
| 1778 | The Tome of Divinity | A/T | A/T | Same pickup/turn-in coverage |
| 1779 | The Tome of Divinity | A/T | A/T | Same pickup/turn-in coverage |
| 1783 | The Tome of Divinity | A/T | A/T | Same pickup/turn-in coverage |
| 1784 | The Tome of Divinity | A/T | A/T | Same pickup/turn-in coverage |
| 1785 | The Tome of Divinity | A/T | A/T | Same pickup/turn-in coverage |
| 1798 | Seeking Strahad | A/- | A/- | Same pickup/turn-in coverage |
| 2040 | Underground Assault | -/- | A/T | Trio addition |
| 2078 | Gyromast's Revenge | A/T | A/T | Same pickup/turn-in coverage |
| 2098 | Gyromast's Retrieval | A/T | A/T | Same pickup/turn-in coverage |
| 2118 | Plagued Lands | A/T | A/T | Same pickup/turn-in coverage |
| 2138 | Cleansing of the Infected | A/T | A/T | Same pickup/turn-in coverage |
| 2139 | Tharnariun's Hope | A/T | A/T | Same pickup/turn-in coverage |
| 2160 | Supplies to Tannok | A/T | A/T | Same pickup/turn-in coverage |
| 2178 | Easy Strider Living | A/T | A/T | Same pickup/turn-in coverage |
| 2745 | Infiltrating the Castle | A/T | A/T | Same pickup/turn-in coverage |
| 2746 | Items of Some Consequence | A/T | A/T | Same pickup/turn-in coverage |
| 2904 | A Fine Mess | A/- | A/- | Same pickup/turn-in coverage |
| 2922 | Save Techbot's Brain! | A/T | A/T | Same pickup/turn-in coverage |
| 2923 | Tinkmaster Overspark | A/T | -/- | Default turn-in missing in trio |
| 2924 | Essential Artificials | A/T | A/T | Same pickup/turn-in coverage |
| 2926 | Gnogaine | A/T | A/T | Same pickup/turn-in coverage |
| 2927 | The Day After | A/T | A/T | Same pickup/turn-in coverage |
| 2928 | Gyrodrillmatic Excavationators | A/- | A/T | Shared quest; trio adds action before handoff |
| 2929 | The Grand Betrayal | A/T | A/T | Same pickup/turn-in coverage |
| 2930 | Data Rescue | A/T | A/T | Same pickup/turn-in coverage |
| 2945 | Grime-Encrusted Ring | A/T | A/T | Same pickup/turn-in coverage |
| 2947 | Return of the Ring | A/T | A/T | Same pickup/turn-in coverage |
| 2948 | Gnome Improvement | A/T | A/T | Same pickup/turn-in coverage |
| 2962 | The Only Cure is More Green Glow | A/T | A/T | Same pickup/turn-in coverage |
| 2999 | Tome of Divinity | A/T | A/T | Same pickup/turn-in coverage |
| 3106 | Simple Rune | A/T | -/- | Default turn-in missing in trio |
| 3107 | Consecrated Rune | A/T | -/- | Default turn-in missing in trio |
| 3112 | Simple Memorandum | A/T | -/- | Default turn-in missing in trio |
| 3115 | Tainted Memorandum | A/T | -/- | Default turn-in missing in trio |
| 3364 | Scalding Mornbrew Delivery | A/T | A/T | Same pickup/turn-in coverage |
| 3365 | Bring Back the Mug | A/T | A/T | Same pickup/turn-in coverage |
| 3524 | Washed Ashore | A/T | A/T | Same pickup/turn-in coverage |
| 3741 | Hilary's Necklace | A/T | A/T | Same pickup/turn-in coverage |
| 3765 | The Corruption Abroad | A/T | A/T | Same pickup/turn-in coverage |
| 4581 | Kayneth Stillwind | A/T | -/- | Default turn-in missing in trio |
| 4681 | Washed Ashore | A/T | A/T | Same pickup/turn-in coverage |
| 4722 | Beached Sea Turtle | A/T | A/T | Same pickup/turn-in coverage |
| 4723 | Beached Sea Creature | A/T | A/T | Same pickup/turn-in coverage |
| 4725 | Beached Sea Turtle | A/T | A/T | Same pickup/turn-in coverage |
| 4727 | Beached Sea Turtle | A/T | A/T | Same pickup/turn-in coverage |
| 4728 | Beached Sea Creature | A/T | A/T | Same pickup/turn-in coverage |
| 4730 | Beached Sea Creature | A/T | A/T | Same pickup/turn-in coverage |
| 4731 | Beached Sea Turtle | A/T | A/T | Same pickup/turn-in coverage |
| 4732 | Beached Sea Turtle | A/T | A/T | Same pickup/turn-in coverage |
| 4733 | Beached Sea Creature | A/T | A/T | Same pickup/turn-in coverage |
| 4738 | In Search of Menara Voidrender | A/- | A/- | Same pickup/turn-in coverage |
| 4740 | WANTED: Murkdeep! | A/T | A/T | Same pickup/turn-in coverage |
| 4761 | Thundris Windweaver | A/T | A/T | Same pickup/turn-in coverage |
| 4762 | The Cliffspring River | A/T | A/T | Same pickup/turn-in coverage |
| 4763 | The Blackwood Corrupted | A/T | A/T | Same pickup/turn-in coverage |
| 4811 | The Red Crystal | A/T | A/T | Same pickup/turn-in coverage |
| 4812 | As Water Cascades | A/T | A/T | Same pickup/turn-in coverage |
| 4813 | The Fragments Within | A/T | A/T | Same pickup/turn-in coverage |
| 5321 | The Sleeper Has Awakened | A/T | A/T | Same pickup/turn-in coverage |
| 5541 | Ammo for Rumbleshot | A/T | A/T | Same pickup/turn-in coverage |
| 5545 | A Bundle of Trouble | A/T | -/- | Default turn-in missing in trio |
| 6387 | Honor Students | A/T | A/T | Same pickup/turn-in coverage |
| 6388 | Gryth Thurden | A/T | A/T | Same pickup/turn-in coverage |
| 6391 | Ride to Ironforge | A/T | A/T | Same pickup/turn-in coverage |
| 6392 | Return to Brock | A/T | A/T | Same pickup/turn-in coverage |
| 6661 | Deeprun Rat Roundup | A/T | A/T | Same pickup/turn-in coverage |
| 6662 | Me Brother, Nipsy | A/T | A/T | Same pickup/turn-in coverage |
| 6981 | The Glowing Shard | A/T | -/- | Default turn-in missing in trio |
| 65602 | What Is Love? | A/T | -/- | Default turn-in missing in trio |
| 65603 | The Binding | A/T | -/- | Default turn-in missing in trio |
| 79362 | Grant's Shield | -/- | A/T | Trio addition |
| 86585 | Banner of the Fallen | -/- | A/T | Trio addition |
| 86614 | Silver of the Waves | A/T | A/T | Same pickup/turn-in coverage |
| 86667 | Snowbound | A/T | -/- | Default turn-in missing in trio |
| 86758 | Twisting the Knife | -/- | A/T | Trio addition |
| 87318 | Hearts of the Lost | -/- | A/T | Trio addition |
| 87491 | Spark of Freedom | -/- | A/T | Trio addition |
| 87760 | Holy Diver | -/- | A/T | Trio addition |
| 88756 | Bring Back a Bang | -/- | A/T | Trio addition |
| 88757 | Accessories of the Lost | -/- | A/T | Trio addition |
| 88758 | Sentiments of the Lost | -/- | A/T | Trio addition |
| 91733 | Downstream | A/T | A/T | Same pickup/turn-in coverage |
| 91736 | Applejack Still three times | -/- | -/T | Trio addition |
| 91738 | An Apple Treat | -/- | A/T | Trio addition |
| 91740 | Croaky's Head | A/T | A/T | Same pickup/turn-in coverage |
| 92415 | Remember That I Love You | -/- | A/T | Trio addition |
| 92742 | Testing the Wells | A/T | A/T | Same pickup/turn-in coverage |
| 92744 | Murloc Gills | A/T | A/T | Same pickup/turn-in coverage |
| 92909 | Harvesting the Harvesters | A/T | -/- | Default turn-in missing in trio |
| 95065 | Fishin' Time | A/T | A/T | Same pickup/turn-in coverage |
| 95161 | Remember That I Love You | -/- | A/T | Trio addition |
| 95189 | Crest of Lordaeron | -/- | A/T | Trio addition |
| 95195 | Bloodied Insignia | -/- | A/T | Trio addition |
| 95213 | Stolen Blasting Powder | A/T | A/T | Same pickup/turn-in coverage |
| 95214 | Stolen Blasting Powder | A/T | -/- | Default turn-in missing in trio |
| 95250 | Abominable Creatures | -/- | A/T | Trio addition |
| 95646 | Horrors in the Highland | -/- | A/T | Trio addition |
| 95647 | Lost in the Thicket Things | -/- | A/T | Trio addition |
| 95737 | Seeking Caitlin | -/- | A/T | Trio addition |
| 95772 | Songblade Search | -/- | A/T | Trio addition |
| 95795 | Fallen in the Fen | -/- | A/- | Trio addition |
| 95809 | Heartwoven | -/- | A/T | Trio addition |
| 95810 | Lost Relic Carry | -/- | A/T | Trio addition |
| 95999 | WANTED: Incinerator Gar'im | A/T | -/- | Default turn-in missing in trio |
| 96050 | Camping 101: Fishing to learn Fish Bowl | -/- | A/T | Trio addition |
| 96056 | Camping 101: Skinning | -/- | A/T | Trio addition |
| 96139 | The Valor Family | -/- | A/T | Trio addition |
| 96390 | Nip 'Em in the Bud | A/T | A/T | Same pickup/turn-in coverage |
| 96391 | Underground Map | A/T | A/T | Same pickup/turn-in coverage |
| 96392 | Farsen's Watch | A/T | A/T | Same pickup/turn-in coverage |
| 96393 | Old Ironforge Incursion | A/- | A/T | Shared quest; trio adds action before handoff |
| 96394 | The Restless Dead | -/- | A/T | Trio addition |
| 96395 | An Ancient Grudge | -/- | A/T | Trio addition |
| 96403 | Important Heirlooms | -/- | A/T | Trio addition |
| 96408 | A Visitor to Dun Morogh | A/T | A/T | Same pickup/turn-in coverage |
| 96608 | The Great Outdoors | A/T | A/T | Same pickup/turn-in coverage |
| 96628 | The Adventurer | A/T | A/T | Same pickup/turn-in coverage |
| 96629 | Camping 101: Cooking | A/T | A/T | Same pickup/turn-in coverage |
| 97220 | Philmor's Favor | A/T | A/T | Same pickup/turn-in coverage |
| 97222 | Gatehouse Goods | A/T | A/T | Same pickup/turn-in coverage |
| 97234 | Reading Room | -/- | A/T | Trio addition |
| 97237 | Shelf Picked | -/- | A/T | Trio addition |
| 97277 | Grund and Gozwin | A/T | A/T | Same pickup/turn-in coverage |
| 98013 | Swelling Forces | -/- | A/T | Trio addition |
| 98025 | WANTED: Jai'vhanel | A/T | A/T | Same pickup/turn-in coverage |
| 98028 | Baron Marinous | -/- | A/T | Trio addition |
| 98042 | It's All Fun and Games Until... | A/T | A/T | Same pickup/turn-in coverage |
| 98189 |  | -/- | A/T | Trio addition |
| 98190 | A Friend of the Family | -/- | A/T | Trio addition |
| 98191 | A Friend of the Family | -/- | A/T | Trio addition |
| 98216 | Understanding Our Present | -/- | A/T | Trio addition |
| 98221 | From the Ashes | -/- | A/T | Trio addition |
| 98223 | Old Habits | -/- | A/T | Trio addition |
| 98230 | This Land Was Their Land | -/- | A/T | Trio addition |
| 98245 | Razormaw Needling | -/- | A/T | Trio addition |
| 98246 | Trying Times | -/- | A/T | Trio addition |
| 98282 | Alchemical Hazards | -/- | A/T | Trio addition |
| 98283 | Carnage | -/- | A/T | Trio addition |
| 98291 | Death to the Dragonmaw | -/- | A/T | Trio addition |
| 98293 | Forced Disarmament | -/- | A/T | Trio addition |
| 98297 | Stopping the Cycle | -/- | A/T | Trio addition |
| 98310 | Gleaning Our Future | -/- | A/T | Trio addition |
| 98313 | For Further Study | -/- | A/T | Trio addition |
| 98319 | Secure the Mountain | A/T | A/T | Same pickup/turn-in coverage |
| 98321 | Flintfire's Shipment | A/T | A/T | Same pickup/turn-in coverage |
| 98322 | Secure the Mountain | A/T | A/T | Same pickup/turn-in coverage |
| 98323 | Secure the Mountain | A/T | A/T | Same pickup/turn-in coverage |
| 98326 | Frosthowl to Gretta Ganter | -/- | A/T | Trio addition |
| 98386 | Alther's Mill | -/- | A/T | Trio addition |
| 98387 | Blackrock Blockade | A/T | -/- | Default turn-in missing in trio |
| 98407 | Show of Force | A/T | A/T | Same pickup/turn-in coverage |
| 98423 | The Treaty of Understanding | -/- | A/T | Trio addition |
| 98461 | Unrequited Love | -/- | A/T | Trio addition |
| 98815 | Highland Hides | -/- | A/T | Trio addition |
| 98824 | Prehistoric Prism | -/- | A/T | Trio addition |
| 99158 | Dawn in the Mountains | A/T | -/- | Default turn-in missing in trio |
