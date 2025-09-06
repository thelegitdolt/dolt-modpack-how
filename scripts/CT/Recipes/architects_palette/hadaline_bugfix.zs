DebugUtil.startScript("recipes/architects_palette/hadaline_bugfix"); 
    
craftingTable.removeByName("architects_palette:hadaline_tiles");
RUtil.twoByTwo("hadaline_tiles_real_temp_prob", <item:architects_palette:hadaline_bricks>, <item:architects_palette:hadaline_tiles>);

DebugUtil.endScript("recipes/architects_palette/hadaline_bugfix"); 