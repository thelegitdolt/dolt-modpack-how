DebugUtil.startScript("recipes/dungeonsdelight/good_mosaic"); 

craftingTable.removeByName("dungeonsdelight:wormwood_mosaic");
craftingTable.addShaped("mosaic_not_good_temp_prob", <item:dungeonsdelight:wormwood_mosaic>, 
    [[<item:dungeonsdelight:wormwood_slab>],[<item:dungeonsdelight:wormwood_slab>]]
);

DebugUtil.endScript("recipes/dungeonsdelight/good_mosaic"); 