DebugUtil.startScript("/Recipes/spawn/tuna_sandwich_good.zs/"); 
    

craftingTable.removeByName("spawn:tuna_sandwich");
craftingTable.addShapeless("tuna_sandwich_based", <item:spawn:tuna_sandwich>, [
    <item:minecraft:bread>, <item:spawn:cooked_tuna_chunk>, 
    <item:farmersdelight:onion>,  <tag:items:forge:salad_ingredients>
]); 

RUtil.cut.remove(<item:abnormals_delight:adzuki_cake_slice>);


DebugUtil.endScript("/Recipes/spawn/tuna_sandwich_good.zs"); 