RXPGuides.RegisterGuide([[
#forever
#version 25
#group Forever Trio Launch
#name 25-25 Duskwood Third Pass
#displayname 25-25 Duskwood Third Pass
#next 25-26 Blackfathom Deeps
<< Alliance

-- After the combined RoL/DM Stormwind turn-ins and Darkshire deliveries.
-- Darkshire -> Jitters -> Shadow Weavers -> Jitters -> Sven -> Proving Your Worth -> Sven -> Goldshire -> Stormwind -> Darkshore -> Wetlands.
-- Carry remaining wolf objectives from the first two Duskwood passes.
-- Sources: installed Classic Alliance Duskwood and Stalvan routes.
-- https://www.wowhead.com/forever/quest=323/proving-your-worth
-- https://www.wowhead.com/forever/quest=70/the-legend-of-stalvan
-- https://www.wowhead.com/forever/quest=72/the-legend-of-stalvan
step
    .isOnQuest 158
    .goto Duskwood,73.8,44.5
    >>Return |cRXP_LOOT_Zombie Juice|r to |cRXP_FRIENDLY_Tavernkeep Smitts|r now and take the Raven Hill collection quest
    .turnin 158 >> Turn in Zombie Juice
    .accept 156 >> Accept Gather Rot Blossoms
    .target Tavernkeep Smitts
step
    .goto 1431/0,-1199.82,-10581.49
    .accept 173 >> Accept Worgen in the Woods
    .target Calor



step
    #completewith TrioShadowWeaversDone
    .isQuestAvailable 96137
    >>Watch for |cRXP_ENEMY_Lost Stalker|r while moving through the woods for the Shadow Weavers. Kill her if present, loot and use |cRXP_LOOT_Ira's Dagger|r; continue if absent
    .use 281143
    .accept 96137 >> Accept Ira's Dagger if encountered near the worgen woods
    .unitscan +Lost Stalker::272260

step
    #label TrioShadowWeaversDone
    .goto Duskwood,66.0,44.6,60,0
    .goto 1431/0,-900.07,-10415.07,60,0
    .goto 1431/0,-808.27,-10389.87,60,0
    .goto 1431/0,-819.07,-10544.67,60,0
    .goto 1431/0,-991.87,-10555.47,60,0
    .goto 1431/0,-883.87,-10458.27
    .complete 173,1 -- Nightbane Shadow Weaver slain (6)
    .mob Nightbane Shadow Weaver
    .isOnQuest 173

step
    #completewith ThirdDuskwoodWolves
    .isQuestAvailable 96137
    >>Watch for |cRXP_ENEMY_Lost Stalker|r during the westward wolf and Sven travel. If she appears, kill her and use |cRXP_LOOT_Ira's Dagger|r. Her Ravager kills are different from Lars's Dire Wolves; finish Ira's quest on the later northern Duskwood circuit
    .use 281143
    .accept 96137 >> Accept Ira's Dagger if encountered during the wolf travel
    .unitscan +Lost Stalker::272260

step
    #completewith ThirdDuskwoodWolves
    .isOnQuest 226
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r along the westward route. Count the kills already made on the first two passes
    .complete 226,1 -- Starving Dire Wolf slain (12)
    .mob +Starving Dire Wolf
    .complete 226,2 -- Rabid Dire Wolf slain (8)
    .mob +Rabid Dire Wolf

step
    .goto Duskwood,18.4,56.6
    >>Talk to |cRXP_FRIENDLY_Jitters|r at Raven Hill about Sven's book
    .turnin 453 >> Turn in Finding the Shadowy Figure
    .accept 268 >> Accept Return to Sven
    .target Jitters
step
    .isOnQuest 240
    .goto Duskwood,18.4,56.6
    >>Deliver the cakes to |cRXP_FRIENDLY_Jitters|r during the same stop before continuing to Sven
    .turnin 240 >> Turn in Return to Jitters
    .target Jitters

step
    #label ThirdDuskwoodWolves
    .isOnQuest 226
    .goto Duskwood,17.6,24.6,60,0
    .goto Duskwood,11.0,30.0
    >>Finish any remaining wolf kills on the way northwest to Sven's camp
    .complete 226,1 -- Starving Dire Wolf slain (12)
    .mob +Starving Dire Wolf
    .complete 226,2 -- Rabid Dire Wolf slain (8)
    .mob +Rabid Dire Wolf
step
    #completewith BigSkellies
    .isOnQuest 57
    .isOnQuest 156
    .goto Duskwood,22,43
    >>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r in Raven Hill Cemetery for Night Watch and |cRXP_LOOT_Rot Blossoms|r
    .complete 57,1 -- Skeletal Fiend slain
    .complete 57,2 -- Skeletal Horror slain
    .complete 156,1 -- Rot Blossom (10)
    .mob Skeletal Fiend
    .mob Skeletal Horror
step
    .isOnQuest 226
    .goto Duskwood,7.7,33.3
    >>Talk to |cRXP_FRIENDLY_Lars|r at Sven's camp with all remaining wolves finished
    .turnin 226 >> Turn in Wolves at Our Heels
    .target Lars

step
    .goto Duskwood,7.781,34.069
    >>Talk to |cRXP_FRIENDLY_Sven Yorgen|r with Jitters' reply. All three players must accept the skeleton quest before leaving camp
    .turnin 268 >> Turn in Return to Sven
    .accept 323 >> Accept Proving Your Worth
    .target Sven Yorgen



step
    #label BigSkellies
    .goto Duskwood,16.2,38.8
    >>Kill |cRXP_ENEMY_Skeletal Raiders|r and |cRXP_ENEMY_Skeletal Healers|r around Forlorn Rowe and the Dawning Wood Catacombs entrance
    >>Pull together and interrupt the healers. Avoid Mor'Ladim and Morbent Fel
    .complete 323,1 -- Skeletal Raider slain (15)
    .mob +Skeletal Raider
    .complete 323,2 -- Skeletal Healer slain (3)
    .mob +Skeletal Healer
    .complete 323,3 -- Skeletal Warder slain (3)
    .mob Skeletal Warder

step
    .isOnQuest 57
    .isOnQuest 156
    .goto Duskwood,22,43
    >>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r in Raven Hill Cemetery for Night Watch and |cRXP_LOOT_Rot Blossoms|r
    .complete 57,1 -- Skeletal Fiend slain
    .complete 57,2 -- Skeletal Horror slain
    .complete 156,1 -- Rot Blossom (10)
    .mob Skeletal Fiend
    .mob Skeletal Horror

step
    .goto Duskwood,7.781,34.069
    >>Return to |cRXP_FRIENDLY_Sven Yorgen|r with all three skeleton objectives complete before leaving Duskwood
    .turnin 323 >> Turn in Proving Your Worth
    .accept 269 >> Accept Seeking Wisdom
    .target Sven Yorgen

step
    .goto Elwynn Forest,43.7,65.9
    >>Talk to |cRXP_FRIENDLY_Innkeeper Farley|r inside the Lion's Pride Inn in Goldshire
    .turnin 69 >> Turn in The Legend of Stalvan
    .accept 70 >> Accept The Legend of Stalvan
    .target Innkeeper Farley

step
    .goto Elwynn Forest,44.2,65.9
    >>Go upstairs into the back bedroom and loot the |cRXP_PICK_Storage Chest|r. Each player needs |cRXP_LOOT_An Undelivered Letter|r before leaving Goldshire
    .complete 70,1 -- An Undelivered Letter (1)
step
    .isQuestAvailable 174
    .goto 1453/0,660.28,-8814.55
    >>Buy |cRXP_BUY_1 Bronze Tube|r per player from the Auction House for the level-27 Look to the Stars chain. Buy only what you are missing and collect any purchase from the mailbox before leaving Stormwind
    >>Keep the tube in your bags through Wetlands and Redridge for Viktori in Darkshire
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .target Auctioneer Jaxon

step
    .goto 1453/0,1025.55,-8983.92
    >>Talk to Zardeth of the Black Claw downstairs in the Slaughtered Lamb. Keep A Noble Brew for the flower beside Stalvan on the post-Stockades visit and the waterfall root during the final Wetlands loop.
    .xp 25 >> Reach level 25 for A Noble Brew
    .accept 335 >> Accept A Noble Brew
    .target Zardeth of the Black Claw
    .isQuestAvailable 335
step
    .goto StormwindClassic,29.8,61.8
    >>Talk to |cRXP_FRIENDLY_Caretaker Folsom|r along the canal near the Park and Mage Quarter
    .turnin 70 >> Turn in The Legend of Stalvan
    .accept 72 >> Accept The Legend of Stalvan
    .target Caretaker Folsom

step
    .goto StormwindClassic,29.6,61.7
    >>Click the |cRXP_PICK_Sealed Crate|r beside Folsom. Each player must finish this part and accept the Eastvale delivery; be ready for the Forlorn Spirit
    .turnin 72 >> Turn in The Legend of Stalvan
    .accept 74 >> Accept The Legend of Stalvan
    >>Keep the Eastvale Logging Camp delivery until after the level-26 Redridge loop and Darkshire turn-ins


step
    .goto StormwindClassic,21.40,55.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Accept The Corruption Abroad
    .target Argos Nightwhisper

step
    .goto 1453/0,855.25,-8528.58
    >>Talk to |cRXP_FRIENDLY_Bishop Farthing|r in the Cathedral with Sven's delivery
    .turnin 269 >> Turn in Seeking Wisdom
    .accept 270 >> Accept The Doomed Fleet
    >>Deliver The Doomed Fleet in Menethil Harbor during the upcoming first Wetlands visit
    .target Bishop Farthing

step << Warrior
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
    .goto 1453/0,323.3,-8689.29
    >>Talk to |cRXP_FRIENDLY_Wu Shen|r or |cRXP_FRIENDLY_Ilsa Corbin|r and train your available class spells before leaving Stormwind
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin

step << Warlock
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15,0
    .goto 1453/0,1029.89,-8971.06
    >>Go downstairs in The Slaughtered Lamb. Talk to |cRXP_FRIENDLY_Ursula Deline|r and train your available class spells before leaving Stormwind
    .trainer >> Train your class spells
    .target Ursula Deline

step
    .zoneskip Stormwind City,1
    .bronzetube
    .goto 1453/0,638.80,-8341.95
    >>Check |cRXP_FRIENDLY_Billibub Cogspinner|r in the Dwarven District for a |cRXP_BUY_Bronze Tube|r. Keep one per player for Look to the Stars at level 27; trade party stock before buying more
    >>Limited supply: continue if he is out of stock. Keep any tube until the level-27 Darkshire visit
    .vendor >> Check Bronze Tube stock
    .target Billibub Cogspinner

step
    #include Forever Trio Launch\01-60 City Supplies - Stormwind

step
    .goto 1453/0,1330.100,-8645.400
    >>After the Stormwind Stalvan and Sven turn-ins, regroup at the Auberdine boat for Blackfathom Deeps. Keep your home in Lakeshire
    .zone Darkshore >> Take the boat from Stormwind to Darkshore together

]])
