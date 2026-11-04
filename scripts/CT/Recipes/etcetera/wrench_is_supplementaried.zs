DebugUtil.startScript("recipes/etcetera/wrench_is_supplementaried"); 

craftingTable.removeByName("supplementaries:wrench");

craftingTable.addShaped("etcetera_wrench_based", <item:supplementaries:wrench>, 
[[RUtil.air, <item:etcetera:bismuth_ingot>, RUtil.air], 
[RUtil.air, <item:etcetera:bismuth_ingot>, <item:etcetera:bismuth_ingot>], 
[<item:etcetera:bismuth_ingot>, RUtil.air, RUtil.air]]);


DebugUtil.endScript("recipes/etcetera/wrench_is_supplementaried"); 