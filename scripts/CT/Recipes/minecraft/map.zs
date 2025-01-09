DebugUtil.startScript("/Recipes/minecraft/map.zs/"); 
    

val paper = <item:minecraft:paper>;

craftingTable.remove(<item:minecraft:map>);

craftingTable.addShapeless("map_wiped", <item:minecraft:map>, [<item:minecraft:filled_map>, <item:minecraft:white_dye>]);
craftingTable.addShapeless("map_based", <item:minecraft:map>, [paper, paper, paper, paper]);



DebugUtil.endScript("/Recipes/minecraft/map.zs"); 