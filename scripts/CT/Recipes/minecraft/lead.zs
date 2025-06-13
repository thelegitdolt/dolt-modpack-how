DebugUtil.startScript("recipes/minecraft/lead/"); 
    
val str = <item:minecraft:string>;
craftingTable.removeByName("minecraft:lead");
craftingTable.addShaped("lead_vanilla", <item:minecraft:lead>, [
    [str, str, RUtil.air],
    [str, str, RUtil.air],
    [RUtil.air, RUtil.air, str],
]);




DebugUtil.endScript("recipes/minecraft/lead"); 