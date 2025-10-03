#priority -200
DebugUtil.startScript("recipes/misc/stairers"); 

import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientList;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.type.ShapedRecipe;

for recipe in (craftingTable.getAllRecipes() as stdlib.List<Recipe<Container>>) {
    val item = isStairRecipe(recipe);
    if (item != RUtil.air) {
        val stairs = recipe.resultItem; 
        craftingTable.addShaped(RUtil.getRecipeString(recipe.id) + "_based", stairs * 3, [
            [item, RUtil.air],
            [item, item]
        ]);
        craftingTable.removeByName(recipe.id);

        var stack = <item:minecraft:air>;
        if (item is IIngredientList) {
            stack = item.items[0];
        } else {
            stack = item;
        }
        craftingTable.addShapeless(RUtil.getRecipeString(recipe.id) + "_revert", stack, [
            stairs * 1
        ]);
    }
}



function isStairRecipe(recipe as Recipe<Container>) as IIngredient {
    val ings = recipe.ingredients;

    if (!recipe.canCraftInDimensions(3, 3) || !(recipe is ShapedRecipe) || ings.length < 9) {
        return <item:minecraft:air>; 
    }

    val firstIng = ings[0];

    val two = isAir(ings[1]);
    val three = isAir(ings[2]);
    val four = ings[3] == firstIng;
    val five = ings[4] == firstIng; 
    val six = isAir(ings[5]);
    val seven = ings[6] == firstIng;
    val eight = ings[7] == firstIng;
    val nine = ings[8] == firstIng;

    if (two && three && four && five && six && seven && eight && nine) {
        if (!("stairs" in recipe.resultItem.registryName.getPath())) {
            return <item:minecraft:air>;
        }

        if (recipe.resultItem.amount != 4) {
            return <item:minecraft:air>;
        }

        return firstIng;
    }
    return <item:minecraft:air>; 
}

function isAir(a as IIngredient) as bool {
    return a.commandString in "IIngredientEmpty.getInstance()";
}

DebugUtil.endScript("recipes/misc/stairers"); 