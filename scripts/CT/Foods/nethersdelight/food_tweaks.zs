DebugUtil.startScript("foods/nethersdelight/food_tweaks"); 
    
import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;
import crafttweaker.api.entity.effect.MobEffect;
import crafttweaker.api.item.IItemStack;

seven(<item:mynethersdelight:spicy_noodle_soup>);
seven(<item:mynethersdelight:spicy_curry>);

change(<item:mynethersdelight:plate_of_ghasta_with_cream>, 12);
change(<item:mynethersdelight:plate_of_cold_striderloaf>, 12);
change(<item:mynethersdelight:plate_of_striderloaf>, 12);
change(<item:mynethersdelight:chilidog>, 12);

change(<item:mynethersdelight:crimson_stroganoff>, 12);

<item:mynethersdelight:plate_of_striderloaf>.food = <item:mynethersdelight:plate_of_striderloaf>.food.addEffect(new MobEffectInstance(<mobeffect:minecraft:fire_resistance>, 600), 1);

function seven(a as IItemStack) as void {
    a.food = a.food.setNutrition(14);
}

function change(a as IItemStack, i as int) as void {
    a.food = a.food.setNutrition(i);
}

DebugUtil.endScript("foods/nethersdelight/food_tweaks"); 