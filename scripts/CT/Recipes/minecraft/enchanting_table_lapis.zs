DebugUtil.startScript("recipes/minecraft/enchanting_table_lapis"); 
    
craftingTable.removeByName("minecraft:enchanting_table");
craftingTable.addShaped("enchanting_table_based", <item:minecraft:enchanting_table>, [
    [RUtil.air, <item:minecraft:book>, RUtil.air],
    [<item:minecraft:lapis_lazuli>, <item:minecraft:cobbled_deepslate>, <item:minecraft:lapis_lazuli>],
    [<item:minecraft:cobbled_deepslate>, <item:minecraft:cobbled_deepslate>, <item:minecraft:cobbled_deepslate>]
]);

DebugUtil.endScript("recipes/minecraft/enchanting_table_lapis");