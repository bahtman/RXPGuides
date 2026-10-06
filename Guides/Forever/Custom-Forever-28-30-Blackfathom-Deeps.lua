RXPGuides.RegisterGuide([[
#forever
#version 11
#group Forever Trio Launch
#name 25 Blackfathom Deeps
#displayname 25 Blackfathom Deeps
#next 25 Wetlands First Loop
<< Alliance (Warlock/Priest/Warrior)

-- After the third Duskwood pass and Stormwind turn-ins; before the first Wetlands loop.
-- Arrive in Auberdine from Stormwind, collect BFD quests, then return to Auberdine for the boat to Menethil.
-- Quest preparation and Thaelrid follow-up are included; the full dungeon route and return turn-ins remain to be added.

step
    >>Arrive in Auberdine from Stormwind after the third Duskwood pass. Regroup before collecting the BFD quests
    .zone Darkshore >> Regroup in Auberdine for Blackfathom Deeps

step
    .isQuestComplete 995
    .goto 1439,39.373,43.483
    >>Talk to |cRXP_FRIENDLY_Terenthis|r. Collect the Volcor reward saved from Darkshore before heading to Blackfathom Deeps.
    .turnin 995 >> Turn in Escape Through Stealth
    .target Terenthis

step
    .isQuestAvailable 1275
    .goto 1439,38.325,43.039
    >>Talk to |cRXP_FRIENDLY_Gershala Nightwhisper|r. Pick up the dungeon quest before leaving Auberdine.
    .accept 1275 >> Accept Researching the Corruption
    .target Gershala Nightwhisper

step
    .isQuestAvailable 1198
    .goto Darnassus,55.360,25.024
    >>If you missed this pickup, take the boat from Auberdine to Rut'theran Village and the purple portal into Darnassus
    >>Talk to |cRXP_FRIENDLY_Dawnwatcher Shaedlass|r upstairs in the alchemy building in the Craftsmen's Terrace
    .accept 1198 >> Accept In Search of Thaelrid
    .target Dawnwatcher Shaedlass

step
    .isQuestAvailable 1199
    .goto Darnassus,55.239,23.996
    >>If you missed Twilight Falls because you were below level 20, visit Darnassus now via the Auberdine boat and Rut'theran portal
    >>Talk to |cRXP_FRIENDLY_Argent Guard Manados|r upstairs in the alchemy building in the Craftsmen's Terrace
    .accept 1199 >> Accept Twilight Falls
    .target Argent Guard Manados

step
    >>If you visited Darnassus, return through the portal and fly to Auberdine
    >>Before leaving, confirm all three have Knowledge in the Deeps, In Search of Thaelrid, Twilight Falls and Researching the Corruption, unless already completed
    >>If Knowledge in the Deeps was missed, collect it from Gerrig Bonegrip in Ironforge's Forlorn Cavern before the run
    +Confirm the party's Blackfathom Deeps quests

step
    >>Travel from Auberdine to Blackfathom Deeps and enter together
    >>Find |cRXP_FRIENDLY_Argent Guard Thaelrid|r in the southwestern cave off the first large pool, near Ghamoo-ra
    >>Turn in the search quest and accept Blackfathom Villainy before killing Twilight Lord Kelris
    .turnin 1198 >> Turn in In Search of Thaelrid
    .accept 1200 >> Accept Blackfathom Villainy
    .target Argent Guard Thaelrid

step
    >>Run Blackfathom Deeps with the Warlock, Priest and Warrior. Check this step after the run.
    +Complete the Blackfathom Deeps trio run

step
    >>After BFD, take the boat from Auberdine to Menethil Harbor and begin the first Wetlands loop. Keep the Lakeshire bind for its batch hearth at the end
    .zone Wetlands >> Take the boat from Auberdine to Menethil Harbor

]])
