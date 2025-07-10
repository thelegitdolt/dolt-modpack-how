DebugUtil.startScript("recipes/caverns_and_chasms/please_actually_use_storage_ducts"); 
    
craftingTable.removeByName("caverns_and_chasms:storage_duct");
craftingTable.addShaped("storage_duct_good", <item:caverns_and_chasms:storage_duct>, [
    [<tag:items:forge:ingots/tin>], 
    [<item:caverns_and_chasms:tin_block>], 
    [<tag:items:forge:ingots/tin>]]);


DebugUtil.endScript("recipes/caverns_and_chasms/please_actually_use_storage_ducts"); 