DebugUtil.startScript("recipes/windswept/icicle"); 

craftingTable.addShaped("icicle_real", <item:windswept:icicles> * 2, [
    [<item:minecraft:packed_ice>],
    [<item:minecraft:packed_ice>]
]);

craftingTable.removeByName("windswept_delights:melon_popsicle_from_icicles");
craftingTable.removeByName("windswept_delights:wild_berry_popsicle");

craftingTable.addShaped("berry_popsicle_icecube", <item:windswept_delights:wild_berry_popsicle>, [
    [RUtil.air, <item:windswept:wild_berries>, <item:windswept:wild_berries>], 
    [<item:neapolitan:ice_cubes>, <item:windswept:wild_berries>, <item:windswept:wild_berries>], 
    [<item:minecraft:stick>, <item:neapolitan:ice_cubes>, RUtil.air]]);


DebugUtil.endScript("recipes/windswept/icicle"); 