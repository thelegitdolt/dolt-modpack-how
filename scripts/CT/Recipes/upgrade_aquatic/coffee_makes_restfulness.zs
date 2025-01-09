DebugUtil.startScript("/Recipes/upgrade_aquatic/coffee_makes_restfulness.zs/"); 
    

import crafttweaker.api.recipe.Brewing;


brewing.removeRecipeByReagent(<item:minecraft:cocoa_beans>);

RUtil.newBrewingRecipe(<item:farmersrespite:coffee_beans>, "upgrade_aquatic:restfulness");


DebugUtil.endScript("/Recipes/upgrade_aquatic/coffee_makes_restfulness.zs"); 