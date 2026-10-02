RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 15
<< Alliance (Warlock/Priest/Warrior)
#group Forever Trio Launch
#name 20-22 Redridge & Deadmines
#displayname 20-22 Redridge & Deadmines
#next 22-24 Ashenvale, WC & Stonetalon
#defaultfor Gnome (Priest/Warrior)

-- Third Redridge visit: arrive from Darkshore around level 20, with an Astranaar home.
-- Named targets may be up to +5; sustained farming must stay at +2 or below.
-- New quests: https://www.wowhead.com/forever/quest=98386/althers-mill
-- https://www.wowhead.com/forever/quest=98387/blackrock-blockade
-- https://www.wowhead.com/forever/quest=95999/wanted-incinerator-garim
-- Pick up A Watchful Eye at 20 on the Goldshire -> Redridge journey; finish the tower chain on visit 4.
-- Visit 4 groups Yowler with Blackrock Bounty / Missing In Action and the Stonewatch / eastern loops.
step
    >>Regroup in Stormwind after the Astranaar batch. Keep your home in Astranaar for the Stormwind batch after Deadmines
    >>Named targets may be up to five levels above the lowest party member. Farm mobs at +2 or below
    +Check the party's hearth destinations before training and the level-20 Redridge circuit
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Train your class spells

    .target Brother Joshua

step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29

    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin

step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Travel to The Slaughtered Lamb and go downstairs

step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells

    .target Ursula Deline

step << Warlock
    .xp <20,1
    .goto 1453/0,1041.54,-8983.29
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r before departing Stormwind
    .accept 1716 >> Accept Devourer of Souls for the Barrens visit
    .target Gakin the Darkbinder
step
    #optional
    .goto 1453/0,660.28,-8814.55
    >>Visit the Stormwind Auction House and talk to |cRXP_FRIENDLY_Auctioneer Jaxon|r before running to Goldshire
    >>If affordable, buy any missing |cRXP_LOOT_Tough Condor Meat|r and |cRXP_LOOT_Crisp Spider Meat|r for Redridge Goulash. Each character needs five of each; count what is already in your bags
    >>Loot five |cRXP_LOOT_Great Goretusk Snouts|r per character from |cRXP_ENEMY_Great Goretusks|r in Redridge after accepting Redridge Goulash
    >>Collect your purchases from the mailbox before leaving Stormwind and keep them for Chef Breanna in Lakeshire
    >>Skip this step if the items are unavailable or too expensive; loot any missing ingredients during the Redridge circuit
    .collect 1080,5,92,1 >>Buy up to 5 Tough Condor Meat
    .collect 1081,5,92,1 >>Buy up to 5 Crisp Spider Meat
    .target Auctioneer Jaxon
step
    .isOnQuest 118
    .goto 1429/0,87.73,-9456.79
    >>Run to Goldshire and talk to |cRXP_FRIENDLY_Smith Argus|r
    .turnin 118 >> Turn in The Price of Shoes
    .accept 119 >> Accept Return to Verner
    >>Continue east to the Tower of Azora, then deliver the reply in Lakeshire during visit 3
    .target Smith Argus

step
    .xp <20,1
    .goto Elwynn Forest,65.2,69.8
    >>Talk to |cRXP_FRIENDLY_Theocritus|r atop the Tower of Azora on the way to Redridge
    .accept 94 >> Accept A Watchful Eye
    >>Hold this for the eastern and Stonewatch loops on Redridge visit 4, around level 26
    .target Theocritus
step
    .zone Redridge Mountains >> Follow the road east and regroup in Lakeshire for Redridge visit 3
step
    .goto 1433/0,-2243.14,-9259.43
    >>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 119 >> Turn in Return to Verner
    .accept 124 >> Accept A Baying of Gnolls
    .accept 122 >> Accept Underbelly Scales
    .target Verner Osgood
step
    .goto 1433/0,-2221.65,-9218.60
    >>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 121 >> Turn in Messenger to Stormwind
    .accept 143 >> Accept Messenger to Westfall
    .target Magistrate Solomon
step
    .goto 1433/0,-2268.32,-9279.12
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r after the level-16 Lost Tools turn-in
    .accept 89 >> Accept The Everstill Bridge to complete with Baying
    .target Foreman Oslow
step
    .goto 1433/0,-2062.96,-9209.62
    >>Talk to |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Accept Redridge Goulash
    .target Chef Breanna
step
    .goto 1433/0,-2172.59,-9261.02
    >>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .accept 127 >> Accept Selling Fish
    .target Dockmaster Baren
