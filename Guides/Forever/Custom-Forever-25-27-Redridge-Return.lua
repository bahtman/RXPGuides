RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 12
<< Alliance (Warlock/Priest/Warrior)
#group Forever Trio Launch
#name 25-27 Redridge Return
#displayname 25-27 Redridge Return
#next 27 Darkshire, Eastvale & Tower Turn-ins

-- After the first Wetlands loop and batch hearth to Lakeshire; home is now Menethil Harbor.
-- Plan this return across levels 25-27. Named targets may be +5; sustained farming must stay at +2.
-- A Watchful Eye (94) was picked up at the Tower of Azora before visit 3.
-- Alther's Mill was deferred from visit 3; complete it on the eastern approach this visit.
-- https://www.wowhead.com/forever/quest=98386/althers-mill
-- Sources: https://www.wowhead.com/forever/quest=126/howling-in-the-hills
-- https://www.wowhead.com/forever/quest=128/blackrock-bounty
-- https://www.wowhead.com/forever/quest=219/missing-in-action
-- https://www.wowhead.com/forever/quest=91/solomons-law
-- https://www.wowhead.com/forever/quest=115/shadow-magic
-- https://www.wowhead.com/forever/quest=248/looking-further
-- https://www.wowhead.com/forever/quest=249/morganth

step
    .goto Redridge Mountains,25.6,46.6
    >>Accept Songblade Search
    .accept 95772 >> Accept Songblade Search

step
    .goto Redridge Mountains,26,46
    >>Accept What Comes Around...
    .accept 386 >> Accept What Comes Around...

step
    >>Start this level-26 Redridge visit after the first Wetlands loop and batch hearth to Lakeshire
    >>Keep your new home in Menethil Harbor for the return after Darkshire, Eastvale and the Tower of Azora. The northern orcs are level 24-25; the eastern gnolls reach 26. Everyone should be at least 24 before farming the full circuit
    >>Named targets may be +5, but farm only mobs at +2 or below. Morganth's summoned add can be level 30; reserve that optional encounter until everyone is at least 25
    +Check the party's levels and prepare for the northern cave, Stonewatch and eastern loops
step
    .goto Redridge Mountains,27.01,44.82,60
    >>Regroup in Lakeshire after the batch hearth from Menethil Harbor
step
    .skill cooking,<80,1
    .train 25704,1 -- Skip if Smoked Sagefish is already learned
    .goto 1433/0,-2145.89,-9211.36
    >>Buy |cRXP_BUY_Recipe: Smoked Sagefish|r from |cRXP_FRIENDLY_Barkeep Daniels|r inside the Lakeshire inn now that your Cooking is 80 or higher
    .collect 21099,1 -- Recipe: Smoked Sagefish (1)
    .target Barkeep Daniels

step
    .goto Redridge Mountains,31.53,57.85
    >>Talk to |cRXP_FRIENDLY_Guard Howe|r on the southern approach to Lakeshire
    .accept 128 >> Accept Blackrock Bounty
    .target Guard Howe
step
    .goto 1433/0,-2298.06,-9284.04
    >>Talk to |cRXP_FRIENDLY_Marshal Marris|r after the Blackrock Menace and Blockade turn-ins on visit 3
    .accept 115 >> Accept Shadow Magic
    .accept 19 >> Accept Tharil'zun
    .target Marshal Marris
step
    .goto 1433/0,-2268.32,-9279.12
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r after the bridge turn-in on visit 3
    .accept 98386 >> Accept Alther's Mill
    .target Foreman Oslow
step
    .goto 1433/0,-2243.14,-9259.43
    >>Talk to |cRXP_FRIENDLY_Verner Osgood|r after completing Baying on visit 3
    .accept 126 >> Accept Howling in the Hills
    >>Complete Yowler on the way to the northern cave
    .target Verner Osgood
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
    .goto Redridge Mountains,29.5,46.1
    >>Read the |cRXP_PICK_Wanted: Gath'Ilzogg|r poster at the town hall entrance
    .accept 169 >> Accept WANTED: Gath'Ilzogg
step
    .goto Redridge Mountains,26.8,46.4
    >>Read the |cRXP_PICK_Wanted: Lieutenant Fangore|r poster outside the inn
    .accept 180 >> Accept WANTED: Lieutenant Fangore

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
    >>Finish the bounty before starting the escort so everyone can stay close to Keeshan on the way out
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
step
    .isQuestComplete 219
    .goto 1433/0,-2298.06,-9284.04
    .turnin 219 >> Turn in Missing In Action
    .target Marshal Marris
step
    .isQuestComplete 126
    .goto 1433/0,-2243.14,-9259.43
    .turnin 126 >> Turn in Howling in the Hills
    .target Verner Osgood
