DebugUtil.startScript("recipes/sullysmod/smelt_jade_ore"); 
    

import crafttweaker.api.recipe.BlastFurnaceRecipeManager;

blastFurnace.addRecipe("blasting_jade_ore", <item:sullysmod:jade>, <item:sullysmod:jade_ore>, 0.7, 100);
blastFurnace.addRecipe("blasting_deepslate_jade_ore", <item:sullysmod:jade>, <item:sullysmod:deepslate_jade_ore>, 0.7, 100);

furnace.addRecipe("smelting_jade_ore", <item:sullysmod:jade>, <item:sullysmod:jade_ore>, 0.7, 200);
furnace.addRecipe("smelting_deepslate_jade_ore", <item:sullysmod:jade>, <item:sullysmod:deepslate_jade_ore>, 0.7, 200);

blastFurnace.removeByName("sullysmod:blasting/rough_jade_from_blasting_jade_ore");
furnace.removeByName("sullysmod:smelting/rough_jade_from_smelting_jade_ore");

blastFurnace.removeByName("sullysmod:blasting/rough_jade_from_blasting_deepslate_jade_ore");
furnace.removeByName("sullysmod:smelting/rough_jade_from_smelting_deepslate_jade_ore");

DebugUtil.endScript("recipes/sullysmod/smelt_jade_ore"); 