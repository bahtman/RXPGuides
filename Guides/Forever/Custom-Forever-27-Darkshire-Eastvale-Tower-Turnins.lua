RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 5
#group Forever Trio Launch
#name 27 Darkshire, Eastvale & Tower Turn-ins
#displayname 27 Darkshire, Eastvale & Tower Turn-ins
#next 28-30 Blackfathom Deeps
<< Alliance (Warlock/Priest/Warrior)

-- After level-26 Redridge: fly Darkshire -> town turn-ins -> Eastvale -> Tower of Azora -> hearth Wetlands.
-- Home is Menethil Harbor, set during the batch hearth after the first Wetlands loop.
-- Stalvan IDs and Eastvale coordinates follow the installed Classic Alliance route.
step
    .goto Duskwood,77.992,48.328
    >>Check |cRXP_FRIENDLY_Herble Baubbletump|r for |cRXP_BUY_Bronze Tubes|r on this Darkshire visit. Buy any available tubes
    >>Limited supply: continue if he is out of stock; check again on the next visit
    .vendor >> Check Bronze Tube stock
    .target Herble Baubbletump

step
    .goto Duskwood,72,47
    >>Accept Crime and Punishment
    .accept 377 >> Accept Crime and Punishment

step
    .goto Duskwood,77.5,44.4,60
    >>Regroup in Darkshire after the flight from Lakeshire. Keep your home in Menethil Harbor

step
    .isQuestComplete 93
    .goto Duskwood,73.8,43.3
    >>Talk to |cRXP_FRIENDLY_Chef Grual|r if you still have completed spider legs from the earlier Duskwood passes
    .turnin 93 >> Turn in Dusky Crab Cakes
    .target Chef Grual

step
    .goto Duskwood,73.8,44.5,60
    >>Turn in any other completed Darkshire quests and restock before leaving town. Keep the Eastvale Stalvan delivery for the next stop
    +Finish the Darkshire town turn-ins

step
    .goto Duskwood,74.0,20.0,50,0
    .goto Elwynn Forest,84.61,69.37
    >>Run north from Darkshire, cross the river into Elwynn Forest and continue to Eastvale Logging Camp. Talk to |cRXP_FRIENDLY_Marshal Haggard|r outside the house
    .turnin 74 >> Turn in The Legend of Stalvan
    .accept 75 >> Accept The Legend of Stalvan
    .target Marshal Haggard

step
    .goto Elwynn Forest,85.13,69.69,12,0
    .goto Elwynn Forest,85.20,69.15,8,0
    .goto Elwynn Forest,85.70,69.54
    >>Go upstairs and open |cRXP_PICK_Marshal Haggard's Chest|r. Each player needs |cRXP_LOOT_A Faded Journal Page|r. Be ready for the Forlorn Spirit
    .complete 75,1 -- A Faded Journal Page (1)

step
    .goto Elwynn Forest,84.61,69.37
    >>Return to |cRXP_FRIENDLY_Marshal Haggard|r outside
    .turnin 75 >> Turn in The Legend of Stalvan
    .accept 78 >> Accept The Legend of Stalvan
    >>Keep the return to Madame Eva for the next Darkshire visit
    .target Marshal Haggard

step
    .goto Elwynn Forest,65.2,69.8,20
    >>Run southwest from Eastvale Logging Camp to the Tower of Azora for the Redridge tower turn-ins

step
    .isQuestComplete 249
    .goto Elwynn Forest,65.2,69.8
    >>Talk to |cRXP_FRIENDLY_Theocritus|r atop the Tower of Azora
    .turnin 249 >> Turn in Morganth
    .target Theocritus

step
    .isOnQuest 178
    .goto Elwynn Forest,65.2,69.8
    >>Talk to |cRXP_FRIENDLY_Theocritus|r atop the Tower of Azora if you received the pendant quest during Redridge
    .turnin 178 >> Turn in Theocritus' Retrieval
    .target Theocritus

step
    >>After the Tower of Azora turn-ins, use the Menethil Harbor home set by the earlier batch hearth. Wait for everyone's Hearthstone if necessary
    .hs >> Hearth to Menethil Harbor for the boat to Blackfathom Deeps
    .zoneskip Wetlands

step
    .goto Wetlands,10.69,60.95,60
    >>Regroup in Menethil Harbor and take the Darkshore boat for BFD. Do the second Wetlands quest loop after returning from BFD

]])
