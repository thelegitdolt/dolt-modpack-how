DebugUtil.startScript("recipes/dungeonsdelight/better_gunk_wormroot_rates"); 

<recipetype:farmersdelight:cutting>.addRecipe("cutting/gunk_based", <item:dungeonsdelight:gunk>, 
[(<item:farmersdelight:straw> * 2), (<item:dungeonsdelight:wormroot_tendrils> * 2), (<item:minecraft:bone_meal> * 2 % 60), (<item:minecraft:slime_ball> * 2 % 60)], <tag:items:forge:tools/knives>);

RUtil.cut.removeByName("farmersdelight:cutting/gunk");

craftingTable.removeByName("dungeonsdelight:wormwood_planks_from_wormroots");
craftingTable.removeByName("dungeonsdelight:wormroots_block");

DebugUtil.endScript("recipes/dungeonsdelight/better_gunk_wormroot_rates"); 