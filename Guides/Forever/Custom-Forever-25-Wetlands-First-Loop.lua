RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 2
#group Forever Trio Launch
#name 25 Wetlands First Loop
#displayname 25 Wetlands First Loop
#next 25-27 Redridge Return
<< Alliance (Warlock/Priest/Warrior)

-- Stormwind Stalvan -> Darkshore boat -> Menethil Harbor -> first Wetlands loop.
-- Preserve the Lakeshire bind until the batch hearth at the end of this guide.
-- Wetlands quest-loop details, including Seeking Caitlin, will be added later.
step
    .goto Wetlands,9.49,59.69
    >>Talk to |cRXP_FRIENDLY_Shellei Brondir|r on arrival in Menethil Harbor
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
    >>Keep your home in Lakeshire until the batch hearth after this quest loop
    .target Shellei Brondir

step
    .isOnQuest 270
    .goto Wetlands,10.585,60.592
    >>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r in the inn with Sven's delivery from Stormwind
    .turnin 270 >> Turn in The Doomed Fleet
    .target Glorin Steelbrow

step
    >>Placeholder for the first Wetlands quest loop, including the Seeking Caitlin delivery from Ashenvale. Quest pickups, objectives and turn-ins will be filled in later
    >>Finish this loop and return to Menethil Harbor before using the batch hearth
    +Complete the first Wetlands quest loop

step
    .goto Wetlands,10.69,60.95
    >>Talk to |cRXP_FRIENDLY_Innkeeper Helbrek|r with your Hearthstone still bound to Lakeshire. Wait for everyone's Hearthstone to be ready
    >>Enable RXP Hearthstone batching. Open the "Make this inn your home" confirmation and leave it open, then use Hearthstone. RXP confirms the new Menethil bind as the cast finishes; do not confirm it early
    .bindlocation 69,1
    .hsbatching >> Batch hearth to Lakeshire while setting your new home to Menethil Harbor
    .target Innkeeper Helbrek

step
    .goto Redridge Mountains,27.01,44.82,60
    >>Regroup in Lakeshire. Verify that all three arrived in Redridge with their new Hearthstone home in Menethil Harbor before starting the level-26 circuit
    +Confirm the party is in Lakeshire and bound to Menethil Harbor

]])
