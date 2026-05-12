DebugUtil.startScript("foods/brewinandchewin/kill_intoxikate"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;
import crafttweaker.api.entity.effect.MobEffect;
import crafttweaker.api.item.IItemStack;

for item in game.items {
    var food = item.food;
    if food != null {
        var effects = food.effects;
        for pair in effects {
            food = food.removeEffect(<mobeffect:brewinandchewin:intoxication>);
        }
        item.food = food;
    }    
}

DebugUtil.endScript("foods/brewinandchewin/kill_intoxikate"); 