#priority 1000
# scripts/preinit/utils.zs
# This script adds various utility functions.

import crafttweaker.item.IItemStack;

/**
 * item parameter = IItemStack of what to disable
 * adds disabled tooltip, removes recipes
 */
function disableItem(item as IItemStack) {
    item.addTooltip(format.red("This is disabled!"));
    recipes.remove(item);

    // TODO: add more recipe removals (potentially)
}

/**
 * items parameter is array of IItemStacks
 * same as disableItem, just in batch
 */
function disableItems(items as IItemStack[]) {
    for item in items {
        disableItem(item);
    }
}

/**
 * removes crafting table recipes for IItemStack
 */
function removeCrafting(item as IItemStack) {
    recipes.removeShapeless(item);
    recipes.removeShaped(item);
}

/**
 * renames an item
 */
function rename(item as IItemStack, name as string) {
    item.displayName = name;
}

/**
 * gives an item a JEI description
 */
function description(item as IItemStack, descriptionText as string) {
    mods.jei.JEI.addDescription(item, descriptionText);
    item.addTooltip(format.gold("Look in JEI for info! Check the guidebook as well."));
}
