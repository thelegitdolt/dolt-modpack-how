DebugUtil.startScript("recipes/architects_palette/stone_variant_trolling/tuff"); 

val polished =  <item:caverns_and_chasms:polished_tuff>;
val bricks =   <item:architects_palette:tuff_bricks>;

craftingTable.removeByName("architects_palette:tuff_bricks");
RUtil.twoByTwo("tuff_brick_based", 
    polished,
    bricks, 4);  

DebugUtil.endScript("recipes/architects_palette/stone_variant_trolling/tuff"); 