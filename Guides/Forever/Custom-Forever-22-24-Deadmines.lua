RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 14
#group Forever Trio Launch
#name 22-24 Deadmines
#displayname 22-24 Deadmines
#next 24-25 Duskwood Third Pass
<< Alliance (Warlock/Priest/Warrior)

-- After Ruins of Lordaeron and the second Duskwood quest loop.
-- Ghetto hearth to the Westfall graveyard after the run; no post-dungeon Militia kills.
step
    .goto Westfall,56.6,52.6,100
    >>Regroup in Sentinel Hill after the second Duskwood loop. Bring the VanCleef, Red Silk Bandanas, Underground Assault, Oh Brother and Collecting Memories quests

step
    .goto Westfall,41.5,66.8
    >>On the way from Sentinel Hill to Deadmines, enter the Moonbrook schoolhouse and click the |cRXP_PICK_Old Footlocker|r beside the steps in the back room
    >>All three players must turn in their Stalvan quest and accept the return to Darkshire before entering the mines. Be ready to fight the |cRXP_ENEMY_Forlorn Spirit|r that appears
    .turnin 67 >> Turn in The Legend of Stalvan
    .accept 68 >> Accept The Legend of Stalvan
    >>Keep this return quest for the Darkshire visit after the RoL and Deadmines Stormwind turn-ins

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
    >>Collecting Memories gives no dungeon bonus XP and can take significantly longer. Check that all three want to finish it before farming cards
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
    >>Collecting Memories gives no dungeon bonus XP and can take significantly longer. Finish the cards only if all three agreed to do this quest
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
    #label DMend
    >>After everyone has finished looting VanCleef, the Unsent Letter and Red Silk Bandanas, |cRXP_WARN_ghetto hearth out of Deadmines to the Westfall graveyard|r
    >>Regroup at the graveyard before returning to Sentinel Hill for the dungeon quest turn-ins
    +Complete the ghetto hearth to the Westfall graveyard

step
    .goto 1436/0,1197.24,-10546.9,60
    >>Gather at the Westfall graveyard after the ghetto hearth

step
    #completewith next
    .goto 1436/0,1045.12,-10508.80,100 >> Run directly to Sentinel Hill for the Deadmines turn-ins

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r and |cRXP_FRIENDLY_Scout Riell|r atop the Tower
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
    .goto Stormwind City,74.182,7.465
    >>If you have |cRXP_LOOT_An Old History Book|r, give it to |cRXP_FRIENDLY_Milton Sheaf|r in the library. Hand in the book with the RoL and Deadmines turn-ins.
    .turnin 337 >> Turn in An Old History Book
    .use 2794
    .target Milton Sheaf
    .itemcount 2794,1

step
    .goto Stormwind City,63.5,75.8
    >>Talk to |cRXP_FRIENDLY_General Marcus Jonathan|r at the entrance to Stormwind. Hand over all ten insignias.
    .turnin 95195 >> Turn in Bloodied Insignia
    .target General Marcus Jonathan

step
    >>Find |cRXP_FRIENDLY_Lady Dena Kennedy|r in the Royal Gallery inside Stormwind Keep. She walks among the paintings.
    .turnin 95189 >> Turn in Crest of Lordaeron
    .target Lady Dena Kennedy

step
    .goto Stormwind City,56.6,54.3
    >>Talk to |cRXP_FRIENDLY_Orphan Matron Nightingale|r in Cathedral Square. She sends you to Jeremy Heartweaver's adoptive mother in Darkshire.
    .turnin 92415 >> Turn in Remember That I Love You
    .accept 95161 >> Accept Remember That I Love You
    .target Orphan Matron Nightingale

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
    .goto Stormwind City,70.9,72.6
    >>Talk to |cRXP_FRIENDLY_Dungar Longdrink|r. Keep your home in Lakeshire for the later batch hearth from Wetlands, and deliver the RoL letter in Darkshire
    .fly Duskwood >> Fly to Darkshire after the combined dungeon turn-ins
    .target Dungar Longdrink

step
    .goto Duskwood,77.992,48.328
    >>Check |cRXP_FRIENDLY_Herble Baubbletump|r for |cRXP_BUY_Bronze Tubes|r on this Darkshire visit. Buy any available tubes
    >>Limited supply: continue if he is out of stock; check again on the next visit
    .vendor >> Check Bronze Tube stock
    .target Herble Baubbletump

step
    .itemcount 4371,1
    .goto Duskwood,79.80,48.02
    >>If you have a |cRXP_LOOT_Bronze Tube|r, give it to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Accept Look to the Stars
    .turnin 174 >> Turn in Look to the Stars
    .target Viktori Prism'Antras

