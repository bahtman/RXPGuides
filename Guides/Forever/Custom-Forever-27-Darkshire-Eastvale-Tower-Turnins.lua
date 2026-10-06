RXPGuides.RegisterGuide([[
#forever
#version 11
#group Forever Trio Launch
#name 27 Darkshire, Eastvale & Tower Turn-ins
#displayname 27 Darkshire, Eastvale & Tower Turn-ins
#next 27-28 Wetlands Second Loop
<< Alliance

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
    .isOnQuest 181
    .goto Duskwood,36.82,83.78
    >>Enter the ogre cave together and kill |cRXP_ENEMY_Zzarc'Vul|r. Loot the |cRXP_LOOT_Ogre's Monocle|r for each player
    .complete 181,1
    .mob Zzarc'Vul

step
    .isQuestComplete 181
    .goto Duskwood,79.80,48.02
    >>Return the monocle to |cRXP_FRIENDLY_Viktori Prism'Antras|r before leaving Duskwood
    .turnin 181 >> Turn in Look to the Stars
    .target Viktori Prism'Antras

step
    .isQuestComplete 79362
    .goto Duskwood,72.64,47.59
    >>Give |cRXP_LOOT_Grant's Mace|r and |cRXP_LOOT_Grant's Shield|r to |cRXP_FRIENDLY_Sirra Von'Indi|r if collected on the third Duskwood pass
    .turnin 79362 >> Turn in Grant's Shield
    .target Sirra Von'Indi

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
    .isQuestComplete 156
    .goto Duskwood,73.8,44.5
    >>Turn in the Raven Hill |cRXP_LOOT_Rot Blossoms|r to |cRXP_FRIENDLY_Tavernkeep Smitts|r and take the juice delivery
    .turnin 156 >> Turn in Gather Rot Blossoms
    .accept 159 >> Accept Juice Delivery
    .target Tavernkeep Smitts

step
    .isQuestComplete 57
    .goto Duskwood,73.59,46.89
    >>Report the Raven Hill fiend and horror kills to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 57 >> Turn in The Night Watch
    .accept 58 >> Accept The Night Watch
    .target Commander Althea Ebonlocke


step
    .isOnQuest 159
    .goto Duskwood,28.108,31.469
    >>Deliver the juice to |cRXP_FRIENDLY_Abercrombie|r before continuing east to Eastvale
    .turnin 159 >> Turn in Juice Delivery
    .accept 133 >> Accept Ghoulish Effigy
    .target Abercrombie


step
    .isOnQuest 58
    .isOnQuest 133
    .goto Duskwood,24.26,32.90
    >>At the eastern Raven Hill mausoleum, kill |cRXP_ENEMY_Plague Spreaders|r for Night Watch and loot seven |cRXP_LOOT_Ghoul Ribs|r from the local ghouls for Abercrombie
    .complete 58,1 -- Plague Spreader slain (20)
    .complete 133,1 -- Ghoul Rib (7)
    .mob Plague Spreader
    .mob Flesh Eater
    .mob Rotted One
    .mob Bone Chewer
    .mob Brain Eater

step
    .goto Duskwood,28.108,31.469
    >>Return the |cRXP_LOOT_Ghoul Ribs|r to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >> Turn in Ghoulish Effigy
    .accept 134 >> Accept Ogre Thieves
    .target Abercrombie

step
    .isOnQuest 134
    .goto Duskwood,33.419,76.356
    >>Loot |cRXP_PICK_Abercrombie's Crate|r outside the Vul'Gol Ogre Mound cave. Clear the nearby ogres carefully
    .complete 134,1 -- Abercrombie's Crate (1)
    .mob Ogre

step
    .isQuestComplete 134
    .goto Duskwood,28.108,31.469
    >>Return the crate to |cRXP_FRIENDLY_Abercrombie|r and take his note to the mayor
    .turnin 134 >> Turn in Ogre Thieves
    .accept 160 >> Accept Note to the Mayor
    .target Abercrombie



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
