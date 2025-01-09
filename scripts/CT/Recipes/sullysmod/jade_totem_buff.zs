DebugUtil.startScript("recipes/sullysmod/jade_totem_buff"); 
    

craftingTable.removeByName("sullysmod:crafting/jade_flinger_totem");
craftingTable.removeByName("sullysmod:crafting/jade_totem");


craftingTable.addShaped("jade_totem", <item:sullysmod:jade_totem> * 8, 
[[<item:sullysmod:jade_bricks>, <item:sullysmod:jade_bricks>, <item:sullysmod:jade_bricks>], 
[<item:sullysmod:jade_bricks>, <item:minecraft:air>, <item:sullysmod:jade_bricks>], 
[<item:sullysmod:jade_bricks>, <item:sullysmod:jade_bricks>, <item:sullysmod:jade_bricks>]]);



DebugUtil.endScript("recipes/sullysmod/jade_totem_buff"); 