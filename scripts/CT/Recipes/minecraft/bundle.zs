DebugUtil.startScript("/recipes/minecraft/bundle/"); 
    

craftingTable.removeByName("caverns_and_chasms:bundle");
craftingTable.addShaped("bundle_vanilla", <item:minecraft:bundle>, [
    [<item:minecraft:string> | <item:farmersdelight:rope>],
    [<tag:items:dolt_mod_how:leather>]]);

DebugUtil.endScript("/recipes/minecraft/bundle"); 