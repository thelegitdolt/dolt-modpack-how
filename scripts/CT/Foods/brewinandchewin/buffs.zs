DebugUtil.startScript("foods/brewinandchewin/buffs"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;
import crafttweaker.api.entity.effect.MobEffect;
import crafttweaker.api.item.IItemStack;


<item:brewinandchewin:pizza_slice>.food = <item:brewinandchewin:pizza_slice>.food.setNutrition(5);
<item:brewinandchewin:ham_and_cheese_sandwich>.food = <item:brewinandchewin:ham_and_cheese_sandwich>.food.setNutrition(12);
sevenLol(<item:brewinandchewin:horror_lasagna>);

function sevenLol(a as IItemStack) as void {
    a.food = a.food.setNutrition(14);
}

DebugUtil.endScript("foods/brewinandchewin/buffs"); 