# Trio to default Southshore handoff audit

Researched 2026-10-11 against the installed Forever guides. Intended handoff: after the trio Gnomeregan city deliveries and hearth to Southshore, start **RestedXP Forever Guide (A) / 32-33 Hillsbrad/Arathi**. Checked that chapter plus its immediate 33-34 Thousand Needles and 34-35 Stranglethorn Vale I continuations; checked Armed and Ready's later 36-38 delivery. This is an authored-route audit, not a character quest-log check or a full audit through level 60.

The Gnomeregan chapter now uses `#next RestedXP Forever Guide (A)\32-33 Hillsbrad/Arathi` and explicitly instructs the party to continue with default. This handoff was updated during the audit. James Hyal and all listed city pickups are now included in trio; optional shopping supplies are also included. Starting at Southshore skips the default chapter's opening Menethil steps via `.zoneskip Hillsbrad Foothills`. Its optional Third Fleet step has no equivalent zone skip, but trio already includes that quest.

## City pickups now included

| Quest | Current trio coverage | Default use | Placement |
|---|---|---|---|
| Southshore 538 | Accepts 538 during the final Stormwind batch if 337 is completed. | Default 32-33 delivers it to Loremaster Dibbs, guarded by `.isOnQuest 538`. | Milton Sheaf during the Gnomer Stormwind batch, if 337 is completed. |
| Sara Balloo's Plea 683 -> A King's Tribute 686 -> 689 | Continues Sully's Letter through 683 and 686, then holds 689. | Default 32-33 collects five Alterac Granite in Darrow Hill; default 34-35 delivers 689 in Ironforge. | Continue the chain from Sara through Magni and Grand Mason Marblesten during the existing Ironforge visit. |
| Malin's Request 690 | Pickup included in the Gnomer city chapter. | Default 32-33 delivers to Skuerto at Refuge Pointe, guarded by `.isOnQuest 690`. | Archmage Malin during the Gnomer Stormwind batch. |
| The Brassbolts Brothers 1179 | Pickup included in the Gnomer city chapter. | Default 33-34 delivers to Wizzle Brassbolts at the Shimmering Flats. Other Flats quests have a separate pickup path without this breadcrumb. | Pilot Longbeard during the existing Ironforge visit. |
| The Islander 1718, Warrior | Pickup included in the Gnomer city chapter. | Default 33-34 expects it at Klannoc, then runs The Affray and accepts The Windwatcher. | Wu Shen during level-30+ Stormwind training. |
| Seeking Strahad 1798, Warlock | Pickup included in the Gnomer city chapter. | Default 33-34 expects it at Strahad in Ratchet, then accepts Tome of the Cabal 1758. | Gakin during level-30+ Stormwind training. |
| In Search of Menara Voidrender 4738, Warlock | Conditional Warlock referral included. | Default 33-34 conditionally delivers 4738 or alternate 4736 to Menara in Ratchet. | Demisette during the same Stormwind Warlock visit; avoid taking a duplicate referral. |
| Armed and Ready 325 | Now accepted and delivered after Stockades, with Morbent completed. | Default later recovery steps skip completed quests. | Grimand during Stockades city visit, then Sven during the Duskwood circuit. |

## Optional Menethil breadcrumb

James Hyal 1301 -> 1302 is now included in trio. Default 29-32 picks up 1301 from Connor Rivers in Stormwind; default 32-33 delivers it to Vincent Hyal in Menethil and takes 1302; default 33-34 delivers 1302 in Theramore. Entering default at Southshore skips the Menethil exchange, so merely adding 1301 to the final Gnomer city visit would leave it undelivered. Trio now collects 1301 during the earlier Stockades city visit, delivers it at the beginning of final Wetlands, and keeps 1302 for Theramore. This is optional: default 33-34 has a They Call Him Smiling Jim alternative when 1302 is available.

## Travel and items

- **Refuge Pointe flight path:** no trio pickup. Default 27-29 unlocks it while delivering Plea 634; default 32-33 assumes it when flying from Southshore to Arathi. User preference: run the first Southshore-to-Refuge leg when default expects it, then speak to the flight master on arrival. No custom travel step is added.
- **Plea To The Alliance 634:** already held, but default 32-33 never delivers it. Turn it in to Captain Nials when default first visits Refuge Pointe. The default accepted and delivered it in its earlier 27-29 chapter.
- **Ratchet flight path:** no trio pickup. Default 33-34's Warlock branch flies there from Theramore; its non-Warlock, non-Wailing-Caverns branch travels on foot and obtains the flight path. With this trio route, the Warlock must initially travel with the party and unlock Ratchet rather than follow the premature flight instruction. The final trio handoff now explains this. Wailing Caverns selection also activates a flight assumption for non-Warlocks.
- **Optional Bartolo cloak:** default 29-32 obtains one Hillman's Cloak (3719) and one Bolt of Woolen Cloth (2997). Default 32-33 only offers Bartolo's Yeti Fur Cloak 565 when both are present; it handles thread and yeti fur itself. An optional Ironforge shopping step now supplies the cloak and cloth.
- **Optional Favor for Krazek:** default 29-32 prepares four Lesser Bloodstone Ore (4278), for quest 627 at 34-35. Included in the optional Ironforge shopping step; not needed to start Southshore.
- Default 32-33 explicitly asks for four Soothing Spices in Southshore; 33-34 buys three in Theramore. No extra earlier shopping is required for these instructions.

