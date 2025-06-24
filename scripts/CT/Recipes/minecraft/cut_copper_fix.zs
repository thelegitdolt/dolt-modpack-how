DebugUtil.startScript("recipes/minecraft/cut_copper_fix"); 
    

val thing = <item:minecraft:chiseled_stone_bricks>;

craftingTable.removeByName("minecraft:cut_copper");
craftingTable.removeByName("minecraft:waxed_cut_copper");

RUtil.twoByTwo(
    "cut_copper_based", <item:minecraft:copper_block>, <item:minecraft:cut_copper>, 16
);

RUtil.twoByTwo(
    "waxed_cut_copper_based", <item:minecraft:waxed_copper_block>, <item:minecraft:waxed_cut_copper>, 16
);

DebugUtil.endScript("recipes/minecraft/cut_copper_fix"); 