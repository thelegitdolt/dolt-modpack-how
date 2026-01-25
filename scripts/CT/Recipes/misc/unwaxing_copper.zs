DebugUtil.startScript("recipes/misc/unwaxing_copper"); 

import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientList;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.type.ShapedRecipe;


for recipe in (craftingTable.getAllRecipes() as stdlib.List<Recipe<Container>>) {
    var a = isWaxingRecipe(recipe); 
    var waxed = recipe.resultItem; 
    println("hello gays" + a.items[0].registryName);
    if (!a.matches(<item:minecraft:air>)) {
        craftingTable.addShapeless("wax_off_" + RUtil.getRecipeString(waxed.registryName), a, [
            waxed, <tag:items:forge:tools/axes>.asIIngredient().transformDamage()
        ]);
    }
}

function isWaxingRecipe(recipe as Recipe<Container>) as IItemStack {
    if (recipe.ingredients.length != 2 || (recipe is ShapedRecipe)) {
        return <item:minecraft:air>; 
    }

    if (!("waxed" in recipe.resultItem.registryName.getPath())) {
        return <item:minecraft:air>;
    }

    for i in recipe.ingredients {
        if (i.items[0].matches(<item:minecraft:honeycomb>)) {
            for j in recipe.ingredients {
                if (!j.items[0].matches(<item:minecraft:honeycomb>)) {
                    return j.items[0]; 
                }
            }
            return <item:minecraft:air>; 
        }
    }
    return <item:minecraft:air>; 
}

DebugUtil.endScript("recipes/misc/unwaxing_copper"); 