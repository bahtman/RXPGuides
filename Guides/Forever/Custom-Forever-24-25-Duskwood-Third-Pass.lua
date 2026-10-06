RXPGuides.RegisterGuide([[
#forever
#version 11
#group Forever Trio Launch
#name 24-25 Duskwood Third Pass
#displayname 24-25 Duskwood Third Pass
#next 25 Blackfathom Deeps
<< Alliance (Warlock/Priest/Warrior)

-- After the combined RoL/DM Stormwind turn-ins and Darkshire deliveries.
-- Darkshire -> Abercrombie -> Jitters -> Sven -> Proving Your Worth -> Sven -> Goldshire -> Stormwind -> Darkshore -> Wetlands.
-- Carry remaining wolf objectives from the first two Duskwood passes.
-- Sources: installed Classic Alliance Duskwood and Stalvan routes.
-- https://www.wowhead.com/forever/quest=323/proving-your-worth
-- https://www.wowhead.com/forever/quest=70/the-legend-of-stalvan
-- https://www.wowhead.com/forever/quest=72/the-legend-of-stalvan
step
    .goto Duskwood,73.8,44.5,60
    >>Start the third east-to-west Duskwood pass from Darkshire after the town deliveries. Everyone should have Deliver the Thread, Finding the Shadowy Figure and the Goldshire part of Stalvan
    >>Keep your home in Lakeshire for the batch hearth after the first Wetlands loop. Finish remaining wolves along the westward route, then do Sven's skeleton quest before running to Goldshire

step
    #completewith ThirdDuskwoodWolves
    .isOnQuest 226
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r along the westward route. Count the kills already made on the first two passes
    .complete 226,1 -- Starving Dire Wolf slain (12)
    .mob +Starving Dire Wolf
    .complete 226,2 -- Rabid Dire Wolf slain (8)
    .mob +Rabid Dire Wolf

step
    .isOnQuest 181
    .goto Duskwood,36.82,83.78
    .xp 25 >> Reach level 25 before the level-30 named ogre
    >>Check that every player is at least 25 for the +5 named-target limit; clear only the guards needed to reach him
    >>Before continuing to Raven Hill, kill |cRXP_ENEMY_Zzarc'Vul|r in the ogre cave together and loot the |cRXP_LOOT_Ogre's Monocle|r
    .complete 181,1
    .mob Zzarc'Vul
    >>Keep the monocle for Viktori on the Darkshire visit after the Redridge return


step
    .isOnQuest 158
    .goto Duskwood,73.8,44.5
    >>Return |cRXP_LOOT_Zombie Juice|r to |cRXP_FRIENDLY_Tavernkeep Smitts|r now and take the Raven Hill collection quest
    .turnin 158 >> Turn in Zombie Juice
    .accept 156 >> Accept Gather Rot Blossoms
    .target Tavernkeep Smitts


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
    #completewith next
    .isQuestAvailable 79362
    .use 281147
    .accept 79362 >> Accept Grant's Shield from the looted shield
    .goto Duskwood,22,43
    >>Check for |cRXP_ENEMY_Lost Knight|r while visiting Raven Hill Cemetery. Kill him if present and loot |cRXP_LOOT_Grant's Shield|r; continue if he is absent
    .unitscan Lost Knight

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
    .isOnQuest 79362
    .goto Duskwood,22,43
    >>Kill and loot skeletons in Raven Hill Cemetery for |cRXP_LOOT_Grant's Mace|r
    .complete 79362,1 -- Grant's Mace (1)
    >>Keep the mace and shield for Sirra on the next Darkshire visit



step
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
    .goto StormwindClassic,39.108,27.861
    >>Talk to |cRXP_FRIENDLY_Bishop Farthing|r in the Cathedral with Sven's delivery
    .turnin 269 >> Turn in Seeking Wisdom
    .accept 270 >> Accept The Doomed Fleet
    >>Deliver The Doomed Fleet in Menethil Harbor during the upcoming first Wetlands visit
    .target Bishop Farthing

step
    .goto 1453/0,1330.100,-8645.400
    >>After the Stormwind Stalvan and Sven turn-ins, regroup at the Auberdine boat for Blackfathom Deeps. Keep your home in Lakeshire
    .zone Darkshore >> Take the boat from Stormwind to Darkshore together

step
    .goto Darkshore,32.44,43.71
    >>Change boats in Auberdine for Menethil Harbor. Everyone stays bound to Lakeshire through the first Wetlands loop
    .zone Darkshore >> Arrive in Auberdine for Blackfathom Deeps before continuing to Wetlands

]])
