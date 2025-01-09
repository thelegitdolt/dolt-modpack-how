DebugUtil.startScript("/Recipes/quark/midori_pillar.zs/"); 
    

craftingTable.removeByName("quark:building/crafting/midori_pillar");


craftingTable.addShaped("midori_block", <item:quark:midori_pillar> * 2, 
[[<item:quark:midori_block>],
[<item:quark:midori_block>]]

);


DebugUtil.endScript("/Recipes/quark/midori_pillar.zs"); 