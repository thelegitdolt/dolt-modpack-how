DebugUtil.startScript("recipes/architects_palette/rotten_flesh_block_die"); 
    
val block = <item:architects_palette:withered_bone_block>; 

craftingTable.remove(block);  
HUtil.hide(block); 
stoneCutter.removeByInput(block);

DebugUtil.endScript("recipes/architects_palette/rotten_flesh_block_die"); 