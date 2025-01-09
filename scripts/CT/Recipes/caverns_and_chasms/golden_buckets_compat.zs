DebugUtil.startScript("recipes/caverns_and_chasms/golden_bucket_compat/"); 
    

craftingTable.removeByName("alexscaves:acidic_radrock"); 

craftingTable.addShaped("acidic_radrock_based", <item:alexscaves:acidic_radrock> * 4, 
[[RUtil.air, <item:alexscaves:radrock>, RUtil.air], 
[<item:alexscaves:radrock>, <tag:items:forge:buckets/acid>, <item:alexscaves:radrock>], 
[RUtil.air, <item:alexscaves:radrock>, RUtil.air]]);

craftingTable.removeByName("farmersdelight:wheat_dough_from_water"); 
craftingTable.addShapeless("wheat_dough_based", <item:farmersdelight:wheat_dough> * 3, 
[<tag:items:forge:buckets/water>, <tag:items:forge:flour/wheat>, <tag:items:forge:flour/wheat>, <tag:items:forge:flour/wheat>]);


DebugUtil.endScript("recipes/caverns_and_chasms/golden_bucket_compat"); 