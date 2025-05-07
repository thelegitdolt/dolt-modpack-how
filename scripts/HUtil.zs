#priority 100

import mods.jeitweaker.Jei;
import crafttweaker.api.ingredient.type.IIngredientList;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.food.FoodProperties;
import mods.jeitweaker.ingredient.JeiIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.entity.effect.MobEffectInstance;

public class HUtil {

    # Precondition: NONE
    # Hides all items given in the list
    public static hideAll(alls as string[]) as void {
        for i in alls {
            Jei.hideIngredient(<item:${i}>); 
        }
    }

    public static hideAllFluids(alls as string[]) as void {
        for i in alls {
            Jei.hideIngredient(<fluid:${i}>); 
        }
    }

    public static hideFluid(i as string) as void {
        Jei.hideIngredient(<fluid:${i}>); 
    }

    #Precondition: NONE
    # Hides ONE item
    public static hide(thing as IItemStack) as void {
        Jei.hideIngredient(thing);
    }
}