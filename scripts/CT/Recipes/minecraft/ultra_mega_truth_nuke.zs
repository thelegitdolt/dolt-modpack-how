DebugUtil.startScript("recipes/minecraft/ultra_mega_truth_nuke"); 
    
RUtil.overwrite("minecraft:ender_eye", (a, b) => {
    craftingTable.addShapeless(a, b, [
        <item:minecraft:ender_pearl>, <item:minecraft:diamond>
    ]);
});
val stone = <tag:items:minecraft:stone_crafting_materials>;

RUtil.overwrite("minecraft:brewing_stand", (a, b) => {
    craftingTable.addShaped(a, b, [
        [RUtil.air, <item:minecraft:gold_ingot>, RUtil.air],
        [stone, stone, stone]
    ]);
});



DebugUtil.endScript("recipes/minecraft/ultra_mega_truth_nuke"); 