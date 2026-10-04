RXPGuides.RegisterGuide([[
#forever
#season 0
#version 6
#group Forever Trio Launch
#name 28-30 Blackfathom Deeps
#displayname 28-30 Blackfathom Deeps
<< Alliance (Warlock/Priest/Warrior)

-- Placeholder: follow-up after the second Wetlands quest loop.
-- Depart Menethil Harbor for Darkshore, then travel to Blackfathom Deeps.
-- Quest pickups, travel, dungeon objectives, and turn-ins will be added later.

step
    >>After the second Wetlands loop, take the Darkshore boat from Menethil Harbor to Auberdine
    .zone Darkshore >> Travel to Auberdine

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
    >>Travel from Auberdine to Blackfathom Deeps
    >>Run Blackfathom Deeps with the Warlock, Priest and Warrior. Check this step after the run.
    +Complete the Blackfathom Deeps trio run

]])
