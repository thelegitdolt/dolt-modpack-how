DebugUtil.startScript("/Foods/farmers_respite/meals.zs/"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;

val S = <item:farmersrespite:tea_curry>;
val L = <item:farmersrespite:blazing_chili>;

L.food = L.food.addEffect(new MobEffectInstance (<mobeffect:farmersdelight:nourishment>, 3600, 0), 1);
S.food = S.food.addEffect(new MobEffectInstance (<mobeffect:farmersdelight:nourishment>, 3600, 0), 1);


DebugUtil.endScript("/Foods/farmers_respite/meals.zs"); 