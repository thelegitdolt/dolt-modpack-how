DebugUtil.startScript("/Recipes/farmers_delight/buff_canvas_recipe"); 
    

craftingTable.removeByName("farmersdelight:canvas");

craftingTable.addShapeless("canvas_based", <item:farmersdelight:canvas> * 2, [<item:farmersdelight:straw>, <item:farmersdelight:straw>, <item:farmersdelight:straw>, <item:farmersdelight:straw>]);


DebugUtil.endScript("recipes/farmers_delight/buff_canvas_recipe"); 