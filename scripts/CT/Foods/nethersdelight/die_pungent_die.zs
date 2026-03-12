DebugUtil.startScript("foods/nethersdelight/die_pungent_die"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;
import crafttweaker.api.game.Game;
import crafttweaker.api.entity.effect.MobEffect;
import crafttweaker.api.util.Pair;


for item in game.items {
    var food = item.food;
    
    if food != null {
        food = food.removeEffect(<mobeffect:mynethersdelight:b_pungent>);
        food = food.removeEffect(<mobeffect:mynethersdelight:g_pungent>);
        item.food = food;
    }    
}

DebugUtil.endScript("foods/nethersdelight/die_pungent_die"); 