DebugUtil.startScript("recipes/architects_palette/rotten_flesh_block_die"); 
    
val block = <item:architects_palette:rotten_flesh_block>; 

craftingTable.remove(block);  
HUtil.hide(block); 

craftingTable.removeByName("architects_palette:rotten_flesh"); 

Warping.removeByName("architects_palette:warping/entrails_from_rotten_flesh_block_warping"); 
Warping.newRecipe("entrails_from_cc_flesh", <item:caverns_and_chasms:rotten_flesh_block>, <item:architects_palette:entrails>); 


DebugUtil.endScript("recipes/architects_palette/rotten_flesh_block_die"); 