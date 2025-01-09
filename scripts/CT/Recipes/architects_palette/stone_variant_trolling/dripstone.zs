DebugUtil.startScript("recipes/architects_palette/stone_variant_trolling/dripstone"); 

val bricks = <item:architects_palette:dripstone_bricks>;
val shingles = <item:caverns_and_chasms:dripstone_shingles>;

craftingTable.removeByName("caverns_and_chasms:dripstone_shingles");

RUtil.twoByTwo("dripstone_shingles_based", 
    bricks,
    shingles, 4);  

val chiseled = <item:architects_palette:chiseled_dripstone>;
craftingTable.remove(chiseled);
stoneCutter.remove(chiseled);
HUtil.hide(chiseled); 

DebugUtil.endScript("recipes/architects_palette/stone_variant_trolling/dripstone"); 