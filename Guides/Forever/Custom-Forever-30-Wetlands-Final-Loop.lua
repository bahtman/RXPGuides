RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 8
#group Forever Trio Launch
#name 30 Wetlands Final Loop & Excavation Site
#displayname 30 Wetlands Final Loop & Excavation Site
<< Alliance (Warlock/Priest/Warrior)

step
    .goto Wetlands,15.44,23.60
    >>At the western shipwreck, kill Captain Halyndor and loot the strongbox key. Watch his spell-reflection buff.
    .complete 290,1

step
    .goto Wetlands,14.381,24.047
    >>Open the strongbox through the hole in the ship.
    .turnin 290 >> Turn in Lifting the Curse
    .accept 292 >> Accept The Eye of Paleth

step
    .goto Wetlands,49.6,18.2
    >>Turnin The Fury Runs Deep
    .turnin 378 >> Turnin The Fury Runs Deep
    
step
    >>Near Thandol Span, speak to Corma Villard: accept Hearts of the Lost, find Essene, recover her necklace/spellbook/waterskin for Accessories of the Lost, then return Sentiments of the Lost to Corma. Follow the quest links for unverified NPC/object locations.
    .link https://www.wowhead.com/forever/quest=87318 >> View quest details on Wowhead
    .accept 87318 >> Accept Hearts of the Lost

step
    >>Find Essene by the bridge and accept her recovery quest.
    .turnin 87318 >> Turn in Hearts of the Lost
    .accept 88757 >> Accept Accessories of the Lost

step
    >>Complete this stage of the Villard chain before leaving the bridge area.
    .link https://www.wowhead.com/forever/quest=88757 >> View quest details on Wowhead
    .complete 88757,1
    .complete 88757,2
    .complete 88757,3

step
    >>Return Essene's belongings and collect her note.
    .turnin 88757 >> Turn in Accessories of the Lost
    .accept 88758 >> Accept Sentiments of the Lost

step
    >>Complete this stage of the Villard chain before leaving the bridge area.
    .link https://www.wowhead.com/forever/quest=88758 >> View quest details on Wowhead
    .turnin 88758 >> Turn in Sentiments of the Lost

step
    .goto Wetlands,49.9,18.2
    >>Accept The Thandol Span
    .accept 631 >> Accept The Thandol Span

step
    .goto Wetlands,51.2,8
    >>Turnin The Thandol Span
    .turnin 631 >> Turnin The Thandol Span

step
    .goto Wetlands,49.9,18.2
    >>Accept The Thandol Span
    .accept 632 >> Accept The Thandol Span

step
    .goto Wetlands,49.9,18.2
    >>Turnin The Thandol Span
    .turnin 632 >> Turnin The Thandol Span

step
    .goto Wetlands,49.9,18.2
    >>Accept The Thandol Span
    .accept 633 >> Accept The Thandol Span

step
    .goto Arathi Highlands,48.7,88
    >>Cross the bridge and destroy the cache of explosives.
    .complete 633,1

step
    .goto Wetlands,49.9,18.2
    >>Turnin The Thandol Span
    .turnin 633 >> Turnin The Thandol Span

step
    #optional
    >>Optional: accept Plea to the Alliance for a future Refuge Pointe trip and collect Sully Balloo's Letter beneath the bridge for Ironforge. Skip the timed MacKreel Southshore diversion unless deliberately leaving north.
    .accept 637 >> Accept Sully Balloo's Letter from the letter beneath the bridge

step
    .goto Wetlands,56.37,40.40
    >>Turn in the Blisters on the Land objectives saved from loop 2 before preparing for Excavation Site
    .turnin 275 >> Turnin Blisters on The Land

step
    .goto Wetlands,56.37,40.40
    >>Accept Horrors in the Highland
    .accept 95646 >> Accept Horrors in the Highland


