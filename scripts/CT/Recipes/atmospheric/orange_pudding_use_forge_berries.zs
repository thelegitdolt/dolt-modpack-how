DebugUtil.startScript("recipes/atmospheric/orange_pudding_use_forge_berries"); 
    

craftingTable.removeByName("atmospheric:orange_pudding");

craftingTable.addShapeless("orange_pudding_based", <item:atmospheric:orange_pudding>, [
    <item:atmospheric:orange>, <tag:items:forge:berries>, <item:minecraft:cocoa_beans>, <tag:items:forge:eggs>, <tag:items:forge:milk>
]);


DebugUtil.endScript("recipes/atmospheric/orange_pudding_use_forge_berries"); 