## Already covered or safely deferred

Missing Diplomat 1264 is held and feeds directly into default 33-34 at Theramore. Gnomer escort A Fine Mess 2904, when completed, is delivered by default 34-35 in Booty Bay. Cleansing the Eye 293 and Sully's Letter 637 have city turn-ins in the Gnomer chapter; Blessed Arm 322 is delivered earlier during the Stockades city visit. Southshore hearth and flight path are present. The core 32-33 quests (Costly Menace, Hints of a New Plague, Down the Coast/Farren's Proof, Syndicate Assassins and Northfold Manor) have their own pickups in that default chapter.

The earlier Stranglethorn omissions are not handoff prerequisites: default 34-35 reintroduces Welcome to the Jungle, Tiger/Panther Mastery and the conditional Jungle Secrets event. Reclaiming the Charred Vale 1059 and The Barrens Port 1039 are conditional carryovers from the default's separate 29-30 Ashenvale route, omitted by trio. Their next-chapter steps are gated; no Ashenvale detour is needed just to start the default Southshore route.

## Source locations

All local files are under `Guides/Forever`:

- `GuideVault_Filtered/RestedXP-Forever-Guide-A__27-29-Wetlands-Hillsbrad.lua`: 820-837 (Plea and Arathi flight path).
- `GuideVault_Filtered/RestedXP-Forever-Guide-A__29-32-Duskwood.lua`: 68-93 (Ironforge breadcrumbs), 111 (Armed and Ready), 901 (Islander), 945-983 (Malin, James and Warlock referrals), 1017-1026 (Southshore), 1440-1442 (optional supplies).
- `GuideVault_Filtered/RestedXP-Forever-Guide-A__32-33-Hillsbrad-Arathi.lua`: 37-108 (Menethil opening), 128-131 (Southshore), 277-300 (granite), 472-488 (Arathi flight and Malin).
- `GuideVault_Filtered/RestedXP-Forever-Guide-A__33-34-Thousand-Needles.lua`: 56-73 (Theramore carryovers), 327-339 (Brassbolts and alternative pickups), 535-615 (Ratchet travel), 578-645 (class quests).
- `GuideVault_Filtered/RestedXP-Forever-Guide-A__34-35-Stranglethorn-Vale-I.lua`: 46-47 (Gnomer escort), 183-218 (early hunting quests), 487-488 (Krazek), 710-730 (King's Tribute).
- `GuideVault_Filtered/RestedXP-Forever-Guide-A__36-38-Stranglethorn-Vale-II.lua`: 120-131 (Armed and Ready).

Quest destinations also checked against Wowhead Forever: [Southshore 538](https://www.wowhead.com/forever/quest=538/southshore), [A King's Tribute 689](https://www.wowhead.com/forever/quest=689/a-kings-tribute), [Malin's Request 690](https://www.wowhead.com/forever/it/quest=690/malins-request), [Brassbolts 1179](https://www.wowhead.com/forever/quest=1179/the-brassbolts-brothers), [Islander 1718](https://www.wowhead.com/forever/quest=1718/the-islander), [Seeking Strahad 1798](https://www.wowhead.com/forever/quest=1798/seeking-strahad), [Plea 634](https://www.wowhead.com/forever/quest=634/plea-to-the-alliance), [James Hyal 1301](https://www.wowhead.com/forever/quest=1301/james-hyal). Availability and completed flags still need checking on each character in game.

The cross-group handoff matches the default source group/name and the addon supports that syntax. The generated GuideVault_Filtered files are research artifacts and are not in the add-on loading XML; the handoff relies on the original default guide being registered in game. Runtime registration and automatic transition have not been verified in game.

Duskwood update 2026-10-12: Lightforge moved to Wetlands loop 2; all four encounters (Stalvan, Eliza, Mor'Ladim and Morbent Fel) now occur in the post-Stockades Duskwood circuit. No extra Duskwood visit is needed after Gnomer. Hold A Daughter's Love 231 for the default 34-35 Raven Hill grave visit. Default later Morbent/Mor'Ladim recovery steps are gated by quest state and are no longer needed. Refuge Pointe remains the user's planned run with no custom travel step; the Ratchet handoff note remains.

Bloom of the Heavens added 2026-10-12: accept 98208 from Sylessa Duskwhisper in Menethil before loop 2; loot Nord'el from the northern side of the Flying Osprey wreck during the Lightforge southern coast pass; deliver 98208 during the combined town return and accept 98209. Keep it for Thundris Windweaver in Auberdine (Darkshore 37.394,40.128), when default 35-37 Desolace takes the boat there before its Desolace flight. This is a carry reminder; the vendor default has no authored 98209 turn-in step and is unchanged. The exact Sylessa/flower pins are not verified, so the custom steps use the confirmed NPC identity, wreck description and a location link rather than invented coordinates. Sources: [98208](https://www.wowhead.com/forever/quest=98208/bloom-of-the-heavens), [98209](https://www.wowhead.com/forever/quest=98209/bloom-of-the-heavens). This new Forever quest is outside the earlier default-only gap counts.
