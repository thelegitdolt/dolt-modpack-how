DebugUtil.startScript("recipes/minecraft/lead"); 
    

craftingTable.removeByName("netherexp:nether_quartz_from_quartz_block");

craftingTable.removeByName("minecraft:quartz_slab");
craftingTable.addShaped("quartz_slab_wtf", <item:minecraft:quartz_slab> * 6, [
    [<item:minecraft:quartz_block>, <item:minecraft:quartz_block>, <item:minecraft:quartz_block>]
]);

DebugUtil.endScript("recipes/minecraft/lead"); 