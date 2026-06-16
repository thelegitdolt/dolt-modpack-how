DebugUtil.startScript("/Recipes/darkerdepths/glow_grime_ink_sac_fix"); 
    

RUtil.overwrite("darkerdepths:glow_ink_sac_from_glow_grime", (a, b) => {
    craftingTable.addShapeless(a, b, [
        <item:darkerdepths:glow_grime>, <item:minecraft:ink_sac>, <item:minecraft:ink_sac>
    ]);
});

DebugUtil.endScript("/Recipes/darkerdepths/glow_grime_ink_sac_fix"); 