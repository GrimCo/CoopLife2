import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


print(" =================== Akashic Tome =================== ");
print(" ==================================================== ");
/*
	Script just for the "all books included" tome to make it easier
	to see/find/edit/organize things related to just this tome
*/


//====== Ahashic Tome ======
//
	var completeTome = <akashictome:tome>.withTag(

	{
		"akashictome:is_morphing": 1 as byte,
		"akashictome:data": {
			questbook: {
				id: "questbook:itemquestbook",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "questbook"
				},
				Damage: 0 as short
			},
			rftools: {
				id: "rftools:rftools_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftools"
				},
				Damage: 0 as short
			},
			extrautils2: {
				id: "extrautils2:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "extrautils2"
				},
				Damage: 0 as short
			},
			thermalfoundation: {
				id: "thermalfoundation:tome_lexicon",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "thermalfoundation"
				},
				Damage: 0 as short
			},
			actuallyadditions: {
				id: "actuallyadditions:item_booklet",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "actuallyadditions"
				},
				Damage: 0 as short
			},
			cookingforblockheads: {
				id: "cookingforblockheads:recipe_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "cookingforblockheads"
				},
				Damage: 1 as short
			},
			forestry: {
				id: "forestry:book_forester",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "forestry"
				},
				Damage: 0 as short
			},
			techreborn: {
				id: "techreborn:techmanuel",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "techreborn"
				},
				Damage: 0 as short
			},
			guideapi: {
				id: "guideapi:woot-guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "guideapi"
				},
				Damage: 0 as short
			},
			galacticraftcore: {
				id: "galacticraftcore:prelaunch_checklist",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "galacticraftcore"
				},
				Damage: 0 as short
			},
			rftools1: {
				id: "rftools:rftools_shape_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftools1"
				},
				Damage: 0 as short
			}
		}
	}
	
	);

	//metadata to item
	completeTome.addTooltip(format.aqua("Contains all basic mod manuals/guides already included"));
	
	//add the full book to JEI as it's own entry
	mods.jei.JEI.addItem(completeTome);

	//1 dirt = book
	recipes.addShapeless(completeTome, [<minecraft:dirt>]);
	
//====== Tooltip for added books ======
//
	var addedBooks = [
		<rftools:rftools_manual>, 
		<extrautils2:book>, 
		<thermalfoundation:tome_lexicon>, 
		<actuallyadditions:item_booklet>, 
		<cookingforblockheads:recipe_book:1>, 
		<rftools:rftools_shape_manual>, 
		<questbook:itemquestbook>, 
		<forestry:book_forester>, 
		<guideapi:woot-guide>, 
		<galacticraftcore:prelaunch_checklist>,  
		<techreborn:techmanuel> 
		] as IItemStack[];

	for itemBook in addedBooks {
		itemBook.addTooltip(format.aqua("Included within the \"default\" Akashic Tome"));
	}
