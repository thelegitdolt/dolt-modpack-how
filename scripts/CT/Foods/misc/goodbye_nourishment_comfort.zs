#priority -100

DebugUtil.startScript("foods/dungeonsdelight/goodbye_nourishment_comfort"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;
import crafttweaker.api.game.Game;
import crafttweaker.api.entity.effect.MobEffect;
import crafttweaker.api.util.Pair;


for item in game.items {
    var food = item.food;
    if food != null {
        var effects = food.effects;
        for pair in effects {
            val instance = pair.getFirst();
            val effect = instance.effect;
            if effect == <mobeffect:farmersdelight:comfort> {
                food = food.removeEffect(effect);
            }
            if effect == <mobeffect:farmersdelight:nourishment> {
                food = food.removeEffect(effect);
            }
        }
        item.food = food;
    }    
}

DebugUtil.endScript("foods/dungeonsdelight/goodbye_nourishment_comfort"); 