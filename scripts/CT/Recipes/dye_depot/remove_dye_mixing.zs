DebugUtil.startScript("recipes/dye_depot/remove_dye_mixing"); 

# priority 200

import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.type.ShapedRecipe;


for recipe in (craftingTable.getAllRecipes() as stdlib.List<Recipe<Container>>) {
    if (isDyeMixRecipe(recipe)) {
        craftingTable.removeByName(recipe.id);
    }
}

function isDyeMixRecipe(recipe as Recipe<Container>) as bool {
    if (recipe is ShapedRecipe) {
        return false; 
    }

    for i in recipe.ingredients {
        if (!(<tag:items:forge:dyes> as IIngredient).contains(i)) {
            return false; 
        }
    }

    if (!(<tag:items:forge:dyes> as IIngredient).contains(recipe.resultItem)) {
        return false;
    }

    return true; 
}



DebugUtil.endScript("recipes/dye_depot/remove_dye_mixing"); 