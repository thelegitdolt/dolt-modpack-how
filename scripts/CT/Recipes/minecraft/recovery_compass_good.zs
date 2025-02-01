DebugUtil.startScript("recipes/minecraft/quartz_glass"); 
    
val bone = <item:minecraft:bone>; 

craftingTable.removeByName("minecraft:recovery_compass"); 

craftingTable.addShaped("recovery_compass_good", <item:minecraft:recovery_compass>, [
    [RUtil.air, bone, RUtil.air],
    [bone, <item:minecraft:compass>, bone],
    [RUtil.air, bone, RUtil.air]
]);


DebugUtil.endScript("recipes/minecraft/quartz_glass"); 