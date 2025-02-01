DebugUtil.startScript("recipes/minecraft/ice"); 
    
craftingTable.removeByName("neapolitan:ice");
craftingTable.removeByName("minecraft:packed_ice");
craftingTable.removeByName("minecraft:blue_ice");


craftingTable.addShaped("ice_from_cubes", <item:minecraft:ice>, [
    [<item:neapolitan:ice_cubes>, <item:neapolitan:ice_cubes>],
    [<item:neapolitan:ice_cubes>, <item:neapolitan:ice_cubes>],
]);

craftingTable.addShaped("packed_ice_from_ice", <item:minecraft:packed_ice>, [
    [<item:minecraft:ice>, <item:minecraft:ice>],
    [<item:minecraft:ice>, <item:minecraft:ice>],
]);

craftingTable.addShaped("blue_from_pack_ice", <item:minecraft:blue_ice>, [
    [<item:minecraft:ice>, <item:minecraft:packed_ice>],
    [<item:minecraft:packed_ice>, <item:minecraft:ice>],
]);




DebugUtil.endScript("recipes/minecraft/ice"); 