-- One material list, instantiated as three guides for ordinary #include use.
-- No labels: the same city module can be included twice in one chapter.
local shopping = [[
#forever
#version 6
#group Forever Trio Launch
#internal
#name 01-60 City Supplies - @NAME@
#displayname 01-60 City Supplies - @NAME@
<< Alliance

@TRAINERS@

step << Warlock
    .skill cooking,<75,1
    .train 25704,1 --No need for this fallback after learning Smoked Sagefish
    @COOKING@
    >>Talk to the adjacent Cooking trainer and learn Crab Cake at Cooking 75 or higher. It is an Intellect-food option before Smoked Sagefish, and a fallback if that recipe is still missing.
    .train 2544 >> Learn Crab Cake

step
    @AH@
    >>Visit the Auction House even if your bags already contain the materials. Pool party supplies, buy only the shortfall, and collect purchases from a mailbox.
    >>These are raw-material reserves for crafting at campfire stops. Finish training and city skill-up crafts before buying the departure reserves. Keep the reserves until the next camp.
    +Visit the Auction House and check the party's shopping list
    .target @AUCTIONEERS@

step << Warrior
    @AH@
    >>Keep 20 Light Leather for Camp Tents and 5 Strange Dust for Minor Wizard Oil. Do not spend the reserved dust on Enchanting skill-ups before leaving.
    .collect 2318,20 --Light Leather (20)
    .collect 10940,5 --Strange Dust (5)

step << Warlock
    @AH@
    >>Reserve materials for 10 Minor Arcane Elixirs, 20 Elixirs of Minor Force and 20 Elixirs of Minor Strength. Strength and Force together require 40 Silverleaf.
    .collect 2447,10 --Peacebloom for Arcane (10)
    .collect 765,40 --Silverleaf for Force and Strength (40)
    .collect 2449,20 --Earthroot for Strength (20)

step << Warlock
    @AH@
    >>Keep these fish raw for 20 Fish Bowls. They are separate from cooking ingredients.
    .collect 6291,20 --Raw Brilliant Smallfish for Fish Bowls (20)

step << Paladin
    @AH@
    >>Keep 20 Light Leather for Camp Chairs. Buy only the shortfall after pooling the party's leather.
    .collect 2318,20 --Light Leather (20)

step << Warrior/Paladin
    @AH@
    >>Buy finished weapon stones; the party no longer has Blacksmithing. Aim for 10 usable stones for your equipped weapon. Choose sharpening stones for sharp weapons or weightstones for blunt weapons, checking the level requirement.
    >>If using Wizard Oil on this weapon, skip its stones: only one temporary coating can be active on a weapon.
    +Check finished weapon stones for your current weapon

step << Warlock
    @AH@
    .skill cooking,<80,1
    .train 25704,3 --Only if Smoked Sagefish is learned
    >>Warlock: at Cooking 80 or higher, reserve 20 Raw Sagefish for Smoked Sagefish. Buy 20 Mild Spices at the cooking supplier below.
    .collect 21071,20 --Raw Sagefish (20)

step << Warlock
    @AH@
    .skill cooking,<75,1
    .train 2544,3 --Only if Crab Cake is learned
    .train 25704,1 --Prefer learned Smoked Sagefish
    >>Warlock: reserve 20 Crawler Meat for Crab Cakes. The supplied beta tooltip gives +3 Intellect for 15 minutes. Buy 20 Mild Spices below.
    .collect 2674,20 --Crawler Meat for Crab Cake (20)

step << Warlock
    @AH@
    .train 2544,1 --Prefer learned Crab Cake
    .skill cooking,<50,1
    .train 7827,3 --Only if Rainbow Fin Albacore is learned
    .train 25704,1 --Prefer learned Smoked Sagefish
    >>Warlock: at Cooking 50 or higher, reserve 20 Raw Rainbow Fin Albacore for spell-damage food. This recipe needs no spices.
    .collect 6361,20 --Raw Rainbow Fin Albacore (20)

step << Warlock
    @AH@
    .train 2544,1 --Prefer learned Crab Cake
    .skill cooking,<1,1
    .train 2540,3
    .train 7827,1
    .train 25704,1
    >>Warlock: until a spell-damage fish recipe is learned, reserve 20 Chunk of Boar Meat for basic recovery food and Cooking skill-ups. Keep the 20 Fish Bowl smallfish separate.
    .collect 769,20 --Chunk of Boar Meat (20)

step << Warlock
    @AH@
    .train 2544,1 --Prefer learned Crab Cake
    .train 2540,1
    .train 7827,1
    .train 25704,1
    >>Warlock: learn an available Cooking recipe or buy 20 usable ready-made food. Aim for Rainbow Fin Albacore at Cooking 50, Crab Cake at 75 and Smoked Sagefish at 80; these steps do not force skill gains.
    +Check Warlock food and recipe availability

step << Warrior/Paladin
    @AH@
    .skill cooking,<50,1
    .train 7753,3 --Only if Longjaw Mud Snapper is learned
    >>Melee: at Cooking 50 or higher, reserve 20 Raw Longjaw Mud Snapper. The supplied beta tooltip gives +10 Attack Power for 15 minutes. No spices are required.
    .collect 6289,20 --Raw Longjaw Mud Snapper (20)

step << Warrior/Paladin
    @AH@
    .skill cooking,<1,1
    .train 7752,3 --Only if Slitherskin Mackerel is learned
    .train 7753,1 --Prefer learned Longjaw Mud Snapper
    >>Melee: reserve 20 Raw Slitherskin Mackerel. The supplied beta tooltip gives +6 Attack Power for 15 minutes. No spices are required. These are different fish from Warlock's Fish Bowl smallfish.
    .collect 6303,20 --Raw Slitherskin Mackerel for melee food (20)

step << Warrior/Paladin
    .train 7752,1 --Prefer learned Slitherskin Mackerel
    .train 7753,1 --Prefer learned Longjaw Mud Snapper
    @AH@
    .skill cooking,<110,1
    .train 3397,3 --Only if Big Bear Steak is learned
    >>Melee: at Cooking 110 or higher, reserve 20 Big Bear Meat for Big Bear Steak. Buy 20 Hot Spices below. This recipe must already be learned; it is not assumed available from the Auction House.
    .collect 3730,20 --Big Bear Meat (20)

step << Warrior/Paladin
    .train 7752,1 --Prefer learned Slitherskin Mackerel
    .train 7753,1 --Prefer learned Longjaw Mud Snapper
    @AH@
    .skill cooking,<50,1
    .train 2542,3 --Only if Goretusk Liver Pie is learned
    .train 3397,1 --Prefer learned Big Bear Steak
    >>Melee: at Cooking 50 or higher, reserve 20 Goretusk Liver for Goretusk Liver Pie. Buy 20 Mild Spices below. Learn the recipe from the earlier Goretusk Liver Pie quest reward if you have it.
    .collect 723,20 --Goretusk Liver (20)

step << Warrior/Paladin
    .train 7752,1 --Prefer learned Slitherskin Mackerel
    .train 7753,1 --Prefer learned Longjaw Mud Snapper
    @AH@
    .skill cooking,<40,1
    .train 8607,3 --Only if Smoked Bear Meat is learned
    .train 2542,1
    .train 3397,1
    >>Melee: at Cooking 40 or higher, reserve 20 Bear Meat for Smoked Bear Meat. This recipe needs no spices.
    .collect 3173,20 --Bear Meat (20)

step << Warrior/Paladin
    .train 7752,1 --Prefer learned Slitherskin Mackerel
    .train 7753,1 --Prefer learned Longjaw Mud Snapper
    @AH@
    .skill cooking,<1,1
    .train 2540,3 --Only if Roasted Boar Meat is learned
    .train 8607,1
    .train 2542,1
    .train 3397,1
    >>Melee: use Roasted Boar Meat until you learn a better Strength-food recipe. Reserve 20 Chunk of Boar Meat; no spices are required.
    .collect 769,20 --Chunk of Boar Meat (20)

step << Warrior/Paladin
    .train 7752,1 --Prefer learned Slitherskin Mackerel
    .train 7753,1 --Prefer learned Longjaw Mud Snapper
    @AH@
    .train 2540,1
    .train 8607,1
    .train 2542,1
    .train 3397,1
    >>Melee: learn Slitherskin Mackerel or Longjaw Mud Snapper, use a learned Strength-food fallback or buy 20 usable ready-made food. Recipe targets are Roasted Boar Meat at Cooking 1, Smoked Bear Meat at 40, Goretusk Liver Pie at 50 and Big Bear Steak at 110. Actual skill and known recipes determine your ingredient list.
    +Check melee food and recipe availability

step << Warrior
    @SEEDS@
    >>Buy only the shortfall to 5 Maple Seeds from the city's reagent vendor. Keep them with your 5 Strange Dust for campfire oil crafts.
    .collect 17034,5 --Maple Seed (5)

step << Warrior
    @VIALS@
    >>Buy only the shortfall to 5 Empty Vials for Minor Wizard Oil.
    .collect 3371,5 --Empty Vial for oils (5)

step << Warlock
    @VIALS@
    >>Keep 70 Empty Vials: 10 for Arcane, 20 for Force, 20 for Strength and 20 reserved for Fish Bowls. Buy only the shortfall after any city skill-up crafts.
    .collect 3371,70 --Empty Vial: 50 elixirs plus 20 Fish Bowls (70)

step << Paladin
    @COOKING@
    >>Buy only the shortfall to 20 Simple Wood for Camp Chairs and Basic Campfire Kits. Keep your Flint and Tinder for campfire crafting.
    .collect 4470,20 --Simple Wood (20)
    .collect 4471,1 --Flint and Tinder (1)

step << Warlock
    @COOKING@
    .skill cooking,<80,1
    .train 25704,3
    >>Warlock: reserve 20 Mild Spices for Smoked Sagefish.
    .collect 2678,20 --Mild Spices (20)

step << Warlock
    @COOKING@
    .skill cooking,<75,1
    .train 2544,3
    .train 25704,1
    >>Warlock: reserve 20 Mild Spices for Crab Cakes.
    .collect 2678,20 --Mild Spices (20)

step << Warrior/Paladin
    .train 7752,1 --Prefer learned Slitherskin Mackerel
    .train 7753,1 --Prefer learned Longjaw Mud Snapper
    @COOKING@
    .skill cooking,<110,1
    .train 3397,3
    >>Melee: reserve 20 Hot Spices for Big Bear Steak.
    .collect 2692,20 --Hot Spices (20)

step << Warrior/Paladin
    .train 7752,1 --Prefer learned Slitherskin Mackerel
    .train 7753,1 --Prefer learned Longjaw Mud Snapper
    @COOKING@
    .skill cooking,<50,1
    .train 2542,3
    .train 3397,1
    >>Melee: reserve 20 Mild Spices for Goretusk Liver Pie.
    .collect 2678,20 --Mild Spices (20)

step
    >>Collect all purchases from the mailbox and finish party trades before leaving. Keep Warrior's leather, dust, seeds and vials; Warlock's herbs, fish and 70 vials; and Paladin's leather and wood as raw materials.
    >>At the next campfire stop, craft the camp equipment, oils, elixirs and food you need using learned recipes. Do not craft away the departure reserves in the city. Keep food ingredients separate from the Fish Bowl fish.
    >>Mana users: also check ready-to-use drinks for the journey before the next camp.
    +Confirm the party has its materials and is ready to leave the city
]]

