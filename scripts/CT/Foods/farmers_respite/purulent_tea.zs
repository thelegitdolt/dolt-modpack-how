DebugUtil.startScript("/Foods/farmers_respite/purulent_tea.zs/"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;

val T = <item:farmersrespite:purulent_tea>;

T.food = T.food.removeEffect(<mobeffect:minecraft:weakness>);


DebugUtil.endScript("/Foods/farmers_respite/purulent_tea.zs"); 