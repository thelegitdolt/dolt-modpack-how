#priority 100

import crafttweaker.api.recipe.Brewing;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.IRecipeManager;
import crafttweaker.api.ingredient.type.IIngredientList;
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;

public class CUtil {
    public static val coppers = [
        "",
        "waxed_",
        "exposed_",
        "waxed_exposed_",
        "weathered_",
        "waxed_weathered_",
        "oxidized_",
        "waxed_oxidized_"] 
    as string[];

    public static copperRecipe(recipeName as string, 
                               recipe as function(name as string, i as IItemStack, j as IItemStack) as void, 
                               item1 as string, 
                               item2 as string) 
    as void {
        copperRecipe(recipeName, recipe, f(item1), f(item2));
    }

    public static copperRecipe(recipeName as string, 
                               recipe as function(name as string, i as IItemStack, j as IItemStack) as void, 
                               item1 as function(a as string) as string, item2 as function(a as string) as string) 
    as void {
        for state in coppers {
            recipe(state + recipeName, <item:${item1(state)}>, <item:${item2(state)}>);
        }
    }

    public static copperRecipe(recipeName as string, 
                               recipe as function(name as string, i as IItemStack, j as IItemStack, k as IItemStack) as void, 
                               item1 as string, 
                               item2 as string, 
                               item3 as string) 
    as void {
        copperRecipe(recipeName, recipe, f(item1), f(item2), f(item3));
    }

    public static copperRecipe(recipeName as string, 
                               recipe as function(name as string, i as IItemStack, j as IItemStack, k as IItemStack) as void, 
                               item1 as function(a as string) as string, 
                               item2 as function(a as string) as string, 
                               item3 as function(a as string) as string) 
    as void {
        for state in coppers {
            recipe(state + recipeName, <item:${item1(state)}>, <item:${item2(state)}>, <item:${item3(state)}>);
        }
    }

    public static copperRecipe(recipeName as string, 
                               recipe as function(name as string, i as IItemStack, j as IItemStack, k as IItemStack, l as IItemStack) as void, 
                               item1 as string, 
                               item2 as string, 
                               item3 as string,
                               item4 as string) 
    as void {
        copperRecipe(recipeName, recipe, f(item1), f(item2), f(item3), f(item4));
    }

    public static copperRecipe(recipeName as string, 
                               recipe as function(name as string, i as IItemStack, j as IItemStack, k as IItemStack, l as IItemStack) as void, 
                               item1 as function(a as string) as string, 
                               item2 as function(a as string) as string, 
                               item3 as function(a as string) as string,
                               item4 as function(a as string) as string) 
    as void {
        for state in coppers {
            recipe(state + recipeName, <item:${item1(state)}>, <item:${item2(state)}>, <item:${item3(state)}>, <item:${item4(state)}>);
        }
    }

    public static f(name as string, normal as string = "minecraft", modified as string = "caverns_and_chasms") as function(name as string) as string {
        if (name == "minecraft:copper_block") {
            return (a) => {
                if (a == "" || a == "waxed_") {
                    return "minecraft:" + a + "copper_block";
                } else {
                    return "minecraft:" + a + "copper";
                }
            };
        }


        if (":" in name) {
            val rl = RUtil.split(name);
            return (a) => {
                return rl[0] + ":" + a + rl[1];
            };
        } else {
            return (a) => {
                if (a == "") {
                    return normal + ":" + name; 
                } else {
                    return modified + ":" + a + name; 
                }
            };
        }
    }
}