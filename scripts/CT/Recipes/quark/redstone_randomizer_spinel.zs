DebugUtil.startScript("recipes/quark/redstone_randomizer_spinel"); 
    
craftingTable.removeByName("quark:automation/crafting/redstone_randomizer"); 

craftingTable.addShaped("redstone_randomizer_spinel_based", <item:quark:redstone_randomizer>,
 [[RUtil.air, <item:minecraft:redstone_torch>, RUtil.air], 
 [<item:minecraft:redstone_torch>, <item:caverns_and_chasms:spinel>, <item:minecraft:redstone_torch>], 
 [<tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>]]);
DebugUtil.endScript("recipes/quark/redstone_randomizer_spinel.zs"); 