RXPGuides.RegisterGuide([[
#forever
#version 22
<< Alliance
#group Forever Trio Launch
#name 26-27 Redridge Return
#displayname 26-27 Redridge Return
#next 27-27 Darkshire, Eastvale & Tower Turn-ins

-- After the first Wetlands loop and batch hearth to Lakeshire; home is now Menethil Harbor.
-- Plan this return across levels 25-27. Named targets may be +5; sustained farming must stay at +2.
-- A Watchful Eye (94) was picked up at the Tower of Azora before visit 3.
-- Alther's Mill was deferred from visit 3; head there directly after Keeshan's escort this visit.
-- https://www.wowhead.com/forever/quest=98386/althers-mill
-- Sources: https://www.wowhead.com/forever/quest=20/blackrock-menace
-- https://www.wowhead.com/forever/quest=126/howling-in-the-hills
-- https://www.wowhead.com/forever/quest=128/blackrock-bounty
-- https://www.wowhead.com/forever/quest=219/missing-in-action
-- https://www.wowhead.com/forever/quest=91/solomons-law
-- https://www.wowhead.com/forever/quest=115/shadow-magic
-- https://www.wowhead.com/forever/quest=248/looking-further
-- https://www.wowhead.com/forever/quest=249/morganth




step << Warlock
    .skill cooking,<80,1
    .train 25704,1 -- Skip if Smoked Sagefish is already learned
    .goto 1433/0,-2145.89,-9211.36
    >>Buy |cRXP_BUY_Recipe: Smoked Sagefish|r from |cRXP_FRIENDLY_Barkeep Daniels|r inside the Lakeshire inn now that your Cooking is 80 or higher
    .collect 21099,1 -- Recipe: Smoked Sagefish (1)
    .target Barkeep Daniels

step
    .goto Redridge Mountains,21.7, 46.4
    >>Read the |cRXP_PICK_Wanted: Lieutenant Fangore|r poster outside the inn
    .accept 180 >> Accept WANTED: Lieutenant Fangore
step
    .goto Redridge Mountains,21.2,47.3
    >>Accept What Comes Around...
    .accept 386 >> Accept What Comes Around...
    .target Guard Berton


step
    .isOnQuest 146
    .goto 1433/0,-2221.65,-9218.60
    >>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r in the town hall with Lord Ello's reply from the post-RoL Darkshire visit
    .turnin 146 >> Turn in Messenger to Darkshire
    .target Magistrate Solomon
step
    .goto Redridge Mountains,29.72,44.26
    >>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r in the town hall
    .accept 91 >> Accept Solomon's Law
    .target Bailiff Conacher


step
    .goto Redridge Mountains,24.5, 46.2
    >>Read the |cRXP_PICK_Wanted: Gath'Ilzogg|r poster at the town hall entrance
    .accept 169 >> Accept WANTED: Gath'Ilzogg
step
    .goto 1433/0,-2208.600,-9243.500
    >>Read the |cRXP_PICK_Wanted Poster|r before leaving Lakeshire
    .accept 95999 >> Accept WANTED: Incinerator Gar'im
step
    .goto Redridge Mountains,25.6,46.6
    >>Accept Songblade Search
    .accept 95772 >> Accept Songblade Search

step
    .goto 1433/0,-2243.14,-9259.43
    >>Talk to |cRXP_FRIENDLY_Verner Osgood|r after completing Baying on visit 3
    .accept 126 >> Accept Howling in the Hills
    >>Complete Yowler on the way to the northern cave
    .target Verner Osgood
step
    .goto 1433/0,-2268.32,-9279.12
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r after the bridge turn-in on visit 3
    .accept 98386 >> Accept Alther's Mill
    .target Foreman Oslow
step
    .goto 1433/0,-2298.06,-9284.04
    >>Talk to |cRXP_FRIENDLY_Marshal Marris|r after the level-20 circuit. Pick up the Blackrock quests now; finish Menace at Stonewatch Keep at the end of the loop
    .accept 20 >> Accept Blackrock Menace
    .accept 98387 >> Accept Blackrock Blockade
    .target Marshal Marris

step
    .goto Redridge Mountains,31.53,57.85
    >>If you missed the pickup on visit 3, talk to |cRXP_FRIENDLY_Guard Howe|r on the southern approach to Lakeshire
    .accept 128 >> Accept Blackrock Bounty
    .target Guard Howe

    -- Northern loop: Yowler, then the bounty and Keeshan's return to Lakeshire.
step
    .isOnQuest 126
    .goto Redridge Mountains,27.0,21.0
    >>Kill |cRXP_ENEMY_Yowler|r together and loot his paw for each character
    >>Control his nearby guards and interrupt the Mystics' heals, then continue northeast towards Render's Rock
    .complete 126,1 -- Yowler's Paw (1)
    .mob Yowler
step
    .isOnQuest 128
    .goto Redridge Mountains,33.0,6.8
    >>Kill fifteen |cRXP_ENEMY_Blackrock Champions|r in and around Render's Rock while clearing towards Keeshan
    >>Finish the bounty before the escort. Loot any axes that drop, but leave the final Blackrock Menace completion gate for Stonewatch Keep at the end of the loop
    .complete 128,1 -- Blackrock Champion slain (15)
    .mob Blackrock Champion
step
    #optional
    .goto Redridge Mountains,28.39,12.56
    >>Talk to |cRXP_FRIENDLY_Corporal Keeshan|r at the back of the cave when the whole party is beside him
    >>All three players must accept the escort prompt before he departs. Skip the escort if he is absent; do not wait through repeated respawns
    .accept 219 >> Accept Missing In Action
    .target Corporal Keeshan
step
    .isOnQuest 219
    .goto Redridge Mountains,33.41,48.50
    >>Escort |cRXP_FRIENDLY_Corporal Keeshan|r back to Lakeshire. Stay close to him throughout the escort
    >>Watch the camp outside the cave and clear nearby packs during his pause at the entrance; do not run ahead for more bounty kills
    .complete 219,1 -- Escort Corporal Keeshan back to Redridge (1)
    .target Corporal Keeshan
    -- Eastern approach, southern camps, then back north; finish the field loop at the keep.
step
    .isOnQuest 98386
    .goto Redridge Mountains,52.0,46.0
    >>Head straight to Alther's Mill after the escort; save the Lakeshire turn-ins for the end of the loop. Kill twelve |cRXP_ENEMY_Greater Tarantulas|r and destroy six |cRXP_PICK_Tarantula Eggs|r
    .complete 98386,1 -- Greater Tarantula (12)
    .complete 98386,2 -- Tarantula Egg (6)
    .mob Greater Tarantula
step
    #label Visit4Lion
    .isOnQuest 94
    .goto Redridge Mountains,84.3,46.9
    >>Click the |cRXP_PICK_Old Lion Statue|r outside the Tower of Ilgalar
    .turnin 94 >> Turn in A Watchful Eye
step
    .isQuestTurnedIn 94
    .goto Redridge Mountains,84.3,46.9
    >>Click the |cRXP_PICK_Old Lion Statue|r
    .accept 248 >> Accept Looking Further
    -- Stonewatch: orb drops, both named orcs and the jar for Looking Further.
step
    #completewith Visit4SouthEnd
    .isOnQuest 20
    >>Kill |cRXP_ENEMY_Blackrock Grunts|r and |cRXP_ENEMY_Blackrock Outrunners|r during the southern camp and cave clear. Loot their |cRXP_LOOT_Battleworn Axes|r
    >>Do not stop to finish the axes here; the final completion step is by Stonewatch Keep
    .complete 20,1 -- Battleworn Axe (10)
    .mob Blackrock Grunt
    .mob Blackrock Outrunner
step
    #completewith Visit4Incinerator
    .isOnQuest 98387
    >>Collect |cRXP_PICK_Grain Sacks|r, |cRXP_PICK_Meat Haunches|r, |cRXP_PICK_Weapon Racks|r and |cRXP_PICK_Stolen Weapons|r while clearing the southern camp and cave
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #label Visit4Incinerator
    .isOnQuest 95999
    .goto 1433/0,-3261.400,-9824.700
    >>After the Old Lion Statue, head south to the cave and kill |cRXP_ENEMY_Incinerator Gar'im|r together. Loot his |cRXP_LOOT_Broken Staff|r for each character
    .complete 95999,1 -- Broken Staff of Incinerator Gar'im (1)
    .mob Incinerator Gar'im
step
    #label Visit4SouthEnd
    .isOnQuest 98387
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82
    >>Finish Blackrock Blockade in the southern camps, then run back north to resume the eastern loop
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    .isOnQuest 180
    .goto Redridge Mountains,80.3,37.2
    >>Kill |cRXP_ENEMY_Lieutenant Fangore|r together and loot his paw for each character
    >>Fangore is immune to Shadow damage. Isolate him from the surrounding gnolls and control the guards
    .complete 180,1 -- Fangore's Paw (1)
    .mob Lieutenant Fangore

step
    .isOnQuest 248
    .goto Redridge Mountains,63.246,49.840
    >>Clear Stonewatch Tower together, then click |cRXP_PICK_An Empty Jar|r on the barrel at the top
    >>This is the Stonewatch tower, not Morganth's eastern Tower of Ilgalar
    .turnin 248 >> Turn in Looking Further
step
    .isOnQuest 169
    .goto Redridge Mountains,67.0,55.0
    >>Kill |cRXP_ENEMY_Gath'Ilzogg|r upstairs in Stonewatch Keep and loot his head for each character
    >>Control his pet and pull the guards carefully
    .complete 169,1
    .mob Gath'Ilzogg

step
    .isOnQuest 20
    .goto Redridge Mountains,67.0,55.0
    >>Finish collecting ten |cRXP_LOOT_Battleworn Axes|r for each character by |cRXP_PICK_Stonewatch Keep|r as the last objective of the field loop
    >>Keep |cRXP_ENEMY_Tharil'zun|r alive for the kite back to Lakeshire
    .complete 20,1 -- Battleworn Axe (10)
step
    #optional
    .xp <25,1
    .isQuestTurnedIn 248
    .goto Redridge Mountains,84.3,46.9
    >>Return to the |cRXP_PICK_Old Lion Statue|r for the optional Morganth fight
    .accept 249 >> Accept Morganth
    >>Check that everyone is at least 25 and wants the encounter. If the statue does not offer it, skip Morganth and retain the completed tower chain for a future pickup from Theocritus
step
    #optional
    .xp <25,1
    .isOnQuest 249
    .goto Redridge Mountains,80.3,48.1
    >>Clear the Tower of Ilgalar together, then kill |cRXP_ENEMY_Morganth|r and loot his pendant for each character
    >>Control his gnoll guards and demon. Be ready for the summoned abomination, reported at level 30; skip the encounter if it exceeds the party's comfort
    .complete 249,1 -- Pendant of Shadow (1)
    .mob Morganth

step
    .isOnQuest 91
    .goto Redridge Mountains,74.2,42.1
    >>Finish collecting ten |cRXP_LOOT_Shadowhide Pendants|r for each character before returning to Stonewatch Keep for the final clear
    .complete 91,1 -- Shadowhide Pendant (10)
    .mob Shadowhide Gnoll
    .mob Shadowhide Brute
    .mob Shadowhide Warrior
    .mob Shadowhide Slayer
    .mob Shadowhide Darkweaver


step
    .isQuestComplete 20
    .goto Redridge Mountains,66.5,56.0
    >>Pull |cRXP_ENEMY_Tharil'zun|r and kite him back to |cRXP_FRIENDLY_Marshal Marris|r in Lakeshire
    >>Keep him alive while the party turns in Blackrock Menace and accepts the follow-up. Do not kill him until everyone has Tharil'zun in their quest log
    .mob Tharil'zun
step
    .isQuestComplete 20
    .goto 1433/0,-2298.06,-9284.04
    >>Keep Tharil'zun alive while each player talks to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >> Turn in Blackrock Menace
    .target Marshal Marris
step
    .goto 1433/0,-2298.06,-9284.04
    >>Accept the follow-up before killing the kited Tharil'zun. Confirm all three players have accepted it
    .accept 19 >> Accept Tharil'zun
    .target Marshal Marris
step
    .isOnQuest 19
    .goto 1433/0,-2298.06,-9284.04
    >>Once everyone has the quest, kill the kited |cRXP_ENEMY_Tharil'zun|r near Lakeshire and loot his head for each character
    >>If he reset or died before the pickup, return to his Stonewatch spawn at 69.4,59.8 and kill him with the quest active
    .complete 19,1
    .mob Tharil'zun
    -- Lakeshire rewards, then fly to Darkshire. Save the Tower of Azora rewards for after Eastvale.
step
    .isQuestComplete 219
    .goto 1433/0,-2298.06,-9284.04
    .turnin 219 >> Turn in Missing In Action
    .turnin 98387 >> Turn in Blackrock Blockade
    .turnin 19 >> Turn in Tharil'zun
    .target Marshal Marris
step
    .isQuestComplete 98386
    .goto 1433/0,-2268.32,-9279.12
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 98386 >> Turn in Alther's Mill
    .target Foreman Oslow
step
    .isQuestComplete 126
    .goto 1433/0,-2243.14,-9259.43
    >>Turn in Yowler's paw during the final Lakeshire turn-ins
    .turnin 126 >> Turn in Howling in the Hills
    .target Verner Osgood

step
    .isQuestComplete 95999
    .goto 1433/0,-2221.65,-9218.60
    .turnin 95999 >> Turn in WANTED: Incinerator Gar'im
    .turnin 169 >> Turn in WANTED: Gath'Ilzogg
    .turnin 180 >> Turn in WANTED: Lieutenant Fangore
    .target Magistrate Solomon
step
    .isQuestComplete 91
    .goto Redridge Mountains,29.72,44.26
    .turnin 91 >> Turn in Solomon's Law
    .target Bailiff Conacher

step
    #optional
    .itemcount 1962,1
    .use 1962
    .accept 178 >> Accept Theocritus' Retrieval only if the pendant dropped naturally and offers the quest
    >>Skip this if the item does not offer the quest alongside your tower chain
step
    .isQuestComplete 128
    .goto Redridge Mountains,31.53,57.85
    >>Finish the Redridge Lakeshire turn-ins with Guard Howe before flying to Darkshire
    .turnin 128 >> Turn in Blackrock Bounty
    .target Guard Howe
step
    .goto 1433/0,-2234.89,-9435.35
    >>Talk to |cRXP_FRIENDLY_Ariena Stormfeather|r after the Lakeshire turn-ins. Keep the Tower of Azora quests for the Elwynn stop after Eastvale
    .fly Duskwood >> Fly to Darkshire for town turn-ins before Eastvale Logging Camp
    .target Ariena Stormfeather

]])
