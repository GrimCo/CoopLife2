#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.IItemGetContainerItem;

var tool_pan = VanillaFactory.createItem("tool_pan");
tool_pan.maxStackSize = 1;
tool_pan.itemGetContainerItem = function(stack){return stack;};
tool_pan.register();

var tool_pot = VanillaFactory.createItem("tool_pot");
tool_pot.maxStackSize = 1;
tool_pot.itemGetContainerItem = function(stack){return stack;};
tool_pot.register();

var tool_knife = VanillaFactory.createItem("tool_knife");
tool_knife.maxStackSize = 1;
tool_knife.itemGetContainerItem = function(stack){return stack;};
tool_knife.register();

var food_oil = VanillaFactory.createItemFood("food_oil",2);
food_oil.itemUseAction = "DRINK";
food_oil.saturation = 0.5;
food_oil.register();

var food_vinegar = VanillaFactory.createItemFood("food_vinegar",2);
food_vinegar.itemUseAction = "DRINK";
food_vinegar.saturation = 0.5;
food_vinegar.register();

var food_mayo = VanillaFactory.createItemFood("food_mayo",2);
food_mayo.saturation = 0.4;
food_mayo.register();

var food_nutbutter = VanillaFactory.createItemFood("food_nutbutter",3);
food_nutbutter.saturation = 0.5;
food_nutbutter.register();

var food_juice = VanillaFactory.createItemFood("food_juice", 5);
food_juice.itemUseAction = "DRINK";
food_juice.saturation = 0.5;
food_juice.register();

var food_jam = VanillaFactory.createItemFood("food_jam",3);
food_jam.saturation = 0.5;
food_jam.register();

var food_egg_boiled = VanillaFactory.createItemFood("food_egg_boiled",5);
food_egg_boiled.saturation = 0.6;
food_egg_boiled.register();

var food_egg_salad = VanillaFactory.createItemFood("food_egg_salad",8);
food_egg_salad.saturation = 0.65;
food_egg_salad.register();

var food_skillet_breakfast = VanillaFactory.createItemFood("food_skillet_breakfast",12);
food_skillet_breakfast.saturation = 0.6;
food_skillet_breakfast.register();

var food_pbj = VanillaFactory.createItemFood("food_pbj",10);
food_pbj.saturation = 0.65;
food_pbj.register();

var food_pbm = VanillaFactory.createItemFood("food_pbm",-5);
food_pbm.saturation = 1.4;
//food_pbm.alwaysEdible = true;
food_pbm.register();

var food_pie_fruit = VanillaFactory.createItemFood("food_pie_fruit", 10);
food_pie_fruit.saturation = 0.6;
food_pie_fruit.register();

var food_pie_meat = VanillaFactory.createItemFood("food_pie_meat", 8);
food_pie_meat.saturation = 0.8;
food_pie_meat.register();

var food_pie_nut = VanillaFactory.createItemFood("food_pie_nut", 10);
food_pie_nut.saturation = 0.4;
food_pie_nut.register();

var food_beets_pickled = VanillaFactory.createItemFood("food_beets_pickled",5);
food_beets_pickled.saturation = 0.6;
food_beets_pickled.register();

var food_drink_cluckuccino = VanillaFactory.createItemFood("food_drink_cluckuccino",6);
food_drink_cluckuccino.itemUseAction = "DRINK";
food_drink_cluckuccino.saturation = 1.2;
food_drink_cluckuccino.alwaysEdible = true;
food_drink_cluckuccino.register();

var food_drink_coffee = VanillaFactory.createItemFood("food_drink_coffee",6);
food_drink_coffee.itemUseAction = "DRINK";
food_drink_coffee.saturation = 1.2;
food_drink_coffee.alwaysEdible = true;
food_drink_coffee.register();