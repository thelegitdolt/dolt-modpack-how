DebugUtil.startScript("foods/misc/crab_nerf"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;


var itemed = <item:quark:cooked_crab_leg>;
itemed.food = itemed.food.setNutrition(4);



DebugUtil.endScript("foods/misc/crab_nerf"); 