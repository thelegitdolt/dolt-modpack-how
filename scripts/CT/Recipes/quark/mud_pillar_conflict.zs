DebugUtil.startScript("/Recipes/quark/mud_pillar_conflict.zs/"); 
    

craftingTable.remove(<item:quark:mud_pillar>);

craftingTable.addShaped("mud_pillar", <item:quark:mud_pillar> * 2, 
[[<item:minecraft:mud_bricks>],
[<item:minecraft:mud_bricks>]]

);


DebugUtil.endScript("/Recipes/quark/mud_pillar_conflict.zs"); 