step
    >>Visit Howin east of Whelgar. Deliver any remaining Crimson Crate and finish outstanding incisors/eggs. Accept Death to the Dragonmaw when offered.
    .link https://www.wowhead.com/forever/quest=98291 >> View quest details on Wowhead
    .accept 98291 >> Accept Death to the Dragonmaw

step
    >>Collect Forced Disarmament before clearing Dragonmaw Retreat. Use the quest link for the pickup location.
    .link https://www.wowhead.com/forever/quest=98293 >> View quest details on Wowhead
    .accept 98293 >> Accept Forced Disarmament

step
    >>Collect 30 Dragonmaw Armaments while clearing Dragonmaw Retreat for Death to the Dragonmaw.
    #completewith DragonmawRetreatDone
    .complete 98293,1

step
    >>Kill the required Reclaimers, Soulbinders and Infiltrators in Dragonmaw Retreat.
    .complete 98291,1
    .complete 98291,2
    .complete 98291,3

step
    >>Finish collecting all 30 Dragonmaw Armaments before leaving Dragonmaw Retreat.
    #label DragonmawRetreatDone
    .complete 98293,1

step
    >>Return to Howin for the turn-in and Stopping the Cycle pickup. The exact intervening beta prerequisites are not verified; follow his offered chain.
    .link https://www.wowhead.com/forever/quest=98297 >> View quest details on Wowhead
    .turnin 98291 >> Turn in Death to the Dragonmaw
    .accept 98297 >> Accept Stopping the Cycle

step
    >>At Dragonmaw Gates, kill the binding warlocks, then the Subdued Dragonspawn together.
    .complete 98297,1

step
    >>Return Stopping the Cycle to Howin.
    .turnin 98297 >> Turn in Stopping the Cycle

step
    .goto Wetlands,47.45,47.01
    >>Visit the Dragonmaw catapult and defeat Nek'rosh with the trio.
    .turnin 465 >> Turn in Nek'rosh's Gambit
    .accept 474 >> Accept Defeat Nek'rosh

step
    .goto Wetlands,53.2,56
    >>Kill Nek'rosh and loot his head.
    .complete 474,1


step
    >>If carrying Lightforge Iron, do the southern coast chain: Lightforge Iron (321), The Lost Ingots (324), Lightforge Ingots (526), then Blessed Arm (322) to Stormwind. Follow Glorin's successive quests.
    .isOnQuest 321
    .link https://www.wowhead.com/forever/quest=321 >> View quest details on Wowhead
    .turnin 321 >> Turn in Lightforge Iron at the coastal container
    .accept 324 >> Accept The Lost Ingots

step
    >>Kill Bluegill Raiders for the ingots.
    .isOnQuest 324
    .complete 324,1

step
    .goto Wetlands,10.585,60.592
    >>Return the ingots to Glorin and advance his dialogue to Blessed Arm.
    .isOnQuest 324
    .turnin 324 >> Turn in The Lost Ingots
    .accept 526 >> Accept Lightforge Ingots

step
    .goto Wetlands,10.585,60.592
    .isOnQuest 526
    .turnin 526 >> Turn in Lightforge Ingots
    .accept 322 >> Accept Blessed Arm


step
    .goto Wetlands,10.585,60.592
    >>Turnin The Eye of Paleth
    .turnin 292 >> Turnin The Eye of Paleth

step
    .goto Wetlands,10.585,60.592
    >>Accept Cleansing the Eye
    .accept 293 >> Accept Cleansing the Eye


step
    .goto Wetlands,9.861,57.486
    >>Turnin Defeat Nek'rosh
    .turnin 474 >> Turnin Defeat Nek'rosh

step
    .goto Wetlands,9.861,57.486
    >>Deliver the Dragonmaw Armaments to Captain Stoutfist during this Menethil return.
    .turnin 98293 >> Turn in Forced Disarmament

