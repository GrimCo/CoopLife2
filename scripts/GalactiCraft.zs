import mods.techreborn.alloySmelter;
import mods.techreborn.compressor;

var ore_sapphire = <galacticraftcore:basic_block_moon:6>;
var gem_sapphire = <galacticraftcore:item_basic_moon:2>;
var raw_desh = <galacticraftplanets:item_basic_mars:0>;
var stick_desh = <galacticraftplanets:item_basic_mars:1>;
var block_meteoric_iron = <galacticraftcore:basic_block_core:12>;

<ore:dustDesh>.add(raw_desh);
<ore:stickDesh).add(stick_desh);
<ore:blockMeteoricIron>.add(block_meteoric_iron);


<ore:oreLunarSapphire>.add(ore_sapphire);
<ore:gemLunarSapphire>.add(gem_sapphire);

<ore:compressedCopper>.addAll(<ore:plateCopper>);
<ore:plateCopper>.mirror(<ore:compressedCopper>);
<ore:compressedTin>.addAll(<ore:plateTin>);
<ore:plateTin>.mirror(<ore:compressedTin>);
<ore:compressedAluminum>.addAll(<ore:plateAluminum>);
<ore:plateAluminum>.addAll(<ore:compressedAluminum>);
<ore:compressedSteel>.addAll(<ore:plateSteel>);
<ore:plateSteel>.addAll(<ore:compressedSteel>);
<ore:compressedBronze>.addAll(<ore:plateBronze>);
<ore:plateBronze>.mirror(<ore:compressedBronze>);
<ore:compressedIron>.addAll(<ore:plateIron>);
<ore:plateIron>.mirror(<ore:compressedIron>);
<ore:plateMeteoricIron>.mirror(<ore:compressedMeteoricIron>);
<ore:plateDesh>.mirror(<ore:compressedDesh>);
<ore:compressedTitanium>.addAll(<ore:plateTitanium>);
<ore:plateTitanium>.mirror(<ore:compressedTitanium>);
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

compressor.addRecipe(<galacticraftcore:heavy_plating>,<contenttweaker:gc_alloy_metal>,200,4);

alloySmelter.addRecipe(<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:heavy_plating>,<galacticraftcore:item_basic_moon:1>,200,16);
alloySmelter.addRecipe(<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:5>,200,16);