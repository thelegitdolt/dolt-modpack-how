DebugUtil.startScript("recipes/minecraft/smithing_table_good"); 
    

craftingTable.removeByName("minecraft:smithing_table");
craftingTable.addShaped("smithing_table_lead_based", <item:minecraft:smithing_table>, [
   [<item:oreganized:lead_ingot>, <item:oreganized:lead_ingot>],
   [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
   [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
]);


DebugUtil.endScript("recipes/minecraft/smithing_table_good"); 