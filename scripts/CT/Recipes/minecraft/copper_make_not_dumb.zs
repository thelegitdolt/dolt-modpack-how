DebugUtil.startScript("/Recipes/minecraft/copper_make_not_dumb.zs/"); 
    
import crafttweaker.api.item.IItemStack;

craftingTable.removeByName("minecraft:copper_block");

craftingTable.removeByName("minecraft:copper_ingot");
craftingTable.removeByName("minecraft:copper_ingot_from_waxed_copper_block");

val cop = <item:minecraft:copper_ingot>;


craftingTable.addShaped("copper_block_based", <item:minecraft:copper_block>, [
    [cop, cop],
    [cop, cop]
]);

RUtil.copperRecipe(
    (name) => name + "copper_storage_based", 
    (name, c, result) => {
        craftingTable.addShapeless(name, result, [
            c, c, c, c, c, c, c, c, c
        ]);
    }, 
    "caverns_and_chasms:chiseled_copper");

DebugUtil.endScript("/Recipes/minecraft/copper_make_not_dumb.zs"); 