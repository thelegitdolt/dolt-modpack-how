DebugUtil.startScript("recipes/farmers_delight/cooking_pot"); 
    

craftingTable.removeByName("farmersdelight:cooking_pot");
craftingTable.addShaped("cooking_pot_based", <item:farmersdelight:cooking_pot>, [
    [<item:minecraft:brick>, <item:minecraft:air>, <item:minecraft:brick>], 
    [<tag:items:forge:ingots/iron>, <tag:items:forge:buckets/water>, <tag:items:forge:ingots/iron>],
     [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]]);



DebugUtil.endScript("recipes/farmers_delight/cooking_pot"); 