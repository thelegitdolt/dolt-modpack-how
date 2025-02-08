#priority 100

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

public class Kiln {
    
    public static removeByName(name as string) as void {
        <recipetype:clayworks:baking>.removeByName(name); 
    }

    public static remove(item as IItemStack) as void {
        <recipetype:clayworks:baking>.remove(item); 
    }

    public static newRecipe(name as string, input as IItemStack, output as IItemStack, xp as float, category as string, duration as int = 100) as void {
        <recipetype:clayworks:baking>.addJsonRecipe(name,
        {
            "type": "clayworks:baking",
            "category": category,
            "cookingtime": duration,
            "experience": xp,
            "ingredient": {
                "item": input.registryName.toString()
            },
            "result": output.registryName.toString()
        }); 
    }

    # categories are "misc" and "blocks"
    public static addFurnaceAndKiln(name as string, input as IItemStack, output as IItemStack, xp as float, category as string, duration as int = 200) as void {
        furnace.addRecipe(name + "_from_smelting", output, input, xp, duration);
        Kiln.newRecipe(name + "_from_baking", input, output, xp, category, duration / 2);  
    }
}