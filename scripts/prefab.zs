//Basic 'quality of life' recipes
//Needs "MiscItems.zs"

import mods.jei.JEI;

//EXAMPLE RECIPE
//Cheaper Minecarts. Great for Lost Cities maps, encourages use of the subways / monorails
//recipes.remove(<minecraft:minecart>);
//recipes.addShaped(<minecraft:minecart>,
// [[null, null, null],
//  [<minecraft:iron_nugget>, null, <minecraft:iron_nugget>],
//  [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]]);

//OreDict Declarations to swap:
// #1 - Compressed Dirt <extrautils2:compresseddirt> - compressed1xDirt
// #2 - Double Compressed Dirt <extrautils2:compresseddirt:1> - compressed2xDirt

//Chicken Coop
recipes.remove(<prefab:item_chicken_coop>);
recipes.addShaped(<prefab:item_chicken_coop>,
  [[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>],
   [<ore:logWood>, <ore:egg>, <ore:logWood>],
   [<extrautils2:compresseddirt>, <minecraft:hay_block>, <extrautils2:compresseddirt>]]);

//Produce Farm
recipes.remove(<prefab:item_produce_farm>);
recipes.addShaped(<prefab:item_produce_farm>,
  [[<prefab:item_pallet_of_bricks>, <extrautils2:compresseddirt:1>, <prefab:item_pallet_of_bricks>],
   [<minecraft:water_bucket>, <prefab:item_coil_of_lanterns>, <minecraft:water_bucket>],
   [<prefab:item_pallet_of_bricks>, <extrautils2:compresseddirt:1>, <prefab:item_pallet_of_bricks>]]);

//Tree Farm
recipes.remove(<prefab:item_tree_farm>);
recipes.addShaped(<prefab:item_tree_farm>,
  [[<prefab:item_pallet_of_bricks>, <extrautils2:compresseddirt:1>, <prefab:item_pallet_of_bricks>],
   [<minecraft:flower_pot>, <prefab:item_coil_of_lanterns>, <minecraft:flower_pot>],
   [<prefab:item_pallet_of_bricks>, <extrautils2:compresseddirt:1>, <prefab:item_pallet_of_bricks>]]);
recipes.addShaped(<prefab:item_tree_farm>,
  [[<prefab:item_pallet_of_bricks>, <extrautils2:compresseddirt:1>, <prefab:item_pallet_of_bricks>],
   [<minecraft:flower_pot>, <prefab:block_compressed_stone:4>, <minecraft:flower_pot>],
   [<prefab:item_pallet_of_bricks>, <extrautils2:compresseddirt:1>, <prefab:item_pallet_of_bricks>]]);


//Fish Pond
recipes.remove(<prefab:item_fish_pond>);
recipes.addShaped(<prefab:item_fish_pond>,
  [[<minecraft:tallgrass:2>, <minecraft:reeds>, <ore:treeSapling>],
   [<minecraft:water_bucket>, <minecraft:fishing_rod>, <minecraft:water_bucket>],
   [<extrautils2:compresseddirt:1>, <minecraft:fish:*>, <extrautils2:compresseddirt:1>]]);

//Barn
recipes.remove(<prefab:item_basic_structure>.withTag({ForgeCaps: {"prefab:structuresconfiguration": {configuration: {wareHouseFacing: "north", structureEnumName: "Barn"}}}, id: "prefab:item_basic_structure", Count: 1 as byte, Damage: 0 as short}));

recipes.addShaped(<prefab:item_basic_structure>.withTag({ForgeCaps: {"prefab:structuresconfiguration": {configuration: {wareHouseFacing: "north", structureEnumName: "Barn"}}}, id: "prefab:item_basic_structure", Count: 1 as byte, Damage: 0 as short}),
  [[<prefab:item_pallet_of_bricks>, <prefab:block_compressed_stone:3>, <prefab:item_pallet_of_bricks>],
   [<prefab:item_bundle_of_timber>, <prefab:item_bundle_of_timber>, <prefab:item_bundle_of_timber>],
   [<prefab:item_bundle_of_timber>, <extrautils2:compresseddirt>, <prefab:item_bundle_of_timber>]]);

//Greenhouse
recipes.remove(<prefab:item_basic_structure>.withTag({ForgeCaps: {"prefab:structuresconfiguration": {configuration: {wareHouseFacing: "north", structureEnumName: "GreenHouse"}}}, id: "prefab:item_basic_structure", Count: 1 as byte, Damage: 0 as short}));

recipes.addShaped(<prefab:item_basic_structure>.withTag({ForgeCaps: {"prefab:structuresconfiguration": {configuration: {wareHouseFacing: "north", structureEnumName: "GreenHouse"}}}, id: "prefab:item_basic_structure", Count: 1 as byte, Damage: 0 as short}),
  [[<prefab:block_compressed_stone:1>, <ore:paneGlass>, <prefab:block_compressed_stone:1>],
   [<prefab:block_compressed_stone:1>, <minecraft:water_bucket>, <prefab:block_compressed_stone:1>],
   [<prefab:item_string_of_lanterns>, <extrautils2:compresseddirt:1>, <prefab:item_string_of_lanterns>]]);
