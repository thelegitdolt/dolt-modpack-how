DebugUtil.startScript("recipes/oreganized/speedometer_less_sexy"); 
    
val nug = <item:oreganized:electrum_nugget>;

craftingTable.removeByName("oreganized:speedometer");
craftingTable.addShaped("speedometer_based", <item:oreganized:speedometer>, [
    [RUtil.air, nug, RUtil.air],
    [nug, <item:minecraft:redstone>, nug],
    [RUtil.air, nug, RUtil.air]
]);
 
DebugUtil.endScript("recipes/oreganized/speedometer_less_sexy"); 