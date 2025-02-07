DebugUtil.startScript("recipes/create/drill"); 
    

craftingTable.removeByName("create:crafting/kinetics/mechanical_drill");

craftingTable.addShaped("drill_good", <item:create:mechanical_drill>,
[[RUtil.air, <item:minecraft:iron_ingot>, RUtil.air], 
[<item:minecraft:iron_ingot>, <item:minecraft:diamond>, <item:minecraft:iron_ingot>], 
[RUtil.air, <item:create:andesite_casing>, RUtil.air]]);



DebugUtil.endScript("recipes/create/drill"); 