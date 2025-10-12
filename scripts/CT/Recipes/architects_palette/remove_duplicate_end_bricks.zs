DebugUtil.startScript("recipes/architects_palette/remove_duplicate_end_bricks"); 

val thing = <item:architects_palette:cracked_end_stone_bricks>;
val chiseled = <item:architects_palette:chiseled_end_stone_bricks>;
furnace.remove(thing);
stoneCutter.remove(chiseled);
craftingTable.remove(chiseled);
HUtil.hide(thing);
HUtil.hide(chiseled);

DebugUtil.endScript("recipes/architects_palette/remove_duplicate_end_bricks"); 