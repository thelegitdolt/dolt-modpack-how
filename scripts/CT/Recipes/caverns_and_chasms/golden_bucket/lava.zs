DebugUtil.startScript("recipes/caverns_and_chasms/golden_bucket/lava"); 
    
craftingTable.removeByName("netherexp:souled_geyser");
craftingTable.addShaped("souled_geyser_compat", <item:netherexp:souled_geyser> * 2, 
    [[<item:netherexp:soul_slate>], [<item:netherexp:souled_geyser>], [<tag:items:forge:buckets/lava>]]);

craftingTable.removeByName("netherexp:basaltic_geyser");
craftingTable.addShaped("basaltic_geyser_compat", <item:netherexp:basaltic_geyser> * 2, 
    [[<item:minecraft:basalt>], [<item:netherexp:basaltic_geyser>], [<tag:items:forge:buckets/lava>]]);

DebugUtil.endScript("recipes/caverns_and_chasms/golden_bucket/lava"); 