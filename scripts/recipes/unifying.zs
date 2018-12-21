#priority 800
# scripts/recipes/earlygame.zs
# Unifying duplicate items and resources.

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.recipes.ICraftingRecipe;

// Gears

# Wood Gear
recipes.removeByRecipeName("appliedenergistics2:misc/grindstone_woodengear");
recipes.removeByRecipeName("betterwithmods:items/material/material.gear");
recipes.removeByRecipeName("thermalfoundation:material_59");
recipes.removeByRecipeName("enderio:gear_wood");
recipes.removeByRecipeName("enderio:gear_ae2_messes_things_up");
recipes.removeByRecipeName("enderio:gear_just_to_be_sure");
recipes.removeByRecipeName("enderio:gear_better_save_than_sorry");
mods.jei.JEI.hide(<thermalfoundation:material:22>);
mods.jei.JEI.hide(<enderio:item_material:9>);
mods.jei.JEI.hide(<appliedenergistics2:material:40>);
recipes.addShaped("BikeS5_woodgear", <betterwithmods:material:0>, [
  [null, <ore:stickWood>, null],
  [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
  [null, <ore:stickWood>, null]
]);
