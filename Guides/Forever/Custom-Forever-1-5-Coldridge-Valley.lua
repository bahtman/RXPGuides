RXPGuides.RegisterGuide([[

#forever
#version 14
<< Alliance Gnome/Dwarf (Paladin/Warrior/Warlock)
#group Forever Trio Launch
--#groupid RXP-SRGCE-A1
#name 1-5 Coldridge Valley
#displayname 1-5 Coldridge Valley
#next 5-11 Dun Morogh
#defaultfor Gnome/Dwarf (Paladin/Warrior/Warlock)

step
    #completewith next
    >> Delete HS
step << Paladin
    .goto 1426/0,688.98,-6222.47
    >>Run straight to |cRXP_FRIENDLY_Talin Keeneye|r. Accept The Boar Hunter and share it with Warrior and Warlock
    .accept 183 >> Accept The Boar Hunter
    .target Talin Keeneye

step << Warrior/Warlock
    >>Kill and loot until you can afford your initial training and gathering tools
    .money >0.003,1 << Warrior
    .money >0.002,1 << Warlock

step << Warrior/Warlock
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Enter Anvilmar

step << Warrior/Warlock
    #label VendorTrash
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r inside
    .vendor >> Vendor Trash
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348,1 << Warlock

step << Warrior
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r inside
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Thran Khorman

step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r inside
    .train 348 >> Train |T135817:0|t[Immolate]
    .accept 1599 >> Accept Beginnings
    .target Alamar Grimm

step << Warrior
    .goto Dun Morogh,28.8,67.8
    >>Learn Mining from |cRXP_FRIENDLY_Sally Swiftwrench|r and buy a |cRXP_BUY_Mining Pick (pickaxe)|r from her. Turn on Find Minerals
    .train 2575 >> Learn Mining
    .target +Sally Swiftwrench
    .collect 2901,1 >> Buy a Mining Pick from Sally Swiftwrench
    .target +Sally Swiftwrench

step << Warlock
    .goto Dun Morogh,28.8,66.6
    >>Learn Herbalism from |cRXP_FRIENDLY_Emrys Flintbeard|r. Turn on Find Herbs
    .train 2366 >> Learn Herbalism
    .target Emrys Flintbeard

step << Warrior
    #completewith ColdridgeExit
    >>Collect 9 [Copper Ore] and at least 8 |T135232:0|t[Rough Stones]. Keep Find Minerals active
    .collect 2770,9 --Copper Ore (9)
    .collect 2835,8 --Rough Stone (8)
step << Warlock
    #optional
    #completewith ColdridgeExit
    >>Gather herbs close to the quest circuit. Save them for the first Ironforge elixir batch
    .collect 765,2 --Silverleaf (2)
    .collect 2447,4 --Peacebloom (4)
step << Warrior/Warlock
    >>Accept The Boar Hunter from Baht's share
    .accept 183 >> Accept The Boar Hunter

step
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>Kill |cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar

step
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183,1 << Warlock
    .turnin 183,2 >> Turn in The Boar Hunter << !Warlock
    .target Talin Keeneye


step
    .goto 1426,25.077,75.711
    >>Talk to Grelin Whitebeard and pick up The Troll Cave, then share it with the Paladin and Warlock
    .accept 182 >> Accept The Troll Cave
    .target Grelin Whitebeard


step
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .accept 170 >> Accept A New Threat
    .target Balir Frosthammer


step
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>Kill |cRXP_ENEMY_Frostmane Novices|r inside. Loot them for their |cRXP_LOOT_Feather Charms|r << Warlock
    .complete 1599,1 << Warlock --Collect Feather Charm (x3)
    .complete 182,1 --Frostmane Troll Whelps (14)
    -- Level 3 needs 1400 XP: Beginnings (360) + The Troll Cave (360) leave a 680 XP gate.
    .xp 3+680 >> Keep killing trolls to 680+/1400 XP << Warlock
    .xp 3+1040 >> Keep killing trolls to 1040+/1400 XP before leaving the cave << !Warlock
    .mob Frostmane Novice
    .mob Frostmane Troll Whelp

step << Warlock
    #label BeginningsHS
    #completewith BeginningsEnd
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer

step << Warlock
    #optional
    #requires BeginningsHS
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Enter Anvilmar

step << Warlock
    #label BeginningsEnd
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r upstairs
    .turnin 1599 >> Turn in Beginnings
    >>Summon your Imp before rejoining the party
    .target Alamar Grimm
step << Warlock
    .goto 1426/0,320.30,-6226.74
    >>Buy your gathering reagent bag from |cRXP_FRIENDLY_Adlin Pridedrift|r in Coldridge Valley
    .collect 277113,1 --Apprentice's Herb Pouch

step
    .goto 1426/0,567.09,-6362.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182,4 >> Turn in The Troll Cave << Paladin
    .turnin 182,1 >> Turn in The Troll Cave << Warrior
    .turnin 182,3 >> Turn in The Troll Cave << Warlock
    .accept 218 >> Accept The Stolen Journal
    .target Grelin Whitebeard






step
    #label TroggsDone
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_This will start a 5 minute timer for the quest. Do NOT go AFK or log out for the next 5 minutes|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .target Nori Pridedrift

step
    #completewith next
    +|cRXP_WARN_You have 5 minutes to get |cRXP_LOOT_Grelin Whitebeard's Journal|r and return to Anvilmar before|r |T132791:0|t[Durnan's Scalding Mornbrew] |cRXP_WARN_expires|r
    >>|cRXP_WARN_If you fail the quest don't worry as you can get it again later|r

step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >> Enter the Frostmane Cave

step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Travel towards |cRXP_ENEMY_Grik'nir the Cold|r inside

step
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r inside. Loot him for |cRXP_LOOT_Grelin Whitebeard's Journal|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold

step
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer

step
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    >>|cRXP_WARN_If you failed the quest, skip this step|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
    .isOnQuest 3364

step
    #optional
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317

step
    .abandon 3364 >> Abandon Scalding Mornbrew Delivery. You'll pick it up again

step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r and |cRXP_FRIENDLY_Grelin Whitebeard|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .goto 1426/0,567.14,-6363.06
    .target +Grelin Whitebeard
    .isQuestAvailable 3364

step
    #optional
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter


step
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .accept 97277 >>Accept Grund and Gozwin

step << Paladin
    .goto 1426/0,382.06,-6120.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bromos Grummner|r inside
    .train 20271 >> Train |T135959:0|t[Judgement]
    .target Bromos Grummner


step
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >> Exit Anvilmar
    .subzoneskip 77,1

step
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >> Travel up to the hills in northern Coldridge Valley

step
    >>Kill the |cRXP_ENEMY_Snow Leopard Prowler|r
    >>Loot |cRXP_PICK_Gozwin's Mechanic's Log|r on the ground
    .complete 97277,2 --|1/1 Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --|1/1 Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600


step
    #label Stolen
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218,2 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .target Grelin Whitebeard

step
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Turn in Bring Back the Mug
    .target Nori Pridedrift

step
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .turnin 97277 >>Turn in Grund and Gozwin
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>Talk to |cRXP_FRIENDLY_Alamar Grimm|r upstairs during the party's Anvilmar training stop
    .train 172 >> Train |T136118:0|t[Corruption]
    .target Alamar Grimm

step << Warrior
    .goto 1426/0,382.11,-6084.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Thran Khorman

step << Paladin
    .goto 1426/0,382.06,-6120.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bromos Grummner|r inside
    .train 19740 >> Train |T135906:0|t[Blessing of Might]
    .train 20271 >> Train |T135959:0|t[Judgement]
    .target Bromos Grummner
step << Paladin
    .goto Dun Morogh,29.1,67.7
    >>Learn Skinning from |cRXP_FRIENDLY_Brighid Stormflayer|r
    .train 8613 >> Learn Skinning
    .collect 7005,1 --Skinning Knife (1)
    .collect 277114,1 --Apprentice's Skinning Satchel
    .target Brighid Stormflayer

step
    .goto 1426/0,152.900,-6235.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Thalos::1965|r
    .target Mountaineer Thalos::1965
    .turnin 282 >>Turn in Senir's Observations
    .accept 420 >>Accept Senir's Observations
    .accept 96628 >>Accept The Adventurer

step
    .goto 1426/0,135.100,-6248.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hands Springsprocket::6782|r
    .target Hands Springsprocket::6782
    .accept 2160 >>Accept Supplies to Tannok

step
    #label ColdridgeExit
    .goto 1426/0,111.82,-6206.61,15,0
    .goto 1426/0,46.32,-6037.19,15 >> Travel through Coldridge Pass
    .subzoneskip 800,1
    .isOnQuest 2160
]])
