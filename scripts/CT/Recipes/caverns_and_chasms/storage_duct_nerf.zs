DebugUtil.startScript("recipes/caverns_and_chasms/storage_duct_nerf"); 

val tin = <tag:items:forge:ingots/tin>;
val tin_block = <tag:items:forge:storage_blocks/tin>;
craftingTable.removeByName("caverns_and_chasms:storage_duct");    
craftingTable.addShaped("storage_duct", <item:caverns_and_chasms:storage_duct>, [
    [tin], [tin_block], [tin]
]);

DebugUtil.endScript("recipes/caverns_and_chasms/storage_duct_nerf"); 