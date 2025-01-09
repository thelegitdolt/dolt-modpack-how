DebugUtil.startScript("/Recipes/sullysmod/smelt_jade_ore.zs/"); 
    

import crafttweaker.api.recipe.BlastFurnaceRecipeManager;

blastFurnace.addRecipe("blasting_jade_ore", <item:sullysmod:jade>, <item:sullysmod:jade_ore>, 0.7, 100);
blastFurnace.addRecipe("blasting_deepslate_jade_ore", <item:sullysmod:jade>, <item:sullysmod:deepslate_jade_ore>, 0.7, 100);

furnace.addRecipe("smelting_jade_ore", <item:sullysmod:jade>, <item:sullysmod:jade_ore>, 0.7, 200);
furnace.addRecipe("smelting_deepslate_jade_ore", <item:sullysmod:jade>, <item:sullysmod:deepslate_jade_ore>, 0.7, 200);




DebugUtil.endScript("/Recipes/sullysmod/smelt_jade_ore.zs"); 