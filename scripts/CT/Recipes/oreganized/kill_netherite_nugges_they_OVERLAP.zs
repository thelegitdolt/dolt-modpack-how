DebugUtil.startScript("recipes/oreganized/kill_netherite_nugges_they_OVERLAP"); 
    

import mods.jeitweaker.Jei;

val nug = <item:oreganized:netherite_nugget>;
HUtil.hide(nug); 
craftingTable.removeByName("oreganized:netherite_ingot_from_nuggets"); 
craftingTable.remove(nug);
 
DebugUtil.endScript("recipes/oreganized/kill_netherite_nugges_they_OVERLAP"); 