DebugUtil.startScript("recipes/create/encased_chain_drive"); 
    

craftingTable.removeByName("create:crafting/kinetics/encased_chain_drive_from_zinc");
craftingTable.removeByName("create:crafting/kinetics/encased_chain_drive");

craftingTable.addShapeless("encased_chain_drive_good", <item:create:encased_chain_drive>,
[<item:create:andesite_casing>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>]);


craftingTable.addShapeless("encased_chain_drive_good_zinc", <item:create:encased_chain_drive>,
[<item:create:andesite_casing>, <item:create:zinc_nugget>, <item:create:zinc_nugget>]);



DebugUtil.endScript("recipes/create/encased_chain_drive"); 