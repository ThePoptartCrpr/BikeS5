#priority 998
# scripts/init/toolprogression.zs
# This file changes the mining level of TiCon materials and various blocks to force tool progression.

import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import modtweaker.tconstruct.ITICMaterial;

/**
 * Set pickaxe level of a block. Takes an IBlock.
 */
function setHardness(block as IBlock, level as int) {
    block.definition.setHarvestLevel("pickaxe", level);
}

// Tool Material Ores
setHardness(<minecraft:stone>.asBlock(), 1);
setHardness(<thermalfoundation:ore>.asBlock(), 2);
setHardness(<minecraft:iron_ore>.asBlock(), 3);
setHardness(<thermalfoundation:ore:3>.asBlock(), 4);
setHardness(<thermalfoundation:ore:2>.asBlock(), 5);
setHardness(<minecraft:obsidian>.asBlock(), 6);
setHardness(<tconstruct:ore:1>.asBlock(), 7);
setHardness(<tconstruct:ore>.asBlock(), 8);

// Tool Material Harvest Levels
toolLevels[0].harvestLevelHead(0);
toolLevels[1].harvestLevelHead(1);
toolLevels[2].harvestLevelHead(2);
toolLevels[3].harvestLevelHead(3);
toolLevels[4].harvestLevelHead(4);
toolLevels[5].harvestLevelHead(5);
toolLevels[6].harvestLevelHead(6);
toolLevels[7].harvestLevelHead(7);
toolLevels[8].harvestLevelHead(8);
toolLevels[9].harvestLevelHead(9);
toolLevels[10].harvestLevelHead(10);

// Ore Hardness

# Copper Minable Blocks (3)
setHardness(<techreborn:ore>.asBlock(), 3);
setHardness(<thaumcraft:ore_cinnabar>.asBlock(), 3);
setHardness(<thaumcraft:ore_quartz>.asBlock(), 3);
setHardness(<thermalfoundation:ore:1>.asBlock(), 3);

# Lead Minable Blocks (5)
setHardness(<thermalfoundation:ore:5>.asBlock(), 5);
setHardness(<actuallyadditions:block_misc:3>.asBlock(), 5);
setHardness(<mysticalagriculture:inferium_ore>.asBlock(), 5);
setHardness(<mysticalagriculture:nether_inferium_ore>.asBlock(), 5);
setHardness(<mysticalagriculture:end_inferium_ore>.asBlock(), 5);
setHardness(<appliedenergistics2:charged_quartz_ore>.asBlock(), 5);
setHardness(<appliedenergistics2:quartz_ore>.asBlock(), 5);
setHardness(<thermalfoundation:ore:4>.asBlock(), 5);
setHardness(<techreborn:ore:2>.asBlock(), 5);
setHardness(<techreborn:ore:3>.asBlock(), 5);
setHardness(<techreborn:ore:10>.asBlock(), 5);
setHardness(<astralsorcery:blockcustomore>.asBlock(), 5);
setHardness(<astralsorcery:blockcustomore:1>.asBlock(), 5);

# Silver Minable Blocks (6)
setHardness(<minecraft:redstone_ore>.asBlock(), 6);
setHardness(<minecraft:lapis_ore>.asBlock(), 6);
setHardness(<minecraft:diamond_ore>.asBlock(), 6);
setHardness(<mysticalagriculture:prosperity_ore>.asBlock(), 6);
setHardness(<mysticalagriculture:nether_prosperity_ore>.asBlock(), 6);
setHardness(<mysticalagriculture:end_prosperity_ore>.asBlock(), 6);
setHardness(<mekanism:oreblock>.asBlock(), 6);

# Obsidian Minable Blocks (7)
setHardness(<immersiveengineering:ore:5>.asBlock(), 7);
setHardness(<techreborn:ore:7>.asBlock(), 7);
setHardness(<techreborn:ore:5>.asBlock(), 7);
setHardness(<techreborn:ore:8>.asBlock(), 7);
setHardness(<minecraft:emerald_ore>.asBlock(), 7);
setHardness(<minecraft:quartz_ore>.asBlock(), 7);
setHardness(<thermalfoundation:ore:7>.asBlock(), 7);

# Ardite Minable Blocks (8)
setHardness(<techreborn:ore:6>.asBlock(), 8);
setHardness(<techreborn:ore:11>.asBlock(), 8);

# Cobalt Minable Blocks (9)
setHardness(<techreborn:ore:9>.asBlock(), 9);
setHardness(<thermalfoundation:ore:8>.asBlock(), 9);

# Manyullyn Minable Blocks (10)
setHardness(<biomesoplenty:biome_block>.asBlock(), 10);
setHardness(<biomesoplenty:gem_ore>.asBlock(), 10);

// Remove Obsidian Cheese Recipes
mods.primal.Cauldron.removeRecipe("primal:item_primal_bucket_cinis_obsidian_water");
mods.primal.Cauldron.removeRecipe("primal:item_forge_bucketfilled_obsidian_water");
mods.primal.Cauldron.removeRecipe("primal:item_primal_bucket_clay_obsidian_lava");
mods.tconstruct.Alloy.removeRecipe(<liquid:obsidian>, [<liquid:lava>, <liquid:water>]);
