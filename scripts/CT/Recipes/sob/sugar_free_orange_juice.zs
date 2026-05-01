DebugUtil.startScript("recipes/sob/sugar_free_orange_juice"); 
    

craftingTable.addShapeless("organic_orange_juice", <item:sob:orange_juice>, [
    <item:atmospheric:orange>, <item:atmospheric:orange>, <item:minecraft:glass_bottle>
]);
craftingTable.removeByName("sob:crafting/orange_juice");

DebugUtil.endScript("recipes/sob/sugar_free_orange_juice"); 