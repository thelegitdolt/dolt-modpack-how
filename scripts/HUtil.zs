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

    #Precondition: NONE
    # Hides ONE item
    public static hide(thing as IItemStack) as void {
        Jei.hideIngredient(thing);
    }

    # Hides all potions of a specific type in Jei
    # Preconditions: a mod_id:type potion exist
    # mod_id:type potions has both a long and strong version, which are formatted as mod_id:long_type
    public static hidePotions(mod_id as string, type as string) as void {
        val modid = mod_id + ":";
        val potions = [
            <item:minecraft:tipped_arrow>,
            <item:minecraft:splash_potion>,
            <item:minecraft:potion>,
            <item:minecraft:lingering_potion>,
            <item:caverns_and_chasms:tether_potion>
        ];
        for potion in potions {
            Jei.hideIngredient(potion.withTag({Potion: modid + "strong_" + type}));
            Jei.hideIngredient(potion.withTag({Potion: modid + "long_" + type}));
            Jei.hideIngredient(potion.withTag({Potion: modid + type}));
        }
    }

    # Hides all potions of a specific type in Jei, except its original base type
    # Preconditions: a mod_id:type potion exist
    # mod_id:type potions has both a long and strong version, which are formatted as mod_id:long_type
    public static hideGoodPotionFrontMark(mod_id as string, type as string) as void {
        val modid = mod_id + ":";
        val potions = [
            <item:minecraft:tipped_arrow>,
            <item:minecraft:splash_potion>,
            <item:minecraft:lingering_potion>,
            <item:caverns_and_chasms:tether_potion>
        ];
        for potion in potions {
                Jei.hideIngredient(potion.withTag({Potion: modid + "strong_" + type}));
                Jei.hideIngredient(potion.withTag({Potion: modid + "long_" + type}));
                Jei.hideIngredient(potion.withTag({Potion: modid + type}));   
        }

        Jei.hideIngredient(<item:minecraft:potion>.withTag({Potion: modid + "strong_" + type}));
        Jei.hideIngredient(<item:minecraft:potion>.withTag({Potion: modid + "long_" + type}));
    }

    # Hides all potions of a specific type in Jei, except its original base type
    # Preconditions: a mod_id:type potion exist
    # mod_id:type potions has both a long and strong version, which are formatted as mod_id:type_long
    public static hideGoodPotionBackMark(mod_id as string, type as string) as void {
        val modid = mod_id + ":";
        val potions = [
            <item:minecraft:tipped_arrow>,
            <item:minecraft:splash_potion>,
            <item:minecraft:lingering_potion>,
            <item:caverns_and_chasms:tether_potion>
        ];
        for potion in potions {
                Jei.hideIngredient(potion.withTag({Potion: modid  + type + "_strong"}));
                Jei.hideIngredient(potion.withTag({Potion: modid + type + "_long"}));
                Jei.hideIngredient(potion.withTag({Potion: modid + type}));   
        }

        Jei.hideIngredient(<item:minecraft:potion>.withTag({Potion: modid  + type+ "_strong"}));
        Jei.hideIngredient(<item:minecraft:potion>.withTag({Potion: modid + type + "_long"}));
    }

    # Hides all potions of a specific type in Jei, except its original base type
    # Preconditions: a mod_id:type potion exist, and must be an instantaneous effect like instnt health
    # mod_id:type potions has both a long and strong version, which are formatted as mod_id:type_long
    public static hideGoodInstaPotionBackMark(mod_id as string, type as string) as void {
        val modid = mod_id + ":";
        val potions = [
            <item:minecraft:tipped_arrow>,
            <item:minecraft:splash_potion>,
            <item:minecraft:lingering_potion>,
            <item:caverns_and_chasms:tether_potion>
        ];
        for potion in potions {
                Jei.hideIngredient(potion.withTag({Potion: modid  + type + "_strong"}));
                Jei.hideIngredient(potion.withTag({Potion: modid + type}));   
        }

        Jei.hideIngredient(<item:minecraft:potion>.withTag({Potion: modid  + type+ "_strong"}));
    }


}