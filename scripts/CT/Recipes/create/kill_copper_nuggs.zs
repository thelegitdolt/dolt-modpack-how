DebugUtil.startScript("recipes/create/kill_copper_nuggs"); 
    

val bad = <item:create:copper_nugget>;
HUtil.hide(bad); 

craftingTable.remove(bad); 
craftingTable.removeByName("create:crafting/materials/copper_ingot"); 

DebugUtil.endScript("recipes/create/kill_copper_nuggs"); 