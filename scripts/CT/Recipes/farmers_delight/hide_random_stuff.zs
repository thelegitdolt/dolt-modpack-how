DebugUtil.startScript("/Recipes/farmers_delight/hide_random_stuff.zs/"); 
    

import mods.jeitweaker.Jei;

val things = [
    "fried_egg", "milk_bottle"

] as string[];

for thing in things {
    Jei.hideIngredient(<item:farmersdelight:${thing}>);
}




<tag:items:forge:milk>.remove(<item:farmersdelight:milk_bottle>);
<tag:items:forge:cooked_eggs>.remove(<item:farmersdelight:fried_egg>);



DebugUtil.endScript("/Recipes/farmers_delight/hide_random_stuff.zs"); 