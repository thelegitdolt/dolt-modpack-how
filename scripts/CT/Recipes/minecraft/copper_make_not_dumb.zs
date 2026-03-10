DebugUtil.startScript("recipes/minecraft/copper_make_not_dumb"); 
    
import crafttweaker.api.item.IItemStack;

craftingTable.removeByName("minecraft:copper_block");

craftingTable.removeByName("minecraft:copper_ingot");
craftingTable.removeByName("minecraft:copper_ingot_from_waxed_copper_block");
craftingTable.removeByName("caverns_and_chasms:weathered_copper_ingot");
craftingTable.removeByName("caverns_and_chasms:exposed_copper_ingot");
craftingTable.removeByName("caverns_and_chasms:oxidized_copper_ingot");
craftingTable.removeByName("caverns_and_chasms:waxed_weathered_copper_ingot");
craftingTable.removeByName("caverns_and_chasms:waxed_exposed_copper_ingot");
craftingTable.removeByName("caverns_and_chasms:waxed_copper_block");
craftingTable.removeByName("caverns_and_chasms:waxed_copper_ingot");
craftingTable.removeByName("caverns_and_chasms:waxed_oxidized_copper_ingot");


val cop = <item:minecraft:copper_ingot>;

craftingTable.addShaped("copper_block_based", <item:minecraft:copper_block>, [
    [cop, cop],
    [cop, cop]
]);

CUtil.copperRecipe(
    "copper_storage_based", 
    (name, result, c) => {
        craftingTable.addShapeless(name, result, [
            c, c, c, c, c, c, c, c, c
        ]);
    }, 
    "caverns_and_chasms:chiseled_copper", "copper_ingot");

CUtil.copperRecipe(
    "chiseled_copper_unpack_based", 
    (name, c, result) => {
        craftingTable.addShapeless(name, c * 9, [
            result
        ]);
    }, 
    "copper_ingot", "caverns_and_chasms:chiseled_copper");

for oxi in CUtil.coppers {
    stoneCutter.remove(<item:caverns_and_chasms:${oxi}chiseled_copper>);
}

DebugUtil.endScript("recipes/minecraft/copper_make_not_dumb"); 