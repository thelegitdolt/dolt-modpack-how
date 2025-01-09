DebugUtil.startScript("recipes/sullysmod/luck_potion_remove"); 
    

import mods.jeitweaker.Jei;
import crafttweaker.api.recipe.Brewing;

brewing.removeRecipeByReagent(<item:sullysmod:jade>);

brewing.removeRecipeByOutputPotion(<potion:sullysmod:unluck>);

Jei.hideIngredient(<item:minecraft:potion>.withTag({Potion: "sullysmod:unluck"}));
Jei.hideIngredient(<item:minecraft:splash_potion>.withTag({Potion: "sullysmod:unluck"}));
Jei.hideIngredient(<item:minecraft:lingering_potion>.withTag({Potion: "sullysmod:unluck"}));
Jei.hideIngredient(<item:minecraft:tipped_arrow>.withTag({Potion: "sullysmod:unluck"}));
Jei.hideIngredient(<item:caverns_and_chasms:tether_potion>.withTag({Potion: "sullysmod:unluck"}));


DebugUtil.endScript("recipes/sullysmod/luck_potion_remove"); 