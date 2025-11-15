#priority 100

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.type.TagIngredient;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.item.type.block.BlockItem;


public class Kiln {
    
    public static removeByName(name as string) as void {
        <recipetype:clayworks:baking>.removeByName(name); 
    }

    public static remove(item as IItemStack) as void {
        <recipetype:clayworks:baking>.remove(item); 
    }

    public static fromFurnaceRecipe(recipe_name as string) as void {
        val recipe = furnace.getRecipeByName(recipe_name);
        Kiln.newRecipe(recipe.id.toString() + "_baking_ct", 
            recipe.ingredients[0], recipe.resultItem, recipe.experience, recipe.group, recipe.cookingTime / 2);
    }

    public static newRecipe(name as string, input as IItemStack, output as IItemStack, xp as float = 0.1, category as string = "misc", duration as int = 100) as void {
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

    public static convert(name as string, isBlocks as bool = true) as void {
        val rec = furnace.getRecipeByName(name);
        var category = isBlocks ? "blocks" : "misc"; 
        Kiln.newRecipe(RUtil.getRecipeString(name) + "_but_baking_instead", rec.ingredients[0], rec.resultItem, rec.experience, category, rec.cookingTime / 2);
    }

    public static newRecipeTag(name as string, input as KnownTag<ItemDefinition>, output as IItemStack, xp as float, category as string, duration as int = 100) as void {
        <recipetype:clayworks:baking>.addJsonRecipe(name,
        {
            "type": "clayworks:baking",
            "category": category,
            "cookingtime": duration,
            "experience": xp,
            "ingredient": {
                "tag": input.id
            },
            "result": output.registryName.toString()
        }); 
    }

    # categories are "misc" and "blocks"
    public static addFurnaceAndKiln(name as string, input as IItemStack, output as IItemStack, xp as float, category as string, duration as int = 200) as void {
        furnace.addRecipe(name + "_from_smelting", output, input, xp, duration);
        Kiln.newRecipe(name + "_from_baking", input, output, xp, category, duration / 2);  
    }

    public static addFurnaceAndKilnTag(name as string, input as KnownTag<ItemDefinition>, output as IItemStack, xp as float, category as string, duration as int = 200) as void {
        furnace.addRecipe(name + "_from_smelting", output, input, xp, duration);
        Kiln.newRecipeTag(name + "_from_baking", input, output, xp, category, duration / 2);  
    }
}