step
    .isQuestTurnedIn 174
    .goto Duskwood,79.80,48.02
    >>Take Viktori's request for Blind Mary
    .accept 175 >> Accept Look to the Stars
    .target Viktori Prism'Antras



step
    .isOnQuest 175
    .goto Duskwood,81.98,59.08
    >>Visit |cRXP_FRIENDLY_Blind Mary|r with Viktori's request
    .turnin 175 >> Turn in Look to the Stars
    .accept 177 >> Accept Look to the Stars
    .target Blind Mary

step
    .isOnQuest 177
    .goto Duskwood,80.98,71.65
    >>Kill the |cRXP_ENEMY_Insane Ghoul|r inside or near the chapel and loot |cRXP_LOOT_Mary's Looking Glass|r
    .complete 177,1
    .mob Insane Ghoul

step
    .isOnQuest 177
    .goto Duskwood,79.80,48.02
    >>Return the looking glass to |cRXP_FRIENDLY_Viktori Prism'Antras|r and take the monocle quest
    .turnin 177 >> Turn in Look to the Stars
    .accept 181 >> Accept Look to the Stars
    .target Viktori Prism'Antras

step
    .isOnQuest 95161
    .goto Duskwood,73.28,44.76
    >>Talk to |cRXP_FRIENDLY_Avette Fellwood|r behind the inn in Darkshire to deliver the letter and finish the Ruins quest chain.
    .turnin 95161 >> Turn in Remember That I Love You
    .target Avette Fellwood



step
    .isOnQuest 68
    .goto Duskwood,72.6,46.9
    >>Talk to |cRXP_FRIENDLY_Clerk Daltry|r with the Moonbrook letter during the Darkshire visit after Deadmines
    .turnin 68 >> Turn in The Legend of Stalvan
    .accept 69 >> Accept The Legend of Stalvan
    >>Keep the Goldshire delivery for the run to Stormwind at the end of the third Duskwood pass
    .target Clerk Daltry

step
    .isOnQuest 96139
    .goto Duskwood,72.64,47.59
    >>Give the |cRXP_LOOT_Raven Hill Tome|r from the post-RoL trek to |cRXP_FRIENDLY_Sirra Von'Indi|r in the room beside Clerk Daltry
    .turnin 96139 >> Turn in The Valor Family
    .target Sirra Von'Indi

step
    .isQuestComplete 79362
    .goto Duskwood,72.64,47.59
    >>Give |cRXP_LOOT_Grant's Mace|r and |cRXP_LOOT_Grant's Shield|r to |cRXP_FRIENDLY_Sirra Von'Indi|r during the same town visit
    .turnin 79362 >> Turn in Grant's Shield
    .target Sirra Von'Indi


step
    .isOnQuest 56
    .goto Duskwood,73.59,46.89
    >>Report the Tranquil Gardens kills to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 56 >> Turn in The Night Watch
    .accept 57 >> Accept The Night Watch
    .target Commander Althea Ebonlocke

step
    .isOnQuest 154
    .goto Duskwood,75.7,45.3
    >>Return Blind Mary's comb to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 154 >> Turn in Return the Comb
    .accept 157 >> Accept Deliver the Thread
    .turnin 262 >> Turn in The Shadowy Figure
    .accept 265 >> Accept The Shadowy Search Continues
    >>Keep the thread for the next visit to Abercrombie
    .target Madame Eva

step
    .isOnQuest 265
    .goto Duskwood,72.6,46.9
    >>Talk to |cRXP_FRIENDLY_Clerk Daltry|r in the town hall during the same town visit
    .turnin 265 >> Turn in The Shadowy Search Continues
    .accept 266 >> Accept Inquire at the Inn
    .target Clerk Daltry


step
    .goto Duskwood,73.8,43.3
    >>Talk to |cRXP_FRIENDLY_Chef Grual|r after Deadmines with Jitters' request and the six spider legs saved before the dungeon
    .turnin 5 >> Turn in Jitters' Growling Gut
    .accept 93 >> Accept Dusky Crab Cakes
    .turnin 93 >> Turn in Dusky Crab Cakes
    .accept 240 >> Accept Return to Jitters
    >>Deliver the cakes to Jitters on the upcoming westward pass to Sven
    .target Chef Grual
step
    .isOnQuest 266
    .goto Duskwood,73.8,44.5
    >>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r in the inn
    .turnin 266 >> Turn in Inquire at the Inn
    .accept 453 >> Accept Finding the Shadowy Figure
    >>Take the Jitters delivery west now for the third pass
    .target Tavernkeep Smitts

step
    >>Both dungeons and their Stormwind deliveries are complete. Start the third Duskwood pass west toward Jitters and Sven before Goldshire, Stormwind, the first Wetlands loop and the level-26 Redridge loop
    +Continue with the third Duskwood pass

]])
