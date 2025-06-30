DebugUtil.startScript("recipes/create/gearbox_less_sad"); 
    
craftingTable.removeByName("create:crafting/kinetics/gearbox");
craftingTable.removeByName("create:crafting/kinetics/vertical_gearbox");

craftingTable.addShaped("gearbox_based", <item:create:gearbox>,[
    [<item:create:andesite_casing>, <item:create:cogwheel>]
]);

craftingTable.addShaped("vertical_gearbox_based", <item:create:vertical_gearbox>,[
    [<item:create:andesite_casing>],
    [ <item:create:cogwheel>]
]);

DebugUtil.endScript("recipes/create/gearbox_less_sad"); 