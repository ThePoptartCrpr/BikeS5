#priority 999
# scripts/init/tooldisable.zs
# This script removes the durability of all non-Tinkers pickaxes (except for some modded ones) and adds a tooltip.

import crafttweaker.item.IItemStack;

/**
 * disables a tool based on IItemStack parameter
 */
function disableTool(tool as IItemStack) {
    tool.maxDamage = 1;
    tool.addTooltip(format.red("Use TiCon tools! Refer to your guidebook for more info."));
}

/**
 * batch disables tools
 */
function disableTools(tools as IItemStack[]) {
    for tool in tools {
        disableTool(tool);
    }
}

disableTools([
    <minecraft:iron_pickaxe>,
    <minecraft:wooden_pickaxe>,
    <minecraft:stone_pickaxe>,
    <minecraft:diamond_pickaxe>,
    <minecraft:golden_pickaxe>,
    <actuallyadditions:item_pickaxe_crystal_red>,
    <actuallyadditions:item_pickaxe_crystal_blue>,
    <actuallyadditions:item_pickaxe_quartz>,
    <actuallyadditions:item_pickaxe_obsidian>,
    <actuallyadditions:item_pickaxe_emerald>,
    <actuallyadditions:item_pickaxe_crystal_light_blue>,
    <actuallyadditions:item_pickaxe_crystal_black>,
    <actuallyadditions:item_pickaxe_crystal_green>,
    <actuallyadditions:item_pickaxe_crystal_white>,
    <appliedenergistics2:certus_quartz_pickaxe>,
    <appliedenergistics2:nether_quartz_pickaxe>,
    <astralsorcery:itemcrystalpickaxe>,
    <astralsorcery:itemchargedcrystalpickaxe>,
    <betterwithmods:steel_pickaxe>,
    <botania:manasteelpick>,
    <botania:elementiumpick>,
    <botania:glasspick>,
    <calculator:reinforcedpickaxe>,
    <calculator:enrichedgoldpickaxe>,
    <calculator:reinforcedironpickaxe>,
    <calculator:redstonepickaxe>,
    <calculator:weakeneddiamondpickaxe>,
    <mekanismtools:bronzepickaxe>,
    <mekanismtools:lapislazulipickaxe>,
    <mekanismtools:obsidianpickaxe>,
    <immersiveengineering:pickaxe_steel>,
    <mekanismtools:osmiumpickaxe>,
    <calculator:endforgedpickaxe>,
    <calculator:electricpickaxe>,
    <calculator:firediamondpickaxe>,
    <calculator:flawlessdiamondpickaxe>,
    <mekanismtools:glowstonepickaxe>,
    <mekanismtools:steelpickaxe>,
    <techreborn:sapphirepickaxe>,
    <techreborn:rubypickaxe>,
    <techreborn:bronzepickaxe>,
    <primal:bone_pickaxe>,
    <natura:ghostwood_pickaxe>,
    <natura:bloodwood_pickaxe>,
    <natura:darkwood_pickaxe>,
    <natura:fusewood_pickaxe>,
    <natura:netherquartz_pickaxe>,
    <primal:flint_pickaxe>,
    <primal:quartz_pickaxe>,
    <primal:diamond_pickaxe>,
    <primal:emerald_pickaxe>,
    <primal:opal_pickaxe>,
    <primal:obsidian_pickaxe>,
    <thermalfoundation:tool.pickaxe_steel>,
    <thermalfoundation:tool.pickaxe_platinum>,
    <thermalfoundation:tool.pickaxe_nickel>,
    <thermalfoundation:tool.pickaxe_aluminum>,
    <thermalfoundation:tool.pickaxe_lead>,
    <thermalfoundation:tool.pickaxe_silver>,
    <thermalfoundation:tool.pickaxe_tin>,
    <thermalfoundation:tool.pickaxe_copper>,
    <techreborn:peridotpickaxe>,
    <thermalfoundation:tool.pickaxe_electrum>,
    <thermalfoundation:tool.pickaxe_invar>,
    <thermalfoundation:tool.pickaxe_bronze>,
    <thermalfoundation:tool.pickaxe_constantan>,
    <mekanismtools:diamondpaxel>,
    <mekanismtools:obsidianpaxel>,
    <mekanismtools:lapislazulipaxel>,
    <mekanismtools:osmiumpaxel>,
    <mekanismtools:bronzepaxel>,
    <mekanismtools:glowstonepaxel>,
    <mekanismtools:steelpaxel>
] as IItemStack[]);