step
    >>Before the dungeon, confirm all three carry Highland Hides, Horrors in the Highland, Lost in the Thicket Things and Songblade Search. Highland Hides needs the Halloran unlocks; Horrors needs Fire Taboo AND Blisters turned in. Collect any missing pickups now.
    +Confirm the party completed this task

step
    >>Go southeast of Whelgar up the new roads to Excavation Site. Enter together with a full dungeon party if needed; exact entrance pin is not verified. Run this dungeon only on this final Wetlands visit.
    +Confirm the party completed this task

step
    >>Inside, loot four Thicket Raptor Hides and the Highland Horror root core.
    .complete 98815,1
    .complete 95646,1

step
    >>Find Ardin Grassman inside and collect his return delivery before leaving.
    .turnin 95647 >> Turn in Lost in the Thicket Things
    .accept 95809 >> Accept Heartwoven

step
    >>Find Daewyn Songblade and accept the Lakeshire return quest.
    .turnin 95772 >> Turn in Songblade Search
    .accept 95795 >> Accept Fallen in the Fen

step
    >>Loot the final boss for the Titan Relic and start Lost Relic Carry. Confirm everyone has the relic/quest before leaving.
    .accept 95810 >> Accept Lost Relic Carry from the Titan Relic
    .complete 95810,1 --Titan Relic

step
    .goto Wetlands,38.809,52.386
    >>Turnin Lost Relic Carry
    .turnin 95810 >> Turnin Lost Relic Carry

step
    .goto Wetlands,38.809,52.386
    >>Accept Prehistoric Prism
    .accept 98824 >> Accept Prehistoric Prism

step
    .goto Wetlands,56.37,40.40
    >>Turn in the dungeon root core to Greenwarden.
    .turnin 95646 >> Turn in Horrors in the Highland

step
    .goto Wetlands,8.509,55.697
    >>Turnin Highland Hides
    .turnin 98815 >> Turnin Highland Hides

step
    .goto Wetlands,11.8,58.6
    >>Turnin Heartwoven
    .turnin 95809 >> Turnin Heartwoven

step
    .goto Wetlands,9.49,59.69
    >>Fly to Ironforge with the Whelgar package and Titan Relic.
    .fly Ironforge

step
    >>In the Hall of Explorers, deliver For Further Study to Historian Karnik and Prehistoric Prism to High Explorer Magellas. The beta has reports of the Titan Relic disappearing; if blocked, retain the follow-up and report it rather than abandoning.

step
    >>Turnin For Further Study
    .turnin 98313 >> Turnin For Further Study

step
    >>Turnin Prehistoric Prism
    .turnin 98824 >> Turnin Prehistoric Prism

step
    >>Turn in Sully Balloo's Letter if collected, then finish the offered Ironforge dialogue deliveries. Complete any outstanding BFD Ironforge turn-in (Knowledge in the Deeps).
    .turnin -637 >> Turn in Sully Balloo's Letter
    .turnin -971 >> Turn in Knowledge in the Deeps

step
    .goto Redridge Mountains,25.6,46.6
    >>Travel to Lakeshire to give Dorin the dungeon news.
    .turnin 95795 >> Turn in Fallen in the Fen

step
    .train 25704,1 -- Skip if Smoked Sagefish is already learned
    .goto 1433/0,-2145.89,-9211.36
    >>Buy |cRXP_BUY_Recipe: Smoked Sagefish|r from |cRXP_FRIENDLY_Barkeep Daniels|r inside the Lakeshire inn before leaving on this final Redridge visit, even if Cooking is below 80. Keep the recipe until you can learn it
    .collect 21099,1 -- Recipe: Smoked Sagefish (1)
    .target Barkeep Daniels

step
    >>Deliver Cleansing the Eye and Blessed Arm in Stormwind when carried; continue the Duskwood Morbent Fel chain on the next Duskwood visit. Finish remaining local/dungeon deliveries.
    +Confirm the party completed this task

]])
