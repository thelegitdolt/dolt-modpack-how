DebugUtil.startScript("recipes/minecraft/cut_copper_fix"); 
    

for i in CUtil.coppersSansNormal {
    RUtil.changeCountStoneCut("minecraft:" + i + "cut_copper_from_" + i + "copper_stonecutting", 1);
}
RUtil.changeCountStoneCut("minecraft:cut_copper_from_copper_block_stonecutting", 1);
RUtil.changeCountStoneCut("minecraft:waxed_cut_copper_from_waxed_copper_block_stonecutting", 1);


DebugUtil.endScript("recipes/minecraft/cut_copper_fix"); 