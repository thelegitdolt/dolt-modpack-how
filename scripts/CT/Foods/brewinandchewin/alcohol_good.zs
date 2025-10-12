DebugUtil.startScript("foods/brewinandchewin/alcohol_good"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;
import crafttweaker.api.game.Game;
import crafttweaker.api.entity.effect.MobEffect;
import crafttweaker.api.util.Pair;


for item in game.items {
    if item in <tag:items:brewinandchewin:fermented_drinks> {
        var food = item.food;
        var effects = food.effects;
        for pair in effects {
            val instance = pair.getFirst();
            val effect = instance.effect;
            if effect.beneficial {
                val duration = instance.duration; 
                food = food.removeEffect(effect)
                    .addEffect(new MobEffectInstance(effect, duration * 3), 1);
            }
        }
        item.food = food; 
    }
}

DebugUtil.endScript("foods/brewinandchewin/alcohol_good"); 