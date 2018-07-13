import crafttweaker.item.IIngredient;

//Removes Default TR Player Detector Recipe
recipes.removeByRecipeName("player_detector");
recipes.removeByRecipeName("player_detector:1");
recipes.removeByRecipeName("player_detector:2");
recipes.removeByRecipeName("techreborn:computer_cube"); 

//Adds in TR Player Detector Recipe All (Cheaper)
recipes.addShaped(<techreborn:computer_cube>,
 [[<ore:circuitBasic>, <techreborn:part:24>, <minecraft:redstone>],
  [<techreborn:part:24>, <techreborn:machine_frame:1>, <techreborn:part:24>],
  [<minecraft:redstone>, <techreborn:part:24>, <ore:circuitBasic>]]);
recipes.addShaped(<techreborn:player_detector>,
 [[null, <minecraft:emerald>, null],
  [<ore:circuitAdvanced>, <techreborn:computer_cube>, <ore:circuitAdvanced>],
  [null, <minecraft:emerald>, null]]);
 
 //Adds in Other and You Detector Recipe
 recipes.addShapeless(<techreborn:player_detector:1>, [<techreborn:player_detector>]);
 recipes.addShapeless(<techreborn:player_detector:2>, [<techreborn:player_detector:1>]);
 
 //Adds in You to All Detector Recipe
recipes.addShapeless(<techreborn:player_detector>, [<techreborn:player_detector:2>]);