DebugUtil.startScript("recipes/minecraft/ice"); 
    
RUtil.overwrite("minecraft:ender_eye", (a) => {
    craftingTable.addShapeless(a, <item:minecraft:ender_eye>, [
        <item:minecraft:ender_pearl>, <item:minecraft:diamond>
    ]);
});


DebugUtil.endScript("recipes/minecraft/ice"); 