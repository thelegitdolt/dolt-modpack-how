DebugUtil.startScript("recipes/quark/backpack_diamond"); 
    

craftingTable.removeByName("quark:oddities/crafting/backpack_no_hide");

craftingTable.addShaped("backpack", <item:quark:backpack>, [
    [<tag:items:dolt_mod_how:leather>, <item:farmersdelight:canvas>, <tag:items:dolt_mod_how:leather>],
    [<tag:items:dolt_mod_how:leather>, <tag:items:forge:chests/wooden>, <tag:items:dolt_mod_how:leather>],
    [<tag:items:dolt_mod_how:leather>, <item:minecraft:diamond>, <tag:items:dolt_mod_how:leather>]]);




DebugUtil.endScript("recipes/quark/backpack_diamond"); 