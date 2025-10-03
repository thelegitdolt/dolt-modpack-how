DebugUtil.startScript("recipes/misc/goodbye_chiseled_crafting"); 

#priority -199

import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.type.ShapedRecipe;

for recipe in (craftingTable.getAllRecipes() as stdlib.List<Recipe<Container>>) {
    val chiseledOrBoard = isTwoSlabsRecipe(recipe);
    if (chiseledOrBoard) {
        val path = recipe.resultItem.registryName.getPath();
        if (!("chiseled" in path) && !("board" in path) && !isStoneCutterResult(recipe.resultItem)) {
        } else {
            craftingTable.removeByName(recipe.id);
        }
    }
}

function isStoneCutterResult(item as IItemStack) as bool {
    for recipe in (stoneCutter.getAllRecipes() as stdlib.List<Recipe<Container>>) {
        if (recipe.resultItem.asItemLike() == item.asItemLike()) {
            return true; 
        }
    }
    return false;
}

function isTwoSlabsRecipe(recipe as Recipe<Container>) as bool {
    val ings = recipe.ingredients;
    var counter = 0; 
    var stack = RUtil.air as IIngredient;
    for ing in ings {
        if (!isAir(ing)) {
            if (!("slab" in ing.items[0].registryName.getPath())) {
                return false; 
            }

            if (stack == RUtil.air) {
                stack = ing; 
                counter += 1; 
            } else if (stack == ing) {
                counter += 1; 
            } else {
                return false; 
            }
        }
    }
    return counter == 2; 
}

function isAir(a as IIngredient) as bool {
    return a.commandString in "IIngredientEmpty.getInstance()";
}

DebugUtil.endScript("recipes/misc/goodbye_chiseled_crafting");

