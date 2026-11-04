RXPGuides.RegisterGuide([[
#forever
#version 23
#group Forever Trio Launch
#name 30-30 Wetlands Final Loop & Excavation Site
#next 30-32 Gnomeregan & City Deliveries
#displayname 30-30 Wetlands Final Loop & Excavation Site
<< Alliance

step
    .goto 1437/0,-837.37,-3812.66
    >>Talk to Vincent Hyal in Menethil. Keep the follow-up for Clerk Lendry in Theramore; the default 33-34 chapter handles that delivery.
    .turnin 1301 >> Turn in James Hyal
    .accept 1302 >> Accept James Hyal
    .target Vincent Hyal
    .isOnQuest 1301

    -- Finish the Menethil investigation before the outdoor loop.

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
    #completewith FinalFenCreepersDone
    .isOnQuest 275
    >>Kill Fen Creepers along the streams on the way to Dun Modr and on the journey south toward Howin. Keep moving north for the Stockades delivery; finish any remaining kills on the return south.
    .complete 275,1
    .mob Fen Creeper
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.6,18.2
    >>Continue north to Dun Modr and deliver the Stockades objective. Kill Fen Creepers along the streams on the way; finish the remaining kills while heading south toward Howin afterward.
    .turnin 378 >> Turnin The Fury Runs Deep
    .target Motley Garmason
    .unitscan Nightveiled Rotheap::270589

step
    #label FinalFenCreepersDone
    .goto Wetlands,46.6,29.6
    >>Head south from Dun Modr toward Howin, killing the remaining Fen Creepers along the streams. Finish Blisters on the Land before continuing to Howin and Greenwarden.
    .complete 275,1
    .mob Fen Creeper
    .isOnQuest 275
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.6,42.0
    >>Visit Howin before Greenwarden and Dragonmaw Retreat. Deliver the completed quests and collect Death to the Dragonmaw.
    .turnin 98245 >> Turn in Razormaw Needling
    .turnin 98246 >> Turn in Trying Times
    .turnin 98230 >> Turn in This Land Was Their Land
    .accept 98291 >> Accept Death to the Dragonmaw
    .target Howin Kindfeather
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
    .goto Wetlands,49.6,42.0
    >>Return from Dragonmaw Retreat to Howin. Turn in Death to the Dragonmaw and collect Stopping the Cycle before the Carnage, Dragonmaw Gates and eastern golem sweep.
    .link https://www.wowhead.com/forever/quest=98297 >> View quest details on Wowhead
    .turnin 98291 >> Turn in Death to the Dragonmaw
    .accept 98297 >> Accept Stopping the Cycle
    .target Howin Kindfeather
    .unitscan Nightveiled Rotheap::270589

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
    >>After Carnage, continue to Dragonmaw Gates. Kill the binding warlocks, then the Subdued Dragonspawn together. Collect Ados's heart in the same Gates visit before continuing south.
    .complete 98297,1
    .unitscan Nightveiled Rotheap::270589

step
    >>Before leaving Dragonmaw Gates, use the Goaz Stone on Ados and loot its heart. Then continue to Golm beneath Grim Batol, east of Dun Algaz, and collect its heart. Modr and Neru were completed in loop 2; do not return north now.
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
    .goto 1437/0,-2554.900,-3973.300,60
    >>After Musquash Root, head toward the Excavation Site dungeon approach. The waypoint marks the approach area; find the dungeon entrance and enter together.
    >>Carry Highland Hides, Horrors in the Highland, Lost in the Thicket Things and Songblade Search before entering. Horrors in the Highland was picked up from Greenwarden earlier in this loop.
    .unitscan Nightveiled Rotheap::270589
step
    >> Skip up using the tree on the left
    >>Loot the final boss for the Titan Relic and start Lost Relic Carry. Confirm everyone has the relic/quest before leaving.
    .accept 95810 >> Accept Lost Relic Carry from the Titan Relic
    .complete 95810,1 --Titan Relic
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
    .deathskip >> Deathskip out of the dungeon
step
    .goto Wetlands,49.6,42.0
    .turnin 98297 >> Turn in Stopping the Cycle
    .target Howin Kindfeather
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,56.37,40.40
    .turnin 98283 >> Turn in Carnage
    .turnin 95646 >> Turn in Horrors in the Highland
    .target Rethiel the Greenwarden
    .unitscan Nightveiled Rotheap::270589
    *If carrying your first Rotheap Innards, exchange them with Greenwarden for Malignant Root. Keep later Innards for sale.



step
    .goto Wetlands,38.809,52.386
    >>Continue from Howin to Whelgar. Deliver both the completed golem hearts and Titan Relic in one visit
    .turnin 98310 >> Turn in Gleaning Our Future
    .accept 98313 >> Accept For Further Study
    .turnin 95810 >> Turn in Lost Relic Carry
    .accept 98824 >> Accept Prehistoric Prism
    .target Prospector Whelgar
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,8.509,55.697
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

]])
