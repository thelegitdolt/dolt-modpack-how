DebugUtil.startScript("recipes/caverns_and_chasms/golden_bucket/acid"); 
    

craftingTable.removeByName("alexscaves:acidic_radrock"); 

craftingTable.addShaped("acidic_radrock_based", <item:alexscaves:acidic_radrock> * 4, 
[[RUtil.air, <item:alexscaves:radrock>, RUtil.air], 
[<item:alexscaves:radrock>, <tag:items:forge:buckets/acid>, <item:alexscaves:radrock>], 
[RUtil.air, <item:alexscaves:radrock>, RUtil.air]]);

DebugUtil.endScript("recipes/caverns_and_chasms/golden_bucket/acid"); 