step
    .xp <20,1
    .goto 1433/0,-2172.59,-9261.02
    >>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .accept 150 >> Accept Murloc Poachers
    .target Dockmaster Baren
step
    .goto 1433/0,-2298.06,-9284.04
    >>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 20 >> Accept Blackrock Menace
    .accept 98387 >> Accept Blackrock Blockade
    .target Marshal Marris
step
    #optional
    .goto 1433/0,-2208.60,-9243.50
    >>Read the |cRXP_PICK_Wanted Poster|r
    .accept 95999 >> Accept WANTED: Incinerator Gar'im
    >>Incinerator Gar'im is level 23 elite. Take this if the trio wants the single-target elite fight
step
    #completewith RedridgeFirstReturn
    >>Loot the ingredients from |cRXP_ENEMY_Great Goretusks|r, |cRXP_ENEMY_Dire Condors|r and |cRXP_ENEMY_Tarantulas|r along the route
    >>Each character needs five of each ingredient. Finish the spider meat during Alther's Mill if needed
    .complete 92,1 -- Great Goretusk Snout (5)
    .complete 92,2 -- Tough Condor Meat (5)
    .complete 92,3 -- Crisp Spider Meat (5)
step
    .goto Redridge Mountains,37.0,37.0,50,0
    .goto Redridge Mountains,38.0,32.0,50,0
    .goto Redridge Mountains,34.0,26.0
    >>Kill |cRXP_ENEMY_Redridge Brutes|r and |cRXP_ENEMY_Redridge Mystics|r in the southern canyon camps
    >>Avoid |cRXP_ENEMY_Yowler|r and the deeper northern packs
    .complete 124,1 -- Redridge Brute (10)
    .complete 124,2 -- Redridge Mystic (8)
    .complete 89,1 -- Iron Pike (5)
    .complete 89,2 -- Iron Rivet (5)
    >>Loot bridge supplies for each character during the same gnoll loop
    .mob Redridge Brute
    .mob Redridge Mystic
step
    .goto Redridge Mountains,18.0,52.0,60,0
    .goto Redridge Mountains,12.0,69.0
    >>Kill |cRXP_ENEMY_Black Dragon Whelps|r west and southwest of Lakeshire. Loot scales for each character
    >>Collect nearby Goretusk and Condor ingredients before crossing the lake
    .complete 122,1 -- Underbelly Whelp Scale (5)
    .mob Black Dragon Whelp
step
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82
    >>Cross the lake and kill |cRXP_ENEMY_Blackrock Grunts|r and |cRXP_ENEMY_Blackrock Outrunners|r in the southern camps
    >>Loot axes for each character; stay out of the higher-level eastern Shadowhide camps
    .complete 20,1 -- Battleworn Axe (10)
    >>Loot |cRXP_PICK_Grain Sacks|r and |cRXP_PICK_Meat Haunches|r for supplies, and |cRXP_PICK_Weapon Racks|r and |cRXP_PICK_Stolen Weapons|r
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
    .mob Blackrock Grunt
    .mob Blackrock Outrunner
step
    #optional
    .isOnQuest 95999
    .goto 1433/0,-3261.40,-9824.70
    >>Kill |cRXP_ENEMY_Incinerator Gar'im|r together in the southeastern cave. He is level 23 elite
    >>Clear a retreat path first and loot the quest item for each character. Skip this step and its turn-in if the party declines the fight
    .complete 95999,1
    .mob Incinerator Gar'im
step
    .goto Redridge Mountains,49.0,71.0
    >>Kill lake |cRXP_ENEMY_Murlocs|r. Loot |cRXP_LOOT_Spotted Sunfish|r for each character
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Warrior
    .mob Murloc Shorestriker
step
    .isOnQuest 150
    .goto Redridge Mountains,40.0,45.0
    >>Kill |cRXP_ENEMY_Murlocs|r along the lake and loot their |cRXP_LOOT_Fins|r
    >>Use the lower-level lakeshore packs; avoid pulling several higher-level murlocs together
    .complete 150,1 -- Murloc Fin (8)
    .mob Murloc Warrior
    .mob Murloc Shorestriker
step
    #label RedridgeFirstReturn
    .goto 1433/0,-2298.06,-9284.04
    >>Return to |cRXP_FRIENDLY_Marshal Marris|r with both southern-camp objectives complete
    .turnin 20 >> Turn in Blackrock Menace
    .turnin 98387 >> Turn in Blackrock Blockade
    .target Marshal Marris
step
    .goto 1433/0,-2268.32,-9279.12
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 89 >> Turn in The Everstill Bridge
    .accept 98386 >> Accept Alther's Mill
    .target Foreman Oslow
step
    .goto 1433/0,-2243.14,-9259.43
    >>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 124 >> Turn in A Baying of Gnolls
    .turnin 122 >> Turn in Underbelly Scales
    .target Verner Osgood
step
    .goto 1433/0,-2172.59,-9261.02
    >>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >> Turn in Selling Fish
    .target Dockmaster Baren
step
    .isQuestComplete 150
    .goto 1433/0,-2172.59,-9261.02
    .turnin 150 >> Turn in Murloc Poachers
    .target Dockmaster Baren
step
    .isQuestComplete 95999
    .goto 1433/0,-2221.65,-9218.60
    .turnin 95999 >> Turn in WANTED: Incinerator Gar'im
    .target Magistrate Solomon
step
    #completewith RedridgeNewTurnins
    >>Finish collecting the |cRXP_LOOT_Goulash ingredients|r on the way to Alther's Mill
    .complete 92,1 -- Great Goretusk Snout (5)
    .complete 92,2 -- Tough Condor Meat (5)
    .complete 92,3 -- Crisp Spider Meat (5)
step
    .goto Redridge Mountains,52.0,46.0
    >>Kill twelve |cRXP_ENEMY_Greater Tarantulas|r and destroy six |cRXP_PICK_Tarantula Eggs|r at Alther's Mill
    >>Loot spider meat for Goulash before leaving
    .complete 98386,1 -- Greater Tarantula (12)
    .complete 98386,2 -- Tarantula Egg (6)
    .mob Greater Tarantula
step
    #label RedridgeNewTurnins
    .goto 1433/0,-2268.32,-9279.12
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 98386 >> Turn in Alther's Mill
    .target Foreman Oslow
step
    .goto 1433/0,-2062.96,-9209.62
    >>Finish any missing |cRXP_LOOT_Goulash ingredients|r from the nearby Goretusks, Condors and Tarantulas, then talk to |cRXP_FRIENDLY_Chef Breanna|r
    .complete 92,1
    .complete 92,2
    .complete 92,3
    .turnin 92 >> Turn in Redridge Goulash
    .target Chef Breanna
step
    .xp <20,1
    #optional
    .goto 1433/0,-2045.38,-9245.82
    >>Talk to |cRXP_FRIENDLY_Martie Jainrose|r if the party wants to fight Bellygrub
    .accept 34 >> Accept An Unwelcome Guest
    >>Bellygrub is level 24 and fits the named-target allowance at level 20
    .target Martie Jainrose
step
    .xp <20,1
    #optional
    .isOnQuest 34
    .goto 1433/0,-1911.22,-9288.82
    >>Kill |cRXP_ENEMY_Bellygrub|r together and loot his tusk for each character
    .complete 34,1
    .mob Bellygrub
step
    .isQuestComplete 34
    .goto 1433/0,-2045.38,-9245.82
    .turnin 34 >> Turn in An Unwelcome Guest
    .target Martie Jainrose
step
    .goto 1433/0,-2234.89,-9435.35
    >>Talk to |cRXP_FRIENDLY_Ariena Stormfeather|r and assemble the Deadmines group
    .fly Westfall >> Fly directly to Westfall for Deadmines
    .target Ariena Stormfeather
step
    .goto 1436/0,1045.12,-10508.80
    >>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 143 >> Turn in Messenger to Westfall
    .accept 144 >> Accept Messenger to Westfall
    >>Keep the reply for your next Redridge visit; continue with Deadmines now
    .target Gryan Stoutmantle

step
    .goto 1436/0,1527.42,-11072.77
    .subzone 1581 >> Travel to The Deadmines
step
    #completewith EnterDM
    >>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Bandanas|r
    >>|cRXP_WARN_You may complete this after you enter the Dungeon|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    #completewith next
    >>Kill |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r. Loot them for their |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    >>Start assembling your Deadmines group while completing these quests
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Kill |cRXP_ENEMY_Foreman Thistlenettle|r. Loot him for his |cRXP_LOOT_Badge|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Kill |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r. Loot them for their |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    >>Start assembling your Deadmines group while completing this quest
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Enter The Deadmines Dungeon
step
    #completewith DMend
    >>Kill the |cRXP_ENEMY_Defias|r inside The Deadmines. Loot them for their |cRXP_LOOT_Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    >>Kill |cRXP_ENEMY_Sneed|r. Loot him for the |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
    >>Kill |cRXP_ENEMY_Edwin VanCleef|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 166,1 -- Head of VanCleef (1)
step
    >>Loot |cRXP_ENEMY_Edwin VanCleef|r for |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r]. Keep it for the Stormwind turn-in after the run
    .collect 2874,1,373 -- An Unsent Letter (1)
step
    >>Finish collecting |cRXP_LOOT_Red Silk Bandanas|r before leaving the dungeon
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    .isOnQuest 14
    .zone Westfall >> Take the rear exit from Deadmines to Westfall
    >>Continue into the Dagger Hills after taking the rear exit; keep the party together for the final People's Militia kills
step
    .isOnQuest 14
    .goto Westfall,48.0,77.0,60,0
    .goto Westfall,44.0,69.0
    >>Kill |cRXP_ENEMY_Defias Highwaymen|r, |cRXP_ENEMY_Defias Pathstalkers|r and |cRXP_ENEMY_Defias Knuckledusters|r in the Dagger Hills and around Demont's Place
    >>Finish all three objectives before returning to Sentinel Hill
    .complete 14,1 -- Defias Highwayman slain (15)
    .mob +Defias Highwayman
    .complete 14,2 -- Defias Pathstalker slain (5)
    .mob +Defias Pathstalker
    .complete 14,3 -- Defias Knuckleduster slain (5)
    .mob +Defias Knuckleduster
step
    #label DMend
    #completewith next
    .goto 1436/0,1045.12,-10508.80,100 >> Travel to Sentinel Hill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r and |cRXP_FRIENDLY_Scout Riell|r atop the Tower
    .turnin 14 >> Turn in The People's Militia
    .turnin 166 >> Turn in The Defias Brotherhood
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin -214 >> Turn in Red Silk Bandanas
    .target +Scout Riell
    .goto 1436/0,1033.22,-10504.83

step
    .goto 1436/0,1037.42,-10628.27
    >>Talk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind for all Deadmines turn-ins
    .target Thor
step
    .itemcount 2874,1
    .use 2874
    .accept 373 >> Accept The Unsent Letter

step
    .goto 1453/0,734.66,-8555.94,10,0
    .goto 1453/0,719.68,-8550.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >> Turn in The Unsent Letter
    .isOnQuest 373
    .target Baros Alexston

step
    .isQuestTurnedIn 373
    .goto 1453/0,719.68,-8550.31
    >>Talk to |cRXP_FRIENDLY_Baros Alexston|r

    .accept 389 >> Accept Bazil Thredd
    .target Baros Alexston

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r and |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 167 >> Turn in Oh Brother. . .
    .turnin 168 >> Turn in Collecting Memories
    .target +Wilder Thistlenettle
    .goto 1453/0,501.31,-8468.65
    .turnin 2040 >> Turn in Underground Assault
    .target +Shoni the Shilent
    .goto 1453/0,634.700,-8390.800

step
    .goto 1453/0,810.53,-8809.81,10,0
    .goto 1453/0,828.45,-8799.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 389 >> Turn in Bazil Thredd
    .isOnQuest 389
--  .accept 391 >> Accept The Stockade Riots -- Accept later when going to do Stockades
    .target Warden Thelwater

step
    .goto 1453/0,673.58,-8867.76
    >>Talk to |cRXP_FRIENDLY_Innkeeper Allison|r after completing all Deadmines turn-ins. Your current home must be Astranaar
    >>Wait until Hearthstone is ready. Open the bind confirmation, cast Hearthstone, then confirm the Stormwind bind at the end of the cast within the batching window
    >>You should arrive in Astranaar with your home now set to Stormwind. Do not confirm the bind before casting
    .bindlocation 415,1
    .hsbatching >> Batch Hearthstone from Stormwind to Astranaar, setting your new home to Stormwind
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> Batching reference
    .target Innkeeper Allison
step
    >>Check that every character is in Astranaar and now bound to Stormwind. Keep the Stormwind bind through Wailing Caverns, the Sleeping Bag finish and Ruins of Lordaeron
    >>If you remain in Stormwind, set your home there normally before leaving, take the Auberdine boat and fly to Astranaar
    >>If you arrive in Astranaar still bound there, return to Stormwind and set your home there before continuing, then use the boat back to Astranaar
    >>If your current home is not Astranaar, skip the batch and use that boat route with a Stormwind bind
    +Verify the Stormwind return bind or choose the boat fallback
step
    .zone Ashenvale >> Regroup in Astranaar for the existing Ashenvale route into Wailing Caverns

]])
