DebugUtil.startScript("foods/jne/hogham_and_lightspores"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;


<item:netherexp:cooked_hogham>.food = <item:netherexp:hogham>.food.setNutrition(12);

val food = FoodProperties.create(2, 1).setIsFastFood(true)
    .addEffect(new MobEffectInstance(<mobeffect:minecraft:poison>, 50), 0.05f)
    .addEffect(new MobEffectInstance(<mobeffect:minecraft:glowing>, 100), 0.5f);

<item:netherexp:lightspores>.food = food; 
<item:netherexp:nightspores>.food = food; 

DebugUtil.endScript("foods/jne/hogham_and_lightspores"); 