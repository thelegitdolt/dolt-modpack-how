DebugUtil.startScript("foods/dungeonsdelight/voracity_tenacity_particleless"); 
    

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
            if effect == <mobeffect:dungeonsdelight:voracity> || effect == <mobeffect:dungeonsdelight:tenacity> {
                var visibleEffect = false; 
                food = food.removeEffect(effect)
                    .addEffect(new MobEffectInstance(effect, instance.duration, instance.amplifier, instance.ambient, visibleEffect, instance.showIcon), 1);
            }
        }
        item.food = food;
    }    
}

DebugUtil.endScript("foods/dungeonsdelight/voracity_tenacity_particleless"); 