local cities = {
    {
        TRAINERS = [[
step << Warrior
    .goto 1455/0,-1234.65,-5035.67
    >>Talk to |cRXP_FRIENDLY_Bilban Tosslespanner|r and train available class spells before shopping. If you already trained this visit, skip this step.
    .trainer >> Train your class spells, then close the trainer window
    .target Bilban Tosslespanner

step << Warlock
    .goto 1455/0,-1117.60,-4615.14,15,0
    .goto 1455/0,-1111.62,-4599.09
    >>Talk to |cRXP_FRIENDLY_Briarthorn|r and train available class spells before shopping. If you already trained this visit, skip this step.
    .trainer >> Train your class spells, then close the trainer window
    .target Briarthorn

step << Paladin
    .goto 1455/0,-907.69,-4592.93
    >>Talk to |cRXP_FRIENDLY_Beldruk Doombrow|r and train available class spells before shopping. If you already trained this visit, skip this step.
    .trainer >> Train your class spells, then close the trainer window
    .target Beldruk Doombrow
]],
        NAME = "Ironforge", ZONE = "Ironforge",
        AH = ".goto Ironforge,25.800,75.500,-1\n    .goto Ironforge,24.200,74.600,-1\n    .goto Ironforge,23.800,71.800,-1",
        AUCTIONEERS = "Auctioneer Lympkin;Auctioneer Redmuse;Auctioneer Buckler",
        SEEDS = ".goto Ironforge,31.0,27.0\n    >>Talk to |cRXP_FRIENDLY_Ginny Longberry|r for Maple Seeds.",
        VIALS = ".goto Ironforge,66.6,55.2\n    >>Talk to |cRXP_FRIENDLY_Soolie Berryfizz|r for Empty Vials.",
        COOKING = ">>Visit |cRXP_FRIENDLY_Emrul Riknussun|r beside the Cooking trainer at the Great Forge for cooking supplies; use a trade or general-goods vendor for wood if needed. Ask a guard for the Cooking trainer.",
    },
    {
        TRAINERS = [[
step << Warrior
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
    .goto 1453/0,323.3,-8689.29
    >>Talk to |cRXP_FRIENDLY_Wu Shen|r and train available class spells before shopping. If you already trained this visit, skip this step.
    .trainer >> Train your class spells, then close the trainer window
    .target Wu Shen

step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>Talk to |cRXP_FRIENDLY_Ursula Deline|r and train available class spells before shopping. If you already trained this visit, skip this step.
    .trainer >> Train your class spells, then close the trainer window
    .target Ursula Deline

step << Paladin
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    >>Talk to |cRXP_FRIENDLY_Arthur the Faithful|r and train available class spells before shopping. If you already trained this visit, skip this step.
    .trainer >> Train your class spells, then close the trainer window
    .target Arthur the Faithful
]],
        NAME = "Stormwind", ZONE = "Stormwind City",
        AH = ".goto 1453/0,660.28,-8814.55",
        AUCTIONEERS = "Auctioneer Jaxon",
        SEEDS = ".goto 1453/0,626.37,-8863.43\n    >>Talk to |cRXP_FRIENDLY_Kyra Boucher|r for Maple Seeds.",
        VIALS = ".goto 1453/0,635.44,-8863.81\n    >>Talk to |cRXP_FRIENDLY_Keldric Boucher|r for Empty Vials.",
        COOKING = ">>Visit |cRXP_FRIENDLY_Erika Tate|r beside the Cooking trainer in the Pig and Whistle in Old Town for cooking supplies; use a trade or general-goods vendor for wood if needed. Ask a guard for the Cooking trainer.",
    },
    {
        TRAINERS = [[
step << Warrior
    >>Ask a Darnassus guard for the Warrior trainer and follow the guard's map marker on the Warrior's Terrace. Train available class spells before shopping. If you already trained this visit, skip this step.
    .trainer >> Train your class spells, then close the trainer window

step << Warlock/Paladin
    >>Train your class spells at the next Ironforge or Stormwind visit. This module has no verified Darnassus trainer for your class; keep enough money for training before buying optional supplies.
    +Confirm your next class-training stop
]],
        NAME = "Darnassus", ZONE = "Darnassus",
        AH = ".goto 1457/1,2343.10,9856.95,-1\n    .goto 1457/1,2341.74,9872.610,-1",
        AUCTIONEERS = "Auctioneer Tolon;Auctioneer Golothas",
        SEEDS = ">>Visit |cRXP_FRIENDLY_Cyroen|r, the reagent vendor on the Craftsmen's Terrace, for Maple Seeds. Ask a guard for the trade district if needed.",
        VIALS = ">>Visit the Alchemy supplier on the Craftsmen's Terrace for Empty Vials. Ask a guard for the Alchemy trainer to locate the shop.",
        COOKING = ".goto Darnassus,48.4,21.2\n    >>Talk to |cRXP_FRIENDLY_Alegorn|r, the Cooking trainer on the Craftsmen's Terrace. Visit |cRXP_FRIENDLY_Fyldan|r beside him for cooking supplies; use a trade or general-goods vendor for wood if needed.",
    },
}

for _, city in ipairs(cities) do
    local guide = shopping:gsub("@(%u+)@", function(key)
        return assert(city[key], "Missing city-supplies field: " .. key)
    end)
    -- Gate every expanded step, not just the include placeholder. This also
    -- skips Darnassus supplies when an alternate BFD exit bypasses the city.
    guide = guide:gsub("\nstep([^\n]*)\n", function(condition)
        return "\nstep" .. condition .. "\n    .zoneskip " .. city.ZONE .. ",1\n"
    end)
    RXPGuides.RegisterGuide(guide)
end
