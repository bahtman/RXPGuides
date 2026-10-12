RXPGuides.RegisterGuide([[
#forever
#version 19
#group Forever Trio Launch
#name 30 Wetlands Final Loop & Excavation Site
#next 30-32 Gnomeregan & City Deliveries
#displayname 30 Wetlands Final Loop & Excavation Site
<< Alliance

step
    .goto Wetlands,10.69,60.95,60
    >>Keep Menethil as home. Lightforge was completed before Stockades. This final circuit runs Howin, streams and Greenwarden, eastern objectives and Excavation Site, then Whelgar -> Howin -> Greenwarden, Stopping the Cycle, Dun Modr and the bridge. Hearth only after MacKreel and the underwater letter; finish with Menethil turn-ins and the Southshore boat.
    >>Carry Highland Hides, the two northern golem hearts, This Land Was Their Land and five Swiftness Potions each. Keep Ironforge, Lakeshire and Stormwind deliveries for later routes.
    .unitscan Nightveiled Rotheap::270589
    *Watch for Nightveiled Rotheap on coastal and inland passes. Keep the first Rotheap Innards for Greenwarden's Malignant Root; save later drops to sell. Innards are Unique: one per player at a time. No camping detour is required.

    -- Finish Connor's breadcrumb before the outdoor loop and Moonshine timer.
step
    .goto 1437/0,-837.37,-3812.66
    >>Talk to Vincent Hyal in Menethil. Keep the follow-up for Clerk Lendry in Theramore; the default 33-34 chapter handles that delivery.
    .turnin 1301 >> Turn in James Hyal
    .accept 1302 >> Accept James Hyal
    .target Vincent Hyal
    .isOnQuest 1301

    -- Finish the Menethil investigation before the outdoor loop and timed Moonshine departure.
step
    .goto 1437/0,-827.90,-3822.86
    >>Gather all three at |cRXP_FRIENDLY_Mikhail|r inside the inn before accepting the follow-up. |cRXP_ENEMY_Tapoke "Slim" Jahn|r will stealth and flee through the entrance; have the Warrior and Warlock ready outside
    .turnin 1248 >> Turn in The Missing Diplomat
    .accept 1249,1 >> Accept The Missing Diplomat
    .target Mikhail

step
    .goto 1437/0,-836.00,-3791.08
    >>Quickly follow |cRXP_ENEMY_Tapoke "Slim" Jahn|r outside and subdue him together. Control his friend if needed and focus Slim until he submits
    .complete 1249,1
    .mob Tapoke "Slim" Jahn

step
    .goto 1437/0,-827.90,-3822.86
    >>Return to |cRXP_FRIENDLY_Mikhail|r and wait for the conversation to finish
    .turnin 1249 >> Turn in The Missing Diplomat
    .target Mikhail

step
    .goto 1437/0,-825.66,-3808.830
    >>Speak to |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r after the conversation
    .accept 1250 >> Accept The Missing Diplomat
    .target Tapoke "Slim" Jahn

step
    .goto 1437/0,-827.90,-3822.86
    >>Speak to |cRXP_FRIENDLY_Mikhail|r again. Keep the Theramore delivery for a later Dustwallow visit; continue the Wetlands circuit now
    .turnin 1250 >> Turn in The Missing Diplomat
    .accept 1264 >> Accept The Missing Diplomat
    .target Mikhail

step
    >>Follow the road east to Howin before going to Greenwarden. Deliver This Land Was Their Land, then collect Death to the Dragonmaw. The Raptor Ridge supply quests were turned in during loop 2.
    .link https://www.wowhead.com/forever/npc=270637/howin-kindfeather >> View Howin's location
    .turnin 98230 >> Turn in This Land Was Their Land
    .accept 98291 >> Accept Death to the Dragonmaw
    .target Howin Kindfeather
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,46.6,29.6
    >>Finish Blisters on the Land along the streams while approaching Greenwarden. Complete the Fen Creeper kills before visiting him.
    .complete 275,1
    .mob Fen Creeper
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,56.37,40.40
    >>Turn in the Blisters on the Land objectives just completed along the streams before preparing for Excavation Site
    .turnin 275 >> Turnin Blisters on The Land
    .unitscan Nightveiled Rotheap::270589
    *If carrying your first Rotheap Innards, exchange them with Greenwarden for Malignant Root. Keep later Innards for sale.

step
    .goto Wetlands,56.37,40.40
    >>Accept Horrors in the Highland
    .accept 95646 >> Accept Horrors in the Highland
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,56.37,40.40
    >>After turning in Blisters on the Land, accept Carnage. Save its turn-in to combine with the dungeon root core after Excavation Site.
    .accept 98283 >> Accept Carnage
    .target Rethiel the Greenwarden
    .unitscan Nightveiled Rotheap::270589

step
    >>Head east to Dragonmaw Retreat. Loot the quest-starting armaments crate at the entrance before beginning the Death to the Dragonmaw clear. Exact beta crate pins vary; use the quest link.
    .link https://www.wowhead.com/forever/quest=98293/forced-disarmament >> View crate pickup
    .accept 98293 >> Accept Forced Disarmament
    .unitscan Nightveiled Rotheap::270589

step
    >>Loot the armaments crates for 30 Dragonmaw Armaments while clearing Dragonmaw Retreat for Death to the Dragonmaw.
    #completewith DragonmawRetreatDone
    .complete 98293,1
    .unitscan Nightveiled Rotheap::270589

step
    >>Kill the required Reclaimers, Soulbinders and Infiltrators in Dragonmaw Retreat.
    .complete 98291,1
    .complete 98291,2
    .complete 98291,3
    .unitscan Nightveiled Rotheap::270589

step
    >>Finish collecting all 30 Dragonmaw Armaments before leaving Dragonmaw Retreat.
    #label DragonmawRetreatDone
    .complete 98293,1
    .unitscan Nightveiled Rotheap::270589

step
    >>Continue through the eastern objectives for Ados at Dragonmaw Gates and Golm beneath Grim Batol, east of Dun Algaz. Use the Goaz Stone and loot both hearts. Modr and Neru were completed in loop 2; do not return north now.
    .complete 98310,1 -- Heart of Ados
    .complete 98310,3 -- Heart of Golm
    .mob Ados
    .mob Golm
    .unitscan Nightveiled Rotheap::270589

step
    .goto 1437/0,-3068.51,-4223.65
    >>After the eastern golem objectives, loot Musquash Root between the waterfalls below Stonewrought Dam, around Wetlands 64.75,75.32. Approach from the Wetlands side; do not jump down from Loch Modan.
    >>Keep the root and the Duskwood flower for Zardeth during the Gnomeregan Stormwind deliveries.
    .complete 335,2 -- Musquash Root (1)
    .isOnQuest 335

step
    >>Kill diseased bears below Raptor Ridge for Malignant Rotclaw Flesh before entering Carnage's cave.
    .complete 98283,1 -- Malignant Rotclaw Flesh
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,69.5,34.7
    >>Enter Carnage's cave at Raptor Ridge. Use the Malignant Rotclaw Flesh to summon Carnage, defeat it together and loot its head. This entrance pin comes from a beta player report.
    .complete 98283,2 -- Carnage's Head
    .mob Carnage
    .unitscan Nightveiled Rotheap::270589

step
    >>Before the dungeon, confirm all three carry Highland Hides, Horrors in the Highland, Lost in the Thicket Things and Songblade Search. Highland Hides unlocks after Young Crocolisk Skins; Horrors needs Fire Taboo AND Blisters turned in. Collect any missing pickups now.
    +Confirm the party completed this task
    .unitscan Nightveiled Rotheap::270589

step
    >>Go southeast of Whelgar up the new roads to Excavation Site. Enter together with a full dungeon party if needed; exact entrance pin is not verified. Run this dungeon only on this final Wetlands visit.
    +Confirm the party completed this task
    .unitscan Nightveiled Rotheap::270589

step
    >>Inside, loot four Thicket Raptor Hides and the Highland Horror root core.
    .complete 98815,1
    .complete 95646,1
    .unitscan Nightveiled Rotheap::270589

step
    >>Find Ardin Grassman inside and collect his return delivery before leaving.
    .turnin 95647 >> Turn in Lost in the Thicket Things
    .accept 95809 >> Accept Heartwoven
    .unitscan Nightveiled Rotheap::270589

step
    >>Find Daewyn Songblade and accept the Lakeshire return quest.
    .turnin 95772 >> Turn in Songblade Search
    .accept 95795 >> Accept Fallen in the Fen
    .unitscan Nightveiled Rotheap::270589

step
    >>Loot the final boss for the Titan Relic and start Lost Relic Carry. Confirm everyone has the relic/quest before leaving.
    .accept 95810 >> Accept Lost Relic Carry from the Titan Relic
    .complete 95810,1 --Titan Relic
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,38.809,52.386
    >>After the dungeon, deliver both the completed golem hearts and Titan Relic to Whelgar in one visit. Retain the Ironforge deliveries for a later city visit.
    .turnin 98310 >> Turn in Gleaning Our Future
    .accept 98313 >> Accept For Further Study
    .turnin 95810 >> Turn in Lost Relic Carry
    .accept 98824 >> Accept Prehistoric Prism
    .target Prospector Whelgar
    .unitscan Nightveiled Rotheap::270589

step
    >>From Whelgar, visit Howin next. Turn in Death to the Dragonmaw and collect Stopping the Cycle; visit Greenwarden before heading back to Dragonmaw Gates.
    .link https://www.wowhead.com/forever/quest=98297 >> View quest details on Wowhead
    .turnin 98291 >> Turn in Death to the Dragonmaw
    .accept 98297 >> Accept Stopping the Cycle
    .target Howin Kindfeather
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,56.37,40.40
    >>Continue from Howin to Greenwarden. Deliver Carnage's head and the dungeon root core together before going east for Stopping the Cycle.
    .turnin 98283 >> Turn in Carnage
    .turnin 95646 >> Turn in Horrors in the Highland
    .target Rethiel the Greenwarden
    .unitscan Nightveiled Rotheap::270589
    *If carrying your first Rotheap Innards, exchange them with Greenwarden for Malignant Root. Keep later Innards for sale.

step
    >>At Dragonmaw Gates, kill the binding warlocks, then the Subdued Dragonspawn together.
    .complete 98297,1
    .unitscan Nightveiled Rotheap::270589

step
    >>Return Stopping the Cycle to Howin.
    .turnin 98297 >> Turn in Stopping the Cycle
    .target Howin Kindfeather
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.6,18.2
    >>After returning Stopping the Cycle to Howin, continue north to Dun Modr and deliver the Stockades objective before the bridge circuit.
    .turnin 378 >> Turnin The Fury Runs Deep
    .target Motley Garmason
    .unitscan Nightveiled Rotheap::270589

step
    >>Near Thandol Span, speak to Corma Villard: accept Hearts of the Lost, find Essene, recover her necklace/spellbook/waterskin for Accessories of the Lost, then return Sentiments of the Lost to Corma. Follow the quest links for unverified NPC/object locations.
    .link https://www.wowhead.com/forever/quest=87318 >> View quest details on Wowhead
    .accept 87318 >> Accept Hearts of the Lost
    .unitscan Nightveiled Rotheap::270589

step
    >>Find Essene by the bridge and accept her recovery quest.
    .turnin 87318 >> Turn in Hearts of the Lost
    .accept 88757 >> Accept Accessories of the Lost
    .unitscan Nightveiled Rotheap::270589

step
    >>Complete this stage of the Villard chain before leaving the bridge area.
    .link https://www.wowhead.com/forever/quest=88757 >> View quest details on Wowhead
    .complete 88757,1
    .complete 88757,2
    .complete 88757,3
    .unitscan Nightveiled Rotheap::270589

step
    >>Return Essene's belongings and collect her note.
    .turnin 88757 >> Turn in Accessories of the Lost
    .accept 88758 >> Accept Sentiments of the Lost
    .unitscan Nightveiled Rotheap::270589

step
    >>Complete this stage of the Villard chain before leaving the bridge area.
    .link https://www.wowhead.com/forever/quest=88758 >> View quest details on Wowhead
    .turnin 88758 >> Turn in Sentiments of the Lost
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.908,18.233
    .accept 631 >> Accept The Thandol Span
    .target Rhag Garmason
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,51.287,7.953
    >>Descend the spiral staircase in the bridge pylon and inspect Ebenezer Rustlocke's corpse. Accept the parchment delivery here before returning to Rhag.
    .turnin 631 >> Turn in The Thandol Span
    .accept 632 >> Accept The Thandol Span
    .target Ebenezer Rustlocke's Corpse
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.908,18.233
    >>Return the parchment to Rhag and accept the explosives objective.
    .turnin 632 >> Turn in The Thandol Span
    .accept 633 >> Accept The Thandol Span
    .target Rhag Garmason
    .unitscan Nightveiled Rotheap::270589

step
    .goto Arathi Highlands,48.789,88.058
    >>Cross the bridge and destroy the cache of explosives before starting the timed Moonshine delivery.
    .complete 633,1
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.908,18.233
    >>Finish the Thandol Span turn-ins before the MacKreel jump. Accept Plea To The Alliance and keep it for a later visit to Captain Nials at Refuge Pointe; continue to MacKreel now.
    .turnin 633 >> Turn in The Thandol Span
    .accept 634 >> Accept Plea To The Alliance
    .target Rhag Garmason
    .unitscan Nightveiled Rotheap::270589

step
    >>Confirm everyone's Hearthstone is ready and still bound to Menethil. Keep a Swiftness Potion ready for the jump. Moonshine has a 15-minute timer covering the letter, hearth, Menethil turn-ins, boat wait and crossing; move together without shopping detours.
    +Confirm the party is ready for the timed Southshore delivery
    .unitscan Nightveiled Rotheap::270589

step
    .goto Arathi Highlands,43.240,92.643
    >>Use a Swiftness Potion for the broken-bridge jump to Foggy MacKreel. Regroup at MacKreel, then accept the timed delivery before dropping into the water for Sully's letter.
    .use 2459
    .accept 647 >> Accept MacKreel's Moonshine
    .target Foggy MacKreel
    .unitscan Nightveiled Rotheap::270589

step
    .goto Arathi Highlands,44.28,92.877
    >>Drop into the water and dive to the Waterlogged Letter. Loot and use the Waterlogged Envelope to accept Sully Balloo's Letter, then hearth immediately. Keep the Ironforge letter delivery for later.
    .collect 4433,1,637
    .use 4433
    .accept 637 >> Accept Sully Balloo's Letter
    .unitscan Nightveiled Rotheap::270589

step
    >>Hearth to Menethil Harbor. Keep moving: complete the grouped turn-ins and board the Southshore boat while the Moonshine timer runs.
    .hs >> Hearth to Menethil Harbor
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,8.509,55.697
    >>Turnin Highland Hides
    .turnin 98815 >> Turnin Highland Hides
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,11.8,58.6
    >>Turnin Heartwoven
    .turnin 95809 >> Turnin Heartwoven
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,9.861,57.486
    >>Deliver the Dragonmaw Armaments to Captain Stoutfist during this Menethil return.
    .turnin 98293 >> Turn in Forced Disarmament
    .unitscan Nightveiled Rotheap::270589

step
    >>Board the boat bound for Southshore and disembark there. Watch the Moonshine timer; this is the departure from Wetlands, so save Ironforge, Lakeshire and Stormwind deliveries for later.
    .zone Hillsbrad Foothills >> Take the boat to Southshore
    .unitscan Nightveiled Rotheap::270589

step
    .goto Hillsbrad Foothills,52.1,58.7
    >>Go straight to Brewmeister Bilger in the Southshore inn cellar and deliver the Moonshine before its timer expires.
    .turnin 647 >> Turn in MacKreel's Moonshine
    .target Brewmeister Bilger

]])
