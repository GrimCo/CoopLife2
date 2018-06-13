import crafttweaker.liquid.ILiquidStack;

//Step 1: Prepare Ore Dictionary Entries

var toolKnife = <ore:toolKnife>;
var toolBowl = <ore:toolBowl>;
var toolPot = <ore:toolPot>;
var toolPan = <ore:toolPan>;

toolBowl.add(<minecraft:bowl>);
toolKnife.add(<contenttweaker:tool_knife>);
toolPot.add(<contenttweaker:tool_pot>);
toolPan.add(<contenttweaker:tool_pan>);

var doughAll = <ore:doughAll>;
doughAll.add(<actuallyadditions:item_misc:4>);
doughAll.add(<actuallyadditions:item_misc:9>);

var breadAll = <ore:breadAll>;
breadAll.add(<minecraft:bread>);
breadAll.add(<actuallyadditions:item_food:17>);

var rawPork = <ore:rawPork>;
rawPork.add(<minecraft:porkchop>);

var rawBeef = <ore:rawBeef>;
rawBeef.add(<minecraft:beef>);
rawBeef.add(<galacticraftcore:food:6>);

var rawChicken = <ore:rawChicken>;
rawChicken.add(<minecraft:chicken>);

var cookedPork = <ore:cookedPork>;
var cookedBeef = <ore:cookedBeef>;
var cookedChicken = <ore:cookedChicken>;

var listAllJuice = <ore:listAllJuice>;
listAllJuice.add(<actuallyadditions:item_food:2>);
listAllJuice.add(<contenttweaker:food_juice>);

var listAllfruit = <ore:listAllfruit>;
listAllfruit.add(<minecraft:apple>);
listAllfruit.add(<minecraft:melon>);
listAllfruit.add(<forestry:fruits:0>);
listAllfruit.add(<forestry:fruits:3>);
listAllfruit.add(<forestry:fruits:4>);
listAllfruit.add(<forestry:fruits:5>);
listAllfruit.add(<forestry:fruits:6>);

var listAllnut = <ore:listAllnut>;
listAllnut.add(<forestry:fruits:1>);
listAllnut.add(<forestry:fruits:2>);

var foodJam = <ore:foodJam>;
var foodNutbutter = <ore:foodNutbutter>;
var foodOil = <ore:foodOil>;
var foodSugar = <ore:sugar>;
var foodVinegar = <ore:foodVinegar>;

foodOil.add(<contenttweaker:food_oil>);
foodJam.add(<contenttweaker:food_jam>);
foodNutbutter.add(<contenttweaker:food_nutbutter>);
foodVinegar.add(<contenttweaker:food_vinegar>);
foodSugar.add(<minecraft:sugar>);

//Ingredients
recipes.addShapeless(<minecraft:sugar>,[<minecraft:beetroot>]);
recipes.addShapeless(<contenttweaker:food_juice>,[toolKnife,<ore:listAllfruit>]);
recipes.addShapeless(<contenttweaker:food_vinegar>,[toolPot,listAllJuice]);
recipes.addShapeless(<contenttweaker:food_oil> * 4,[<forge:bucketfilled>.withTag({FluidName: "canolaoil", Amount: 1000}).onlyWithTag({FluidName: "canolaoil", Amount: 1000})]);
recipes.addShapeless(<contenttweaker:food_mayo> * 4,[<ore:egg>,<ore:egg>,foodOil,foodVinegar]);
recipes.addShapeless(<contenttweaker:food_jam> * 4,[<ore:listAllfruit>,<ore:listAllfruit>,<ore:toolPot>,foodSugar]);
recipes.addShapeless(<contenttweaker:food_nutbutter>,[listAllnut,listAllnut,toolPot,foodSugar]);

//Tools
recipes.addShaped(<contenttweaker:tool_knife>,[[<ore:nuggetIron>],[<ore:nuggetIron>],[<ore:stickWood>]]);
recipes.addShaped(<contenttweaker:tool_pan>,[[ null,<ore:nuggetIron>,<ore:nuggetIron>],[<ore:stickWood>,<ore:ingotIron>,<ore:ingotIron>]]);
recipes.addShaped(<contenttweaker:tool_pot>,[[ null,<ore:nuggetIron>,<ore:nuggetIron>],[<ore:stickWood>,<ore:nuggetIron>,<ore:nuggetIron>],[null,<ore:ingotIron>,<ore:ingotIron>]]);

//Coffee
recipes.addShapeless(<contenttweaker:food_drink_cluckuccino>*4,[toolPot,<ore:cropCoffee>,<minecraft:milk_bucket>]);
recipes.addShapeless(<contenttweaker:food_drink_coffee>*4,[toolPot, <ore:cropCoffee>]);

//Beets!
recipes.addShapeless(<contenttweaker:food_beets_pickled>*3,[<minecraft:beetroot>,<minecraft:beetroot>,foodVinegar,toolPot,toolKnife]);

//Egg Meals
//Hard boiled Egg
recipes.addShapeless(<contenttweaker:food_egg_boiled>,[toolPot,<ore:egg>]);
//Breakfast Skillet
recipes.addShapeless(<contenttweaker:food_skillet_breakfast>,[toolPan,<ore:cropPotato>,<ore:egg>,<ore:rawPork>,toolKnife]);
recipes.addShapeless(<contenttweaker:food_skillet_breakfast>,[toolPan,<ore:cropPotato>,<ore:egg>,<ore:rawBeef>,toolKnife]);
recipes.addShapeless(<contenttweaker:food_skillet_breakfast>,[toolPan,<ore:cropPotato>,<ore:egg>,rawChicken,toolKnife]);

//Sandwhiches
recipes.addShapeless(<contenttweaker:food_egg_salad> *2,[breadAll,<contenttweaker:food_egg_boiled>,<contenttweaker:food_mayo>,<ore:toolKnife>]);
recipes.addShapeless(<contenttweaker:food_pbj> *2,[breadAll,foodJam,foodNutbutter,toolKnife]);
recipes.addShapeless(<contenttweaker:food_pbm> *2,[breadAll,<contenttweaker:food_mayo>,foodNutbutter,toolKnife]);
<contenttweaker:food_pbm>.addTooltip("Who hurt you?");

//Pies
recipes.addShapeless(<contenttweaker:food_pie_fruit>,[doughAll,foodSugar,<ore:listAllfruit>,<ore:listAllfruit>,toolKnife]);
recipes.addShapeless(<contenttweaker:food_pie_nut>,[doughAll,foodSugar,<ore:listAllnut>,<ore:listAllnut>,toolKnife]);
recipes.addShapeless(<contenttweaker:food_pie_meat>,[doughAll,rawBeef,<ore:cropPotato>,<ore:cropCarrot>,toolKnife]);
recipes.addShapeless(<contenttweaker:food_pie_meat>,[doughAll,rawPork,<ore:cropPotato>,<ore:cropCarrot>,toolKnife]);
recipes.addShapeless(<contenttweaker:food_pie_meat>,[doughAll,rawChicken,<ore:cropPotato>,<ore:cropCarrot>,toolKnife]);