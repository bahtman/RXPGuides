# Forever trio city-supplies modules

Updated 21 October 2026 for **Forever Trio Launch**, Alliance Warrior / Warlock / Paladin, levels 5–34. City visits replenish **raw materials**; routine equipment, oils, elixirs and food are crafted at campfire stops. Finished sharpening stones and weightstones are bought because the party does not retain Blacksmithing.

## Departure targets

These are inventory targets, not amounts to purchase each visit. Trade existing party stock first, then buy only the shortfall and retrieve purchases from the mailbox.

| Character | Required materials in bags when leaving |
|---|---|
| Warrior | 20 Light Leather (2318), 5 Strange Dust (10940), 5 Maple Seeds (17034), 5 Empty Vials (3371) |
| Paladin | 10 Peacebloom (2447), 40 Silverleaf (765), 20 Earthroot (2449), 70 Empty Vials (3371), 20 Raw Brilliant Smallfish (6291) |
| Warlock | 20 Light Leather (2318), 20 Simple Wood (4470), plus the reusable Flint and Tinder (4471) |

Paladin's totals cover **10 Minor Arcane crafts, 20 Minor Force crafts, 20 Minor Strength crafts and 20 Fish Bowl crafts**. Arcane uses 10 Peacebloom + 10 vials; Force uses 20 Silverleaf + 20 vials; Strength uses 20 Silverleaf + 20 Earthroot + 20 vials. Fish Bowls use the remaining 20 vials and 20 smallfish. This uses the installed route's one-item-per-elixir-craft assumption; verify current recipe yields in the beta crafting window. Sources: [Arcane recipe](https://foreverdiff.com/recipes/minor-arcane-elixir-54210/), [Strength recipe](https://theforeverera.com/en/recipes/alchemy/elixir-of-minor-strength/), and the installed Dun Morogh route for Force and Fish Bowls.

The modules require the raw-material counts even when finished items are already in bags. There is no automatic purchase or automatic expenditure. Initial profession training/skill-up crafts stay before the departure refill; the earlier Warrior temporary-Alchemy detour and routine city/tram production targets have been removed.

## Reuse in another route

The definitions are in `Guides/Forever/Custom-Forever-City-Supplies.lua`, loaded before the custom routes by `Guides/GuideList-forever.xml`.

```text
step
    #include Forever Trio Launch\City Supplies - Ironforge
```

Replace `Ironforge` with `Stormwind` or `Darnassus` for the other cities. Place the include **after any quest-specific training and city material consumption, before departure**. The caller handles travel into/out of the city, class quests and hearth binds. The module handles routine class training before AH attendance, material checks, vendor supplies and departure confirmation.

One shared Lua guide-text template supplies all three definitions, so changing a material target changes every city. City configuration supplies the AH and vendor directions. Every generated step has a `.zoneskip <city>,1` guard: selecting a route halfway through, or bypassing Darnassus after BFD, does not pull the player back to that city. The guide text contains no labels, so the same module may be included repeatedly in one chapter.

This uses the same ordinary `#include Group\Guide` form as `Guides/Forever/dungeon/Alliance-1-14_DwarfGnome.lua`. `GuideWindow.lua` expands includes into copied steps and clears its recursion guard after each include, allowing repeated city modules. The guards are on every expanded step because an include-placeholder gate would not automatically propagate to its contents.

## Cooking progression by role

The city module does not level Cooking by itself. It replenishes ingredients for 20 meals according to each character's **current Cooking skill and learned recipes**. The original shared 1/50/80 ladder has been replaced by separate Warlock and melee branches.

| Character | Cooking / learned recipe | Departure ingredients |
|---|---|---|
| Warlock | 1+, before caster fish recipes | 20 Chunk of Boar Meat for Roasted Boar Meat, as recovery food / skill-ups |
| Warlock | 50+, Rainbow Fin Albacore (7827) | 20 Raw Rainbow Fin Albacore; no spices |
| Warlock | 75+, Crab Cake (2544), before learned Sagefish | 20 Crawler Meat (2674) + 20 Mild Spices |
| Warlock | 80+, Smoked Sagefish (25704) | 20 Raw Sagefish + 20 Mild Spices |
| Warrior / Paladin | 1+, Slitherskin Mackerel (7752) preferred early | 20 Raw Slitherskin Mackerel (6303); no spices |
| Warrior / Paladin | 50+, Longjaw Mud Snapper (7753) preferred once learned | 20 Raw Longjaw Mud Snapper (6289); no spices |
| Warrior / Paladin | 1+, Roasted Boar Meat (2540), if neither AP fish recipe is learned | 20 Chunk of Boar Meat; no spices |
| Warrior / Paladin | 40+, Smoked Bear Meat (8607) | 20 Bear Meat; no spices |
| Warrior / Paladin | 50+, Goretusk Liver Pie (2542) | 20 Goretusk Liver + 20 Mild Spices |
| Warrior / Paladin | 110+, Big Bear Steak (3397) | 20 Big Bear Meat + 20 Hot Spices |

Warlock prefers learned Smoked Sagefish, then Crab Cake, then Rainbow Fin Albacore, then basic recovery food. Melee prefer learned Longjaw Mud Snapper, then Slitherskin Mackerel. The listed Strength-food ladder is used only when neither Attack Power fish recipe is known. If no listed recipe is known, a manual step asks for a usable recipe or ready-made food. Recipe thresholds are eligibility milestones, not claims that the route guarantees reaching that skill by a particular character level. The 20-meal reserves are not a calculated profession-leveling shopping list; yellow/green crafts may require extra ingredients for skill gains.

Warlock follows the [Forever spell-damage food category](https://wowforevertalents.com/professions/cooking/smaller-headings/); Warrior and Paladin prefer Attack Power fish, with [Strength-food recipes](https://wowforevertalents.com/professions/cooking/strength-food/). Spell and reagent IDs were checked through those recipe links and the installed guides. The beta crafting window remains the final check for current recipe requirements and effects.

Existing Rainbow Fin Albacore and Smoked Sagefish recipe-purchase steps show only for Warlock. At the existing Ironforge Tansy stop, both melee characters buy Slitherskin Mackerel and Longjaw Mud Snapper recipes and learn them when their Cooking skill allows. The Warlock city module trains Crab Cake from the adjacent Cooking trainer at Cooking 75 if Sagefish is not already known. The melee Goretusk Liver Pie recipe comes from the earlier quest reward if retained and learned. Smoked Bear Meat and Big Bear Steak are used only when learned; the module does not force an extra recipe-acquisition trip or assume a bound recipe can be bought on the AH.

The supplied in-game tooltips confirm Slitherskin Mackerel gives **6 Attack Power**, Longjaw Mud Snapper gives **10 Attack Power**, and Crab Cake gives **3 Intellect**, each for 15 minutes after eating for 10 seconds. All three also show the 5% kill-XP bonus. Those observed beta tooltips take precedence over older food assumptions.

Warlock's 20 Raw Brilliant Smallfish remain reserved for Fish Bowls and are never counted as cooking stock. All three characters keep independent ingredient targets, even if they share the same Cooking skill.

## Vendors and completion

AH steps navigate using coordinates from the installed Forever routes. Ironforge seed/vial waypoints and Stormwind reagent/vial waypoints also come from the local corpus. Darnassus Cooking steps navigate to Alegorn at 48.4,21.2, verified from the supplied beta screenshot; Fyldan is beside the trainer. Other cooking suppliers and the remaining Darnassus vendor stops use guard/district directions where exact waypoints are not verified.

- Ironforge: Ginny Longberry for seeds, Soolie Berryfizz for vials, Emrul Riknussun beside the Cooking trainer for spices. Trade/general-goods vendors supply wood.
- Stormwind: Kyra Boucher for seeds, Keldric Boucher for vials, Erika Tate beside the Old Town Cooking trainer for spices. Trade/general-goods vendors supply wood.
- Darnassus: Cyroen for seeds, the Alchemy supplier for vials, Fyldan beside the Cooking trainer for spices. Trade/general-goods vendors supply wood.

External vendor cross-checks: [Kyra](https://metaforge.app/wow-forever/database/npcs/kyra-boucher), [Keldric](https://metaforge.app/wow-forever/database/npcs/keldric-boucher), [Cyroen](https://metaforge.app/wow-forever/database/npcs/cyroen?returnTo=%2Fwow-forever%2Fzones%2Fdarnassus), and [cooking suppliers](https://thewowdb.com/wow-forever/guides/professions/cooking/). Vendor availability can differ between beta builds.

The leading `+` AH objective requires manual confirmation even when inventory is full. `.collect` checks the actual material targets and can complete from existing bag stock; it does not count bank stock by default. `.skill cooking,<N,1` skips below N; `.skill cooking,N,1` skips at or above N. `.train spell,3` skips unless the recipe is known, while `.train spell,1` skips when it is known. These behaviors were checked in this installation's `GuideLoader.lua` and `functions.lua`.

## City visits and auction houses

Each row includes the appropriate reusable city-supplies module in the custom route. The early Stormwind visit spans the end of Dun Morogh and start of Elwynn. The final level-34 stop belongs to the separately selected Dalaran Stormwind Deliveries helper, as before.

| Visit | Route file in `Guides/Forever/` | Shopping emphasis |
|---|---|---|
| First Ironforge, early Dun Morogh | `Custom-Forever-5-11-Dun-Morogh.lua` | Departure materials after profession training; only characters actually in Ironforge see the module. |
| Second Ironforge, about 10–11 | Same | Raw materials after recipe training and Alchemy skill-ups; Paladin needs 10 Linen Cloth before the city class chain. |
| First Stormwind, about 11 | Same, continuing into Elwynn | Top up raw materials; routine camp/oil crafts are deferred; Warrior buys the existing 12 Shiny Red Apples in the next chapter. |
| Ironforge / Halls of Thanes, about 15–16 | `Custom-Forever-12-15-Loch-Modan.lua` | Departure module follows dungeon rewards and training. Check finished stones against the new weapon. |
| Stormwind after early Redridge, about 16 | `Custom-Forever-16-18-Westfall-Redridge.lua` | Refill for Westfall; reserve class-training money. |
| Stormwind before Darkshore, about 18 | Same | Longer travel reserve; existing optional shopping: 5 Strider Meat and 6 Darkshore Grouper per eligible character. Strider turn-in requires Cooking 10. |
| Darnassus after Darkshore, about 19–20 | `Custom-Forever-18-21-Darkshore.lua` | Top up for the Ashenvale loop; preserve the Stormwind hearth bind. |
| Stormwind after Ashenvale, about 20 | `Custom-Forever-20-21-Redridge.lua` | Redridge, escort and Ruins of Lordaeron supplies. |
| Stormwind after Deadmines, about 24–26 | `Custom-Forever-24-26-Deadmines.lua` | Refill for Duskwood and inspect weapon coating choice after rewards. |
| Stormwind after third Duskwood pass, about 24–25 | `Custom-Forever-24-25-Duskwood-Third-Pass.lua` | Buy 1 Bronze Tube (4371) per player from the AH, buying only the shortfall and collecting purchases from the mailbox. Keep it for the full Look to the Stars chain during the level-27 Darkshire visit; travel and Wetlands reserve before the boat. |
| Stormwind / Stockades, about 27–28 | `Custom-Forever-27-28-Wetlands-Second-Loop.lua` | Existing requirement: **5 Swiftness Potions per player** for the later MacKreel segment. Keep them reserved. |
| Darnassus after BFD, about 28–30 | `Custom-Forever-28-30-Blackfathom-Deeps.lua` | Small top-up before Ironforge; shopping skips if this city is bypassed. |
| Ironforge after BFD | Same | Refill after training and compare reward weapons; existing generic AH stop remains. |
| Ironforge before Gnomeregan, about 30 | `Custom-Forever-30-32-Gnomeregan-City-Deliveries.lua` | Dungeon reserve. Optional ring materials already requested: 1 Silver Bar and 1 Moss Agate per participant. |
| Ironforge after Gnomeregan, about 32 | Same | Existing optional quest materials: 1 Hillman's Cloak, 1 Bolt of Woolen Cloth and 4 Lesser Bloodstone Ore per participant. |
| Stormwind city deliveries, about 32 | Same | Refill before the Southshore hearth and Dalaran/Hillsbrad. |
| Stormwind during default 34–35 visit | `Custom-Forever-32-34-Dalaran-Hillsbrad.lua`, deliveries helper | Refill before resuming the default guide. This helper must be selected during that existing visit. |

AH navigation comes from the installed Forever guides:

| City | Location / NPC | Coordinate source |
|---|---|---|
| Ironforge | Commons: Auctioneers Lympkin, Redmuse or Buckler | Custom Dun Morogh and BFD: Ironforge 25.800,75.500 / 24.200,74.600 / 23.800,71.800 |
| Stormwind | Trade District: Auctioneer Jaxon | Custom Westfall/Redridge: `1453/0,660.28,-8814.55` (world coordinates, not percentages) |
| Darnassus | Tradesmen's Terrace: Auctioneers Tolon or Golothas | Shipped `Alliance-1-10_NightElf.lua`: `1457/1,2343.10,9856.95` / `2341.74,9872.610` (world coordinates) |

Dalaran in this route is a dungeon destination, not an added shopping-city detour. Default-guide visits beyond the custom route have not been edited.

## Validation and remaining checks

### Bronze Tube vendor research — 17 October 2026

Look to the Stars (174, 175, 177, 181) remains confined to the level-27 Darkshire/Eastvale route. Herble Baubbletump stock checks are retained on the four Darkshire entries up to and including that visit. No tube checks remain after the level-27 chain. Each uses `.bronzetube`, which skips the step when the player has one tube or has turned in 174 (`functions.lua`, `addon.functions.bronzetube`). The Stormwind AH objective after the third pass buys only a missing tube; an earlier vendor purchase satisfies it.

Other vendors researched (Billibub and Neal checks are now added as described below):

| Location | Seller and installed waypoint | Evidence and route fit |
|---|---|---|
| Stormwind, Dwarven District | Billibub Cogspinner; `1453/0,638.8,-8341.95` | Loaded `Guides/Forever/Alliance-11-20.lua` explicitly checks him for a Bronze Tube. [Forever listing](https://metaforge.app/wow-forever/database/npcs/billibub-cogspinner) also lists it. A city check before the existing AH fallback is possible. |
| Menethil Harbor, inside the keep | Neal Allen; `1437,10.760,56.721`, with entrance breadcrumbs in `Alliance-11-20.lua` | The loaded guide explicitly checks him for a tube. The [Forever item listing](https://metaforge.app/wow-forever/database/trade-goods/bronze-tube) lists him with limited stock. The first Wetlands loop is before level 27, so this is a useful later stock check. |
| Wetlands, Sundown Marsh | Fradd Swiftgear; `Wetlands,26.40,25.76` | The installed `GuideVault_001.lua` contains a tube vendor check here; the same Forever item listing names him. This is outside Menethil and should only be added if the existing marsh path justifies it. |
| Ironforge, Tinker Town | Gearcutter Cogspinner; `1455/0,-1249.95,-4793.470` | The loaded `Alliance-11-20.lua` explicitly checks him for a tube. Earlier Ironforge visits provide another possible acquisition point, at the cost of carrying the item longer. |
| Darkshore / Auberdine | No seller verified | An old [quest comment](https://www.wowhead.com/tbc/quest=174/look-to-the-stars) mentions a gnome in Darkshore without naming a seller. The item vendor lists checked do not substantiate it. It may be a Darkshire typo; that is an inference, not confirmation. No Darkshore tube stop added. |

Classic-reference price is about 8 silver before discounts and stock is limited. Current Forever beta stock, locations and pricing have not been checked in game; some databases explicitly inherit Classic vendor data. Do not promise a restock timer or wait at an empty vendor.

### Repeated Stormwind and Menethil checks

City Supplies version 8 removes the shared Billibub check, so later Stormwind shopping visits cannot reintroduce it. Six explicit checks cover the relevant Stormwind visits: first arrival at the end of Dun Morogh, both visits in Westfall/Redridge, the post-Ashenvale visit at the start of Redridge, the post-Deadmines visit, and the visit after the third Duskwood pass. The four visits with shopping modules check Billibub immediately before the module. Every check has `.zoneskip Stormwind City,1` and `.bronzetube`; vendor interaction completes the check even if stock is empty. The third-pass AH collection objective remains after the vendor check and module as a fallback.

Neal Allen checks use the entrance waypoints from the loaded `Alliance-11-20.lua`, finishing at `1437,10.760,56.721`. Three checks remain: the Menethil transit before Ironforge in 25-26 Blackfathom Deeps, and the initial and final Menethil passes in 26-26 Wetlands First Loop. The BFD filename still says 28-30, but its current guide name and next-guide links place it before the level-27 Duskwood chain. The Menethil check at the end of the level-27 chapter and all checks in Wetlands Second Loop and Final Loop have been removed. All retained checks use `.zoneskip Wetlands,1` and `.bronzetube`.

Default-guide source audit (installed filtered Forever routes):

| Guide | Tube checks found |
|---|---|
| `22-24 Wetlands` | Neal Allen around line 106; Gearcutter Cogspinner around line 877. |
| `23-24 Wetlands` | Neal Allen around line 147; Fradd Swiftgear around line 174; Gearcutter Cogspinner around line 427. |
| `24-27 Duskwood/Redridge` | Billibub at the opening Stormwind stop around line 34; Auctioneer Jaxon fallback shopping around lines 164–198; Herble on both Darkshire entries around lines 373 and 1348. There is also a late Yuka Screwspigot fallback in Burning Steppes around line 1834 and tube-dependent travel/hearth handling. |
| `29-32 Duskwood` | Auctioneer Jaxon around line 179 and Herble around line 205. |

These default checks support repeated checks along existing visits, with AH as a fallback. The custom route retains the level-27-only quest chain and does not adopt the default's Burning Steppes detour or tube-dependent hearth changes. Syntax and skip behavior were checked against `functions.lua`; generated city templates and custom coverage were checked statically. In-game vendor interaction and stock remain untested.

Validated the generated city-guide text with the repository's guide linter, checked the manifest order and all 17 include sites, and exercised the Cooking skill/recipe combinations against the installed condition logic. Reviewed repeated inclusion against `GuideWindow.lua`; no labels or sticky steps are introduced by these modules.

The helpers stock materials and remind players to craft at their next camp. They do not create additional campfire stops or automatically consume materials. In-game reload, fresh/partially progressed characters, exact supplier waypoints and current beta recipe yields remain untested.

## Class trainers

Each module now begins with class-specific training (version 5). Ironforge uses Bilban Tosslespanner, Briarthorn and Beldruk Doombrow; Stormwind uses Wu Shen, Ursula Deline and Arthur the Faithful. Waypoints come from the installed Forever Alliance guides and custom routes. Darnassus sends Warrior to the guard-marked Warrior trainer; Warlock and Paladin receive a manual reminder to reserve training money for the next Ironforge/Stormwind visit because local trainers are not verified. No extra city journey is introduced.

The installed `.trainer` objective completes when the trainer window closes; it does not require buying a particular spell or rank. Players who already trained during the same visit can skip the step. Existing quest-specific training steps remain intact. Every trainer step receives the same city guard as shopping steps, including repeated includes and bypassed cities. Syntax and generated guide text were checked locally; in-game reload and trainer interaction remain untested.

## Trio profession assignments

Warrior keeps Leatherworking/Enchanting and Camp Tent. Warlock buys and equips a Skinning Knife at the first Anvilmar visit, learns Skinning at the final Coldridge departure stop, and starts skinning only beyond Coldridge Pass; Warlock owns Camp Chair. Paladin takes Herbalism/Alchemy and Fishing, including Fish Bowl. Warlock collects Bitter Rivals and Frosthowl while Paladin makes the early fishing detour and shares Stocking Jetsteam. Class quests, class trainers and food branches remain with their original classes.

The early Dun Morogh skinning checkpoint requires 20 Skinning. Preserve at least 9 Light Leather equivalents for Warrior before the first Ironforge visit; every 3 Ruined Leather Scraps counts as 1 leather. The Knife vendor/equip interaction, profession budgets and revised split timing still require beta in-game verification.
