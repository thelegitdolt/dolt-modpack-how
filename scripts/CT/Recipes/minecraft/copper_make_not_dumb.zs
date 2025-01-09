DebugUtil.startScript("/Recipes/minecraft/copper_make_not_dumb.zs/"); 
    

craftingTable.removeByName("minecraft:copper_block");

craftingTable.removeByName("minecraft:copper_ingot");
craftingTable.removeByName("minecraft:copper_ingot_from_waxed_copper_block");

val cop = <item:minecraft:copper_ingot>;


craftingTable.addShaped("copper_block_based", <item:minecraft:copper_block>, [
    [cop, cop],
    [cop, cop]
]);

craftingTable.addShapeless("based_copper_unpack", cop * 4, [
    <item:minecraft:copper_block>
]);

craftingTable.addShapeless("based_waxed_copper_unpack", cop * 4, [
    <item:minecraft:waxed_copper_block>
]);


craftingTable.removeByName("sullysmod:crafting/jade");
craftingTable.removeByName("sullysmod:crafting/jade_block");

val jade = <item:sullysmod:jade>;
val j_block = <item:sullysmod:jade_block>;

craftingTable.addShaped("jade_block_based", j_block, [
    [jade, jade],
    [jade, jade]
]);

craftingTable.addShapeless("based_jade_unpack", jade * 4, [
    j_block
]);


DebugUtil.endScript("/Recipes/minecraft/copper_make_not_dumb.zs"); 