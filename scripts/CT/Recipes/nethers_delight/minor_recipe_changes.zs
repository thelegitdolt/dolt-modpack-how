DebugUtil.startScript("recipes/nethers_delight/minor_recipe_changes"); 

craftingTable.removeByName("mypersonaldelight:crafting/tear_popsicle"); 
craftingTable.addShaped("tear_poppers_good", <item:mynethersdelight:tear_popsicle> * 4, 
[[<item:minecraft:ghast_tear>], 
[<tag:items:forge:rods/wooden>]]);


craftingTable.removeByName("mynethersdelight:crafting/hotcream_bucket");
DebugUtil.endScript("recipes/nethers_delight/minor_recipe_changes"); 