#priority -200
DebugUtil.startScript("recipes/misc/slabbers"); 

import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.type.ShapedRecipe;

for recipe in (craftingTable.getAllRecipes() as stdlib.List<Recipe<Container>>) {
    val baseBlock = isSlabRecipe(recipe);
    if (!baseBlock.matches(<item:minecraft:air>)) {
        val result = recipe.resultItem;
        craftingTable.addShaped(result.registryName.toString().replace(":", "_") + "_based", result * 4,[
            [baseBlock, baseBlock]
        ]);
        craftingTable.addShapeless(baseBlock.registryName.toString().replace(":", "_") + "_from_slabs", baseBlock, [
            result * 1, result * 1
        ]);
        craftingTable.removeByName(recipe.id);
    }
}

function isSlabRecipe(recipe as Recipe<Container>) as IItemStack {
    if (!recipe.canCraftInDimensions(3, 1) || recipe.ingredients.length != 3 || !(recipe is ShapedRecipe)) {
        return <item:minecraft:air>; 
    }

    val ingredients = recipe.ingredients;
    var itemstack = <item:minecraft:air>;
    for i in ingredients {
        if (i.items.length == 1)  {
            if (itemstack == <item:minecraft:air>) {
                itemstack = i.items[0];
            }
            else if (itemstack != i.items[0]) {
                return <item:minecraft:air>;
            }
        }
        else {
            return <item:minecraft:air>;
        }
    }

    if (recipe.resultItem.amount != 6) {
        return <item:minecraft:air>;
    }

    if (!("slab" in recipe.resultItem.registryName.getPath())) {
        return <item:minecraft:air>;
    }

    return itemstack; 
}

DebugUtil.endScript("recipes/misc/slabbers"); 