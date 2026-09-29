RXPGuides.RegisterGuide([[
#forever
#season 0
#version 1
#group Forever Trio Launch
#name 24-25 Ruins of Lordaeron
#displayname 24-25 Ruins of Lordaeron
#next 25-28 Blackfathom Deeps
<< Alliance (Warlock/Priest/Warrior)

-- Direct follow-up from the Ashenvale, WC & Stonetalon trio route.
-- All three players should have Wet Job (79974) from the Stonetalon sleeping bag camp.
-- Forever ship route: Stormwind <-> Auberdine; Auberdine -> Menethil -> Southshore.
-- Sources: installed SoD sleeping bag route and Forever Alliance guides;
-- https://www.wowhead.com/forever/guide/cozy-sleeping-bag-locations-rewards
-- https://www.wowhead.com/forever/guide/dungeons/every-dungeon-quest-location
-- https://www.wowhead.com/forever/news/three-new-ship-routes-debuting-in-forever-382891
-- https://www.wowhead.com/forever/guide/ruins-of-lordaeron-dungeon-overview-location-rewards
-- https://www.wowhead.com/forever/quest=95250/abominable-creatures
-- https://www.wowhead.com/forever/quest=95195/bloodied-insignia
-- https://www.wowhead.com/forever/quest=95189/crest-of-lordaeron
-- https://www.wowhead.com/forever/quest=92415/remember-that-i-love-you

step
    .goto 1440/1,-283.73,2827.920
    >>Talk to |cRXP_FRIENDLY_Daelyshia|r in Astranaar.
    .fly Auberdine >> Fly to Auberdine
    .target Daelyshia

step
    .goto 1439,38.325,43.039
    >>Talk to |cRXP_FRIENDLY_Gershala Nightwhisper|r. Pick this up now for the Blackfathom Deeps run after Ruins of Lordaeron.
    .accept 1275 >> Accept Researching the Corruption
    .target Gershala Nightwhisper
    .isQuestAvailable 1275

step
    >>Board the boat for Menethil Harbor in the Wetlands. Check the destination before boarding.
    .zone Wetlands >> Take the boat from Auberdine to Menethil Harbor

step
    .goto Wetlands,9.5,59.7
    >>Talk to the flight master in Menethil Harbor.
    .fp Menethil >> Get the Menethil Harbor flight path

step
    .goto Wetlands,9.5,59.7
    >>Fly to Thelsamar in Loch Modan. All three players should have its flight path from the earlier Loch Modan guide.
    .fly Loch Modan >> Fly to Loch Modan

step
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,49.421,12.917,10
    >>Travel to the Stonewrought Dam. Carefully drop to the carved ledge facing the Wetlands; every player must reach the figurine.

step
    .goto Loch Modan,49.421,12.917
    >>Click the |cRXP_PICK_Carved Figurine|r on the dam ledge.
    .turnin 79974 >> Turn in Wet Job
    .accept 79975 >> Accept Eagle's Fist

step
    .goto Loch Modan,33.9,50.9
    >>Return to the Thelsamar flight master.
    .fly Ironforge >> Fly to Ironforge

step << Priest
    .goto Ironforge,24.7,8.2
    >>Talk to |cRXP_FRIENDLY_High Priest Rohan|r in the Mystic Ward. Train all useful spells and ranks for the Ruins run.
    .trainer >> Train Priest spells
    .target High Priest Rohan

step << Warlock
    .goto Ironforge,50.3,5.7
    >>Talk to |cRXP_FRIENDLY_Briarthorn|r in the Forlorn Cavern. Train your available spells and ranks, including Ritual of Summoning if you do not have it yet.
    .trainer >> Train Warlock spells
    .target Briarthorn

step
    .goto Ironforge,50.826,5.613
    >>Talk to |cRXP_FRIENDLY_Gerrig Bonegrip|r in the Forlorn Cavern. Keep this quest for Blackfathom Deeps.
    .accept 971 >> Accept Knowledge in the Deeps
    .target Gerrig Bonegrip
    .isQuestAvailable 971

step << Warrior
    .goto Ironforge,65.9,88.4
    >>Talk to |cRXP_FRIENDLY_Bilban Tosslespanner|r in the Hall of Arms. Train your available combat abilities and ranks before the dungeon.
    .trainer >> Train Warrior abilities
    .target Bilban Tosslespanner

step
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >> Enter the Deeprun Tram

step
    .zone Stormwind City >> Take the tram to Stormwind

step
    .goto Stormwind City,74.182,7.465
    >>If you have |cRXP_LOOT_An Old History Book|r, give it to |cRXP_FRIENDLY_Milton Sheaf|r in the library. His follow-up is a free turn-in at Southshore.
    .turnin 337 >> Turn in An Old History Book
    .use 2794
    .target Milton Sheaf
    .itemcount 2794,1

step
    .goto Stormwind City,74.182,7.465
    >>Pick up the delivery to |cRXP_FRIENDLY_Loremaster Dibbs|r if Milton offers it.
    .accept 538 >> Accept Southshore
    .target Milton Sheaf
    .isQuestAvailable 538

step
    .goto 1453/0,1330.100,-8645.400
    >>At Stormwind Harbor, board the boat to Auberdine. In Auberdine, transfer to the Menethil Harbor/Southshore boat. Stay on that second boat through Menethil Harbor.
    .zone Darkshore >> Take the Stormwind Harbor boat to Auberdine

step
    >>Transfer to the Menethil Harbor/Southshore boat in Auberdine. Do not get off when it stops at Menethil.
    .zone Hillsbrad Foothills >> Take the boat to Southshore

step
    .goto Hillsbrad Foothills,49.338,52.272
    >>Talk to the Southshore flight master before leaving town.
    .fp Southshore >> Get the Southshore flight path

step
    .goto Hillsbrad Foothills,50.56,57.10
    >>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r if you brought Milton's delivery.
    .turnin 538 >> Turn in Southshore
    .target Loremaster Dibbs
    .isOnQuest 538

step
    .goto Hillsbrad Foothills,87.691,48.166,10
    >>Travel east to Thoradin's Wall at the Arathi border. The wall quest is above the cart on the Hillsbrad side.

step
    .goto Arathi Highlands,24.132,21.470,7
    >>Climb the cart and make your way along the wall.

step
    .goto Arathi Highlands,22.466,24.127
    >>Click the hanging |cRXP_PICK_Messenger Bag|r. Each player must turn in and accept the next quest.
    .turnin 79975 >> Turn in Eagle's Fist
    .accept 79976 >> Accept This Must Be The Place

step
    .goto Arathi Highlands,22.466,24.127
    >>Click the |cRXP_PICK_Hastily Rolled-Up Satchel|r below the bag. Keep the Cozy Sleeping Bag and Student Fodder.
    .turnin 79976 >> Turn in This Must Be The Place

step
    >>Return west through Hillsbrad, then continue toward Silverpine Forest. Avoid Tarren Mill and the Sepulcher. From the Lordamere Lake shore, swim north into Tirisfal Glades.
    .zone Silverpine Forest >> Run toward Lordamere Lake

step
    >>Swim north across Lordamere Lake and reach Tirisfal Glades. Regroup before crossing the Horde roads near Undercity.
    .zone Tirisfal Glades >> Travel to Tirisfal Glades

step
    .goto Tirisfal Glades,61.2,67.4,100
    >>Run together to the surface Ruins of Lordaeron above Undercity. The dungeon entrance is on the left as you enter the ruins.

step
    .goto Tirisfal Glades,61.2,67.4,100
    >>Find two more party members for the Warlock, Priest and Warrior trio. Have the Warlock cast Ritual of Summoning at the entrance, with the Priest and Warrior helping to summon the other two.
    +Form a full party and summon everyone to Ruins of Lordaeron

step
    >>Enter the dungeon together. |cRXP_FRIENDLY_Captain Truman|r is just to the left inside the entrance. Everyone should accept his quest before the group moves on. Watch for the Crest of Lordaeron throughout the run; it can spawn in several places.
    .accept 95250 >> Accept Abominable Creatures
    .target Captain Truman

step
    >>Kill and loot skeletons until each player finds the quest-starting |cRXP_LOOT_Bloodied Insignia|r. Right-click it to start the quest, then keep looting skeletons for nine more.
    .use 268535
    .accept 95195 >> Accept Bloodied Insignia

step
    >>Defeat |cRXP_ENEMY_The Baron|r in King's Alley and loot his head for every player. Keep the tank topped up for his hard-hitting Knockout.
    .complete 95250,1 >> Loot the Head of the Baron
    .mob The Baron

step
    >>In the Lordaeron Graveyard near |cRXP_ENEMY_Rath'mael|r, find the |cRXP_PICK_Blood-Stained Letter|r on the ground. Every player should loot and right-click it to start a delivery to Stormwind and then Duskwood.
    .use 251522
    .accept 92415 >> Accept Remember That I Love You
    .mob Rath'mael

step
    >>Search for the |cRXP_PICK_Crest of Lordaeron|r as you clear. It has one random spawn per instance: check tower walls and floors, the crypt near the spider area, and the pavilion near Bjork. Everyone must loot and right-click it to start the Alliance quest.
    .use 268579
    .accept 95189 >> Accept Crest of Lordaeron

step
    >>Before leaving, check that everyone has ten Bloodied Insignias. Clear more skeletons if anyone is short.
    .complete 95195,1 >> Collect 10 Bloodied Insignias
    .mob Skeletal Soldier

step
    >>Return to |cRXP_FRIENDLY_Captain Truman|r near the dungeon entrance with the Baron's head. Each player can choose a reward.
    .turnin 95250 >> Turn in Abominable Creatures
    .target Captain Truman

step
    >>Leave the dungeon together. Return to Stormwind for the three remaining quest turn-ins. Retrace the Southshore and boat route, or hearth to Astranaar and travel through Auberdine if your Hearthstone is ready.
    .zone Stormwind City >> Return to Stormwind

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
    .zone Duskwood >> Travel to Darkshire in Duskwood

step
    .goto Duskwood,73.28,44.76
    >>Talk to |cRXP_FRIENDLY_Avette Fellwood|r behind the inn in Darkshire to deliver the letter and finish the Ruins quest chain.
    .turnin 95161 >> Turn in Remember That I Love You
    .target Avette Fellwood

]])
