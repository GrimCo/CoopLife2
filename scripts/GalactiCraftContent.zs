#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

var alloyGC = VanillaFactory.createItem("gc_alloy_metal");
alloyGC.register();
var compGC = VanillaFactory.createItem("gc_mixed_metal");
compGC.register();


var iridiumMars = VanillaFactory.createBlock("iridium_mars",<blockmaterial:rock>);
iridiumMars.setBlockHardness(3.0);
iridiumMars.setBlockResistance(5.0);
iridiumMars.setToolClass("pickaxe");
iridiumMars.setToolLevel(3);
iridiumMars.setBlockSoundType(<soundtype:stone>);
iridiumMars.register();

