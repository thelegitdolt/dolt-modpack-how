DebugUtil.startScript("recipes/caverns_and_chasms/dimmer_recipe_good"); 
    
craftingTable.removeByName("caverns_and_chasms:dimmer");
  craftingTable.addShaped("dimmer_good", <item:caverns_and_chasms:dimmer>, [
    [<tag:items:forge:nuggets/tin>], 
    [<item:minecraft:redstone_torch>], 
    [<tag:items:forge:nuggets/tin>]]);


DebugUtil.endScript("recipes/caverns_and_chasms/dimmer_recipe_good"); 