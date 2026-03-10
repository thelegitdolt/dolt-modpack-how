DebugUtil.startScript("recipes/farmers_delight/barbecue_stick/"); 
    

craftingTable.removeByName("farmersdelight:barbecue_stick");

craftingTable.addShapeless("barbecue_stick_good", <item:farmersdelight:barbecue_stick> * 2, 
[<tag:items:abnormals_delight:barbecue_stick_ingredients>, <tag:items:abnormals_delight:barbecue_stick_ingredients>, <item:farmersdelight:onion>, <item:minecraft:stick>, <item:farmersdelight:tomato>]);


DebugUtil.endScript("recipes/farmers_delight/barbecue_stick"); 