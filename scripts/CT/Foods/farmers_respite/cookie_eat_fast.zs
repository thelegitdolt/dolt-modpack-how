DebugUtil.startScript("/Foods/farmers_respite/cookie_eat_fast.zs/"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;

val N = <item:farmersrespite:green_tea_cookie>;

N.food = N.food.setIsFastFood(true).removeEffect(<mobeffect:minecraft:haste>);


DebugUtil.endScript("/Foods/farmers_respite/cookie_eat_fast.zs"); 