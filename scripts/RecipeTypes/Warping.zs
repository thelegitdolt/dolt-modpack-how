#priority 100

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

public class Warping {
    public static removeByName(name as string) as void {
        recipes.removeByName(name); 
    }

    public static remove(item as IItemStack) as void {
        recipes.remove(item); 
    }

    public static newRecipe(name as string, input as IItemStack, output as IItemStack) as void {
        recipes.addJsonRecipe(name,
        {
            "type": "architects_palette:warping",
            "ingredient": [
                {
                    "item": input.registryName.toString()
                }
            ],
            "result": {
                "item": output.registryName.toString()
            },
            "dimension": "minecraft:the_nether"
        }); 
    }
}