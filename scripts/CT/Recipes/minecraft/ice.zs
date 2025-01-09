DebugUtil.startScript("/Recipes/minecraft/ice.zs/"); 
    

craftingTable.removeByName("minecraft:packed_ice");
craftingTable.removeByName("minecraft:blue_ice");


craftingTable.addShaped("packed_ice", <item:minecraft:blue_ice>, [
    [<item:minecraft:ice>, <item:minecraft:ice>],
    [<item:minecraft:ice>, <item:minecraft:ice>],
]);
craftingTable.addShaped("blue_ice", <item:minecraft:blue_ice>, [
    [<item:minecraft:packed_ice>, <item:minecraft:packed_ice>],
    [<item:minecraft:packed_ice>, <item:minecraft:packed_ice>],
]);




DebugUtil.endScript("/Recipes/minecraft/ice.zs"); 