#priority 801
# scripts/recipes/earlygame.zs

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.recipes.ICraftingRecipe;

val barkknife = <ore:barkKnife>;
barkknife.add(<roots:wood_knife>);
barkknife.add(<roots:stone_knife>);
barkknife.add(<roots:iron_knife>);
barkknife.add(<roots:diamond_knife>);
barkknife.add(<roots:gold_knife>);

val stick = <minecraft:stick>;
val flint = <minecraft:flint>;
val planks = <ore:plankWood>;
val pressure_plate = <ore:pressurePlateWood>;
val crafting_table = <minecraft:crafting_table>;
val chest = <minecraft:chest>;

recipes.remove(crafting_table);
recipes.addShaped("BikeS5_CraftingTable", crafting_table, [
    [barkknife, pressure_plate],
    [planks,    planks]
]);

recipes.remove(<roots:wood_knife>);
recipes.addShaped("BikeS5_RootsKnife", <roots:wood_knife>, [
    [null, flint],
    [stick, null]
]);

furnace.remove(<tconstruct:materials>);

recipes.addShapeless("BikeS5_UnfiredClay", <ceramics:unfired_clay:4> * 2, [
  <minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:gravel>
]);
