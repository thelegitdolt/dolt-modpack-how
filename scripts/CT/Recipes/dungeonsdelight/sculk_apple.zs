DebugUtil.startScript("recipes/dungeonsdelight/sculk_apple"); 

craftingTable.removeByName("dungeonsdelight:sculk_apple");
craftingTable.addShapeless("sculk_apple", <item:dungeonsdelight:sculk_apple>, [
    <item:buzzier_bees:honey_apple>, <item:minecraft:sculk>, <item:minecraft:sculk>
]);

DebugUtil.endScript("recipes/dungeonsdelight/sculk_apple"); 