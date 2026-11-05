DebugUtil.startScript("/Recipes/farmers_delight/dough_sex"); 
    

val wheat = <item:minecraft:wheat> | <tag:items:forge:flour/wheat>;

craftingTable.removeByName("farmersdelight:wheat_dough_from_water"); 
craftingTable.removeByName("farmersdelight:wheat_dough_from_egg");

craftingTable.addShapeless("wheat_dough_based", <item:farmersdelight:wheat_dough> * 2, 
[<tag:items:forge:buckets/water>, wheat, wheat, wheat, wheat]);

craftingTable.addShapeless("wheat_dough_based_egg", <item:farmersdelight:wheat_dough> * 2, 
[<tag:items:forge:eggs>, wheat, wheat, wheat, wheat]);

DebugUtil.endScript("recipes/farmers_delight/dough_sex"); 