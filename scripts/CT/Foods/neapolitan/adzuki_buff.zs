DebugUtil.startScript("/Foods/neapolitan/adzuki_buff.zs/"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;

val curry = <item:neapolitan:adzuki_curry>;
curry.food = curry.food.setNutrition(10).addEffect(new MobEffectInstance(<mobeffect:farmersdelight:comfort>, 1800, 0), 1);

val stew = <item:neapolitan:adzuki_stew>;
stew.food = stew.food.setNutrition(14).addEffect(new MobEffectInstance(<mobeffect:farmersdelight:comfort>, 3600, 0), 1);

val bun = <item:neapolitan:adzuki_bun>;
bun.food = bun.food.setNutrition(6).setSaturationModifier(0.6f);



DebugUtil.endScript("/Foods/neapolitan/adzuki_buff.zs"); 