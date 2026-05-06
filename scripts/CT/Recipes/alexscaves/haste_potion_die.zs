DebugUtil.startScript("recipes/alexscaves/haste_potion_die"); 
import crafttweaker.api.recipe.Brewing;

brewing.removeRecipeByReagent(<item:alexscaves:corrodent_teeth>);
RUtil.newPotionMix(<item:sob:golden_potato>, "alexscaves:haste");

DebugUtil.endScript("recipes/alexscaves/haste_potion_die");