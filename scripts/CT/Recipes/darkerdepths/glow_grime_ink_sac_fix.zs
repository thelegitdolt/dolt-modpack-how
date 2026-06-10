DebugUtil.startScript("/Recipes/darkerdepths/glow_grime_ink_sac_fix"); 
    

RUtil.overwrite("darkerdepths:glow_ink_sac_from_glow_grime", (a) => {
    craftingTable.addShapeless(a, <item:minecraft:glow_ink_sac> * 2, [
        <item:darkerdepths:glow_grime>, <item:minecraft:ink_sac>, <item:minecraft:ink_sac>
    ]);
});

DebugUtil.endScript("/Recipes/darkerdepths/glow_grime_ink_sac_fix"); 