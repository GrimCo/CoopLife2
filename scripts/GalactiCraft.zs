import mods.techreborn.alloySmelter;
import mods.techreborn.compressor;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Imbuer;
import mods.thermalexpansion.InductionSmelter;

var ore_sapphire = <galacticraftcore:basic_block_moon:6>;
var gem_sapphire = <galacticraftcore:item_basic_moon:2>;
var raw_desh = <galacticraftplanets:item_basic_mars:0>;
var stick_desh = <galacticraftplanets:item_basic_mars:1>;
var block_meteoric_iron = <galacticraftcore:basic_block_core:12>;

var plateCopper = <ore:plateCopper>;
var compressedCopper = <ore:compressedCopper>;
var plateTin = <ore:plateTin>;
var compressedTin = <ore:compressedTin>;
var plateIron = <ore:plateIron>;
var compressedIron = <ore:compressedIron>;
var plateSteel = <ore:plateSteel>;
var compressedSteel = <ore:compressedSteel>;
var plateAluminum = <ore:plateAluminum>;
var compressedAluminum = <ore:compressedAluminum>;
var plateBronze = <ore:plateBronze>;
var compressedBronze = <ore:compressedBronze>;
var plateTitanium = <ore:plateTitanium>;
var compressedTitanium = <ore:compressedTitanium>;

<ore:oreTitanium>.add(<galacticraftplanets:asteroids_block:4>);

<ore:dustDesh>.add(raw_desh);
<ore:stickDesh).add(stick_desh);
<ore:blockMeteoricIron>.add(block_meteoric_iron);

<ore:oreLunarSapphire>.add(ore_sapphire);
<ore:gemLunarSapphire>.add(gem_sapphire);

compressedCopper.addAll(plateCopper);
plateCopper.mirror(compressedCopper);

compressedTin.addAll(plateTin);
plateTin.mirror(compressedTin);

compressedAluminum.addAll(plateAluminum);
plateAluminum.mirror(compressedAluminum);

compressedSteel.addAll(plateSteel);
plateSteel.mirror(compressedSteel);

compressedBronze.addAll(plateBronze);
plateBronze.mirror(compressedBronze);

compressedIron.addAll(plateIron);
plateIron.mirror(compressedIron);

compressedTitanium.addAll(plateTitanium);
plateTitanium.mirror(compressedTitanium);

<ore:waferBasic>.addAll(<ore:circuitBasic>);
<ore:circuitBasic>.mirror(<ore:waferBasic>);

<ore:waferAdvanced>.addAll(<ore:circuitAdvanced>);
<ore:circuitAdvanced>.mirror(<ore:waferAdvanced>);

<ore:plateHeavyDuty>.add(<galacticraftcore:heavy_plating>);
<ore:plateHeavyDutyFeX>.add(<galacticraftplanets:item_basic_mars:3>);
<ore:plateHeavyDutyDesh>.add(<galacticraftplanets:item_basic_asteroids:5>);

<ore:ingotHeavyDuty>.add(<contenttweaker:gc_alloy_metal>);

recipes.addShaped(<contenttweaker:gc_mixed_metal> * 3, [[<ore:ingotSteel>,<ore:ingotAluminum>,<ore:ingotBronze>],[<ore:ingotSteel>,<ore:ingotAluminum>,<ore:ingotBronze>],[<ore:ingotSteel>,<ore:ingotAluminum>,<ore:ingotBronze>]]);

furnace.addRecipe(<contenttweaker:gc_alloy_metal>,<contenttweaker:gc_mixed_metal>,1.6);

//Recipes to Convert Desh and Meteoric Iron Ingots to Plates
compressor.addRecipe(<galacticraftcore:item_basic_moon:1> * 2, <galacticraftcore:item_basic_moon>,200,4);
Compactor.addPressRecipe(<galacticraftcore:item_basic_moon:1> * 2, <galacticraftcore:item_basic_moon>,4000);
compressor.addRecipe(<galacticraftplanets:item_basic_mars:5> * 2, <galacticraftplanets:item_basic_mars:2>,200,4);
Compactor.addPressRecipe(<galacticraftplanets:item_basic_mars:5> * 2, <galacticraftplanets:item_basic_mars:2>,4000);

//Recipe to Convert Heavy-Duty Ingot into a Heavy-Duty Plate
compressor.addRecipe(<galacticraftcore:heavy_plating>,<contenttweaker:gc_alloy_metal>,200,4);

//Recipes to convert Heavy-Duty Plates for both TE and TR
alloySmelter.addRecipe(<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:heavy_plating>,<galacticraftcore:item_basic_moon:1>,200,16);
InductionSmelter.addRecipe(<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:heavy_plating>,<galacticraftcore:item_basic_moon:1>,12000);
alloySmelter.addRecipe(<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:5>,200,16);
InductionSmelter.addRecipe(<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:5>,12000);

//Fuel from Oxygen and Chicken Poop, RIP Brown Matter
Imbuer.addRecipe(<liquid:fuel> * 10, <hatchery:chickenmanure>, <liquid:oxygen> * 500, 4000);

//Charcoal Fragments
recipes.removeByRecipeName("galacticraftplanets:carbon_fragments_alt_alt");

//Silicon Conversion
recipes.addShapeless(<galacticraftcore:basic_item:2>, [<refinedstorage:silicon>]);
<galacticraftcore:basic_item:2>.addTooltip("Can be crafted into Refined Storage Silicon");
recipes.addShapeless(<refinedstorage:silicon>, [<galacticraftcore:basic_item:2>]);
<refinedstorage:silicon>.addTooltip("Can be crafted into Galacticraft Silicon");

//Mars Iridium Ore Recipes
<ore:oreIridium>.add(<contenttweaker:iridium_mars>);
furnace.addRecipe(<thermalfoundation:material:135>,<contenttweaker:iridium_mars>,1.2);