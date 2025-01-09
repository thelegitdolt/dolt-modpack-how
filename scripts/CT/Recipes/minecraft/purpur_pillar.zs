DebugUtil.startScript("/Recipes/minecraft/purpur_pillar.zs/"); 
    

craftingTable.remove(<item:minecraft:purpur_pillar>);

craftingTable.addShaped("purpur_block", <item:minecraft:purpur_pillar> * 2, 
[[<item:minecraft:purpur_block>],
[<item:minecraft:purpur_block>]]

);


DebugUtil.endScript("/Recipes/minecraft/purpur_pillar.zs"); 