#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

var quickSandFluid = VanillaFactory.createFluid("shifting_sand", 0);
quickSandFluid.density = 50000;
quickSandFluid.colorize = false;
quickSandFluid.viscosity = 10000;
quickSandFluid.material = <blockmaterial:lava>;
quickSandFluid.stillLocation = "contenttweaker:fluids/quick_sand_still";
quickSandFluid.flowingLocation = "contenttweaker:fluids/quick_sand_flowing";
quickSandFluid.register();

var alloyGC = VanillaFactory.createItem("gc_alloy_metal");
alloyGC.register();
var compGC = VanillaFactory.createItem("gc_mixed_metal");
compGC.register();
