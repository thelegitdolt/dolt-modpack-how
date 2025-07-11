DebugUtil.startScript("recipes/architects_palette/remove_duplicate_end_bricks"); 

val thing = <item:architects_palette:cracked_end_stone_bricks>;
furnace.remove(thing);
HUtil.hide(thing);

DebugUtil.endScript("recipes/architects_palette/remove_duplicate_end_bricks"); 