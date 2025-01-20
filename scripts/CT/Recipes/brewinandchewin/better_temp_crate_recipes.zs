DebugUtil.startScript("recipes/brewinandchewin/better_temp_crate_recipes"); 
    

val heat = <item:brewinandchewin:heating_cask>;
val ice = <item:brewinandchewin:ice_crate>;

craftingTable.removeByName(heat.registryName); 
craftingTable.removeByName(ice.registryName);

craftingTable.addShaped("heat_cask_good", heat, [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:blaze_powder>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:magma_block>, <tag:items:minecraft:planks>]
]); 

craftingTable.addShaped("ice_crate_good", ice, [
    [<tag:items:minecraft:planks>, <item:minecraft:packed_ice>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:packed_ice>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
]); 



DebugUtil.endScript("recipes/brewinandchewin/better_temp_crate_recipes"); 