step
    .isQuestComplete 128
    .goto Redridge Mountains,31.53,57.85
    .turnin 128 >> Turn in Blackrock Bounty
    .target Guard Howe

-- Eastern approach unlocks Looking Further before the Stonewatch clear.
step
    .isOnQuest 98386
    .goto Redridge Mountains,52.0,46.0
    >>Stop at Alther's Mill on the way east. Kill twelve |cRXP_ENEMY_Greater Tarantulas|r and destroy six |cRXP_PICK_Tarantula Eggs|r
    .complete 98386,1 -- Greater Tarantula (12)
    .complete 98386,2 -- Tarantula Egg (6)
    .mob Greater Tarantula
step
    #completewith Visit4Lion
    .isOnQuest 91
    >>Kill |cRXP_ENEMY_Shadowhide Gnolls|r on the eastern approach and loot ten pendants for each character
    >>Only farm mobs at +2 or below the lowest party member. Save any naturally dropped Glowing Shadowhide Pendant; do not farm extra for the rare item
    .complete 91,1 -- Shadowhide Pendant (10)
    .mob Shadowhide Gnoll
    .mob Shadowhide Brute
    .mob Shadowhide Warrior
    .mob Shadowhide Slayer
    .mob Shadowhide Darkweaver
step
    .isOnQuest 180
    .goto Redridge Mountains,80.3,37.2
    >>Kill |cRXP_ENEMY_Lieutenant Fangore|r together and loot his paw for each character
    >>Fangore is immune to Shadow damage. Isolate him from the surrounding gnolls and control the guards
    .complete 180,1 -- Fangore's Paw (1)
    .mob Lieutenant Fangore
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
step
    .isOnQuest 91
    .goto Redridge Mountains,74.2,42.1
    >>Finish collecting ten |cRXP_LOOT_Shadowhide Pendants|r for each character before leaving the eastern camps
    .complete 91,1 -- Shadowhide Pendant (10)
    .mob Shadowhide Gnoll
    .mob Shadowhide Brute
    .mob Shadowhide Warrior
    .mob Shadowhide Slayer
    .mob Shadowhide Darkweaver

-- Stonewatch: orb drops, both named orcs and the jar for Looking Further.
step
    #completewith Visit4StonewatchEnd
    .isOnQuest 115
    >>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r during the Stonewatch clear and loot three orbs for each character
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
step
    .isOnQuest 248
    .goto Redridge Mountains,63.246,49.840
    >>Clear Stonewatch Tower together, then click |cRXP_PICK_An Empty Jar|r on the barrel at the top
    >>This is the Stonewatch tower, not Morganth's eastern Tower of Ilgalar
    .turnin 248 >> Turn in Looking Further
step
    .isOnQuest 19
    .goto Redridge Mountains,69.4,59.8
    >>Kill |cRXP_ENEMY_Tharil'zun|r together and loot his head for each character
    .complete 19,1
    .mob Tharil'zun
step
    .isOnQuest 169
    .goto Redridge Mountains,67.0,55.0
    >>Kill |cRXP_ENEMY_Gath'Ilzogg|r upstairs in Stonewatch Keep and loot his head for each character
    >>Control his pet and pull the guards carefully
    .complete 169,1
    .mob Gath'Ilzogg
step
    #label Visit4StonewatchEnd
    .isOnQuest 115
    .goto Redridge Mountains,66.0,55.0
    >>Finish collecting three |cRXP_LOOT_Midnight Orbs|r for each character from |cRXP_ENEMY_Blackrock Shadowcasters|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
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

-- Lakeshire rewards, then fly to Darkshire. Save the Tower of Azora rewards for after Eastvale.
step
    .isQuestComplete 115
    .goto 1433/0,-2298.06,-9284.04
    .turnin 115 >> Turn in Shadow Magic
    .target Marshal Marris
step
    .isQuestComplete 19
    .goto 1433/0,-2298.06,-9284.04
    .turnin 19 >> Turn in Tharil'zun
    .target Marshal Marris
step
    .isQuestComplete 98386
    .goto 1433/0,-2268.32,-9279.12
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 98386 >> Turn in Alther's Mill
    .target Foreman Oslow
step
    .isQuestComplete 169
    .goto 1433/0,-2221.65,-9218.60
    .turnin 169 >> Turn in WANTED: Gath'Ilzogg
    .target Magistrate Solomon
step
    .isQuestComplete 180
    .goto 1433/0,-2221.65,-9218.60
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
    .goto 1433/0,-2234.89,-9435.35
    >>Talk to |cRXP_FRIENDLY_Ariena Stormfeather|r after the Lakeshire turn-ins. Keep the Tower of Azora quests for the Elwynn stop after Eastvale
    .fly Duskwood >> Fly to Darkshire for town turn-ins before Eastvale Logging Camp
    .target Ariena Stormfeather

]])
