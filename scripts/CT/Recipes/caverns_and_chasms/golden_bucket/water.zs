DebugUtil.startScript("recipes/caverns_and_chasms/golden_bucket/water"); 
    
craftingTable.removeByName("farmersdelight:wheat_dough_from_water"); 
craftingTable.addShapeless("wheat_dough_based", <item:farmersdelight:wheat_dough> * 3, 
[<tag:items:forge:buckets/water>, <tag:items:forge:flour/wheat>, <tag:items:forge:flour/wheat>, <tag:items:forge:flour/wheat>]);

DebugUtil.endScript("recipes/caverns_and_chasms/golden_bucket/water"); 