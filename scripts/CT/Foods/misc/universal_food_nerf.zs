#priority 1000

DebugUtil.startScript("/Foods/misc/universal_food_nerf"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;

# extremely readable code omg!!
val numbers = [1, 1, 1, 2, 3, 4, 5, 6, 8, 10, 11, 12, 13];
for item in game.items {
    if item.food != null {
        val nut = item.food.getNutrition();
        if (nut > 0 && nut < 14) {
            val newNutValue = numbers[nut - 1];
            item.food = item.food.setNutrition(newNutValue);
        }
    }
}


DebugUtil.endScript("/Foods/misc/universal_food_nerf"); 
