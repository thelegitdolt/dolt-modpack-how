DebugUtil.startScript("/Recipes/minecraft/paper.zs/"); 
    

craftingTable.removeByName("minecraft:paper");
craftingTable.removeByName("farmersdelight:paper_from_tree_bark");


craftingTable.addShapeless("paper_from_cane", 
                           <item:minecraft:paper> * 3, 
                            [<item:minecraft:sugar_cane>, <item:minecraft:sugar_cane>, <item:minecraft:sugar_cane>]);
craftingTable.addShapeless("paper_from_bark", 
                            <item:minecraft:paper>, 
                            [<item:farmersdelight:tree_bark>, <item:farmersdelight:tree_bark>]);


DebugUtil.endScript("/Recipes/minecraft/paper.zs"); 