DebugUtil.startScript("recipes/architects_palette/stone_variant_trolling/calcite"); 

val polished =  <item:caverns_and_chasms:polished_calcite>;
val bricks =   <item:architects_palette:calcite_bricks>;

craftingTable.removeByName("architects_palette:calcite_bricks");
RUtil.twoByTwo("calcite_brick_based", 
    polished,
    bricks, 4);  

DebugUtil.endScript("recipes/architects_palette/stone_variant_trolling/calcite"); 