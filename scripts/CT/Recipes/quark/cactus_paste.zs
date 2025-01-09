DebugUtil.startScript("/Recipes/quark/cactus_paste.zs/"); 
    

import crafttweaker.api.recipe.FurnaceRecipeManager;

furnace.removeByName("quark:building/smelting/moss_paste");
furnace.removeByName("minecraft:green_dye");

furnace.addRecipe("cactus_paste", <item:quark:moss_paste>, <item:minecraft:cactus>, 1.0, 200);

craftingTable.addShapeless("slime_from_cactus", <item:minecraft:slime_ball>, [<item:farmersdelight:wheat_dough>, <item:quark:moss_paste>]);
craftingTable.addShapeless("green_dye_from_paste", <item:minecraft:green_dye>, [<item:quark:moss_paste>]);






DebugUtil.endScript("/Recipes/quark/cactus_paste.zs"); 