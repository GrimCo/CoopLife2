
recipes.replaceAllOccurences(<minecraft:egg>,<ore:egg>.onlyWithTag({}));

//Fixes Pumpkin Pie
recipes.remove(<minecraft:pumpkin_pie>);
recipes.addShapeless(<minecraft:pumpkin_pie>,[<minecraft:pumpkin>,<ore:sugar>,<ore:egg>.onlyWithTag({})]);

//Fixes AA Cheese (WHY DOES IT TAKE EGGS!?!?!)
//recipes.remove(<actuallyadditions:item_food:0>);
//recipes.addShapeless(<actuallyadditions:item_food:0>,[<minecraft:milk_bucket>,<ore:egg>.onlyWithTag({})]);

