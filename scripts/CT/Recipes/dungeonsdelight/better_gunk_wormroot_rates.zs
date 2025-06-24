DebugUtil.startScript("recipes/dungeonsdelight/better_gunk_wormroot_rates"); 
    


<recipetype:farmersdelight:cutting>.addRecipe("cutting/gunk_based", <item:dungeonsdelight:gunk>, 
[(<item:farmersdelight:straw> * 2), (<item:dungeonsdelight:wormroots> * 2), (<item:minecraft:bone_meal> * 2 % 60), (<item:minecraft:slime_ball> * 2 % 60)], <tag:items:forge:tools/knives>);

RUtil.cut.removeByName("farmersdelight:cutting/gunk");


craftingTable.removeByName("dungeonsdelight:stick_from_wormroots");
craftingTable.removeByName("dungeonsdelight:wormroots_block");
craftingTable.removeByName("dungeonsdelight:wormwood_planks_from_wormroots");

craftingTable.addShaped("wormwood_log_um_not_planks_thatsright_from_wormroots", <item:dungeonsdelight:wormroots_block>, [
    [<item:dungeonsdelight:wormroots>, <item:dungeonsdelight:wormroots>], 
    [<item:dungeonsdelight:wormroots>, <item:dungeonsdelight:wormroots>]]);

DebugUtil.endScript("recipes/dungeonsdelight/better_gunk_wormroot_rates"); 