RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 22
<< Alliance (Warlock/Priest/Warrior)
#group Forever Trio Launch
#name 20-21 Redridge
#displayname 20-21 Redridge
#next 21 Duskwood & Defias Escort
#defaultfor Gnome (Priest/Warrior)

-- Third Redridge visit: arrive after the immediate Ashenvale loop and Stormwind hearth, around level 20.
-- Named targets may be up to +5; sustained farming must stay at +2 or below.
-- New quests: https://www.wowhead.com/forever/quest=98387/blackrock-blockade
-- https://www.wowhead.com/forever/quest=95999/wanted-incinerator-garim
-- Pick up A Watchful Eye at 20 on the Goldshire -> Redridge journey; finish the tower chain on visit 4.
-- Visit 4 groups Yowler with Blackrock Bounty / Missing In Action and the Stonewatch / eastern loops.
-- Alther's Mill is deferred to visit 4; pick it up then after this visit's bridge turn-in.
step
    >>Regroup in Stormwind after Ashenvale. Set your home to Lakeshire during this visit for the Ruins of Lordaeron return
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

step
    #optional
    .goto 1453/0,660.28,-8814.55
    >>Visit the Stormwind Auction House and talk to |cRXP_FRIENDLY_Auctioneer Jaxon|r before running to Goldshire
    >>If affordable, buy any missing |cRXP_LOOT_Tough Condor Meat|r and |cRXP_LOOT_Crisp Spider Meat|r for Redridge Goulash. Each character needs five of each; count what is already in your bags
    >>Keep the |cRXP_LOOT_Great Goretusk Snouts|r collected during the level-16 visit. Loot any missing snouts from |cRXP_ENEMY_Great Goretusks|r in Redridge; each character needs five total
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
    .goto Redridge Mountains,27.01,44.82
    >>Talk to |cRXP_FRIENDLY_Innkeeper Brianna|r inside the Lakeshire inn. Each player must bind here before leaving Redridge
    .home 69 >> Set your Hearthstone to Lakeshire for the return after RoL
    .target Innkeeper Brianna

step
    .goto 1433/0,-2298.06,-9284.04
    >>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 20 >> Accept Blackrock Menace
    .accept 98387 >> Accept Blackrock Blockade
    .target Marshal Marris

step
    .goto 1433/0,-2268.32,-9279.12
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r after the level-16 Lost Tools turn-in
    .accept 89 >> Accept The Everstill Bridge to complete with Baying
    .target Foreman Oslow
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
    #optional
    .goto 1433/0,-2208.60,-9243.50
    >>Read the |cRXP_PICK_Wanted Poster|r
    .accept 95999 >> Accept WANTED: Incinerator Gar'im
    >>Incinerator Gar'im is level 23 elite. Take this if the trio wants the single-target elite fight

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
    .isQuestAvailable 92
    .goto 1433/0,-2062.96,-9209.62
    >>Talk to |cRXP_FRIENDLY_Chef Breanna|r if you missed the level-16 pickup
    .accept 92 >> Accept Redridge Goulash if needed
    .target Chef Breanna


step
    #completewith RedridgeReturnGoulash
    >>Kill |cRXP_ENEMY_Great Goretusks|r on the way to the southern murloc camp. Loot any missing snouts, counting what you kept from the level-16 visit
    >>Loot any missing Condor and Tarantula ingredients along the circuit. Each character needs five of each; finish the remaining loot on the return from the Orc camps
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
    #completewith RedridgeReturnScales
    .goto Redridge Mountains,18.0,52.0,60,0
    .goto Redridge Mountains,12.0,69.0,60,0
    >>Kill |cRXP_ENEMY_Black Dragon Whelps|r on the way from the gnolls to the southern murloc camp. Loot scales for each character
    >>Keep moving toward the murlocs; finish any missing scales on the return from the Orc camps
    .complete 122,1 -- Underbelly Whelp Scale (5)
    .mob Black Dragon Whelp
step
    .goto Redridge Mountains,49.0,71.0
    >>Travel to the southern murloc camp after finishing the gnolls, killing whelps and boars along the way
    >>Kill |cRXP_ENEMY_Murlocs|r here. Loot |cRXP_LOOT_Spotted Sunfish|r for each character
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Warrior
    .mob Murloc Shorestriker
step
    .isOnQuest 150
    .goto Redridge Mountains,49.0,71.0
    >>Stay at the southern murloc camp and loot |cRXP_LOOT_Murloc Fins|r for each character
    >>Avoid pulling several higher-level murlocs together
    .complete 150,1 -- Murloc Fin (8)
    .mob Murloc Warrior
    .mob Murloc Shorestriker
step
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82
    >>Continue from the southern murloc camp to the Orc camps. Kill |cRXP_ENEMY_Blackrock Grunts|r and |cRXP_ENEMY_Blackrock Outrunners|r
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
    #label RedridgeReturnScales
    .goto Redridge Mountains,12.0,69.0,60,0
    .goto Redridge Mountains,18.0,52.0
    >>On the return from the Orc camps, kill |cRXP_ENEMY_Black Dragon Whelps|r for any remaining |cRXP_LOOT_Underbelly Whelp Scales|r before returning to Lakeshire
    .complete 122,1 -- Underbelly Whelp Scale (5)
    .mob Black Dragon Whelp
step
    #label RedridgeReturnGoulash
    >>Finish any missing |cRXP_LOOT_Goulash ingredients|r on the return to Lakeshire. Count the snouts saved from the level-16 visit and any meat bought in Stormwind
    >>Kill nearby |cRXP_ENEMY_Great Goretusks|r, |cRXP_ENEMY_Dire Condors|r and |cRXP_ENEMY_Tarantulas|r for the remaining loot; each character needs five of each ingredient
    .complete 92,1 -- Great Goretusk Snout (5)
    .complete 92,2 -- Tough Condor Meat (5)
    .complete 92,3 -- Crisp Spider Meat (5)
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
    .target Foreman Oslow
step
    .goto 1433/0,-2243.14,-9259.43
    >>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 124 >> Turn in A Baying of Gnolls
    .turnin 122 >> Turn in Underbelly Scales
    .target Verner Osgood
step
    .isQuestComplete 95999
    .goto 1433/0,-2221.65,-9218.60
    .turnin 95999 >> Turn in WANTED: Incinerator Gar'im
    .target Magistrate Solomon
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
    .goto 1433/0,-2062.96,-9209.62
    >>Talk to |cRXP_FRIENDLY_Chef Breanna|r after finishing the loot quests on the return to Lakeshire
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
    >>After the Lakeshire turn-ins, follow the road south into Duskwood and continue to Darkshire
    .zone Duskwood >> Run to Duskwood for the three western deliveries and flight path

]])
