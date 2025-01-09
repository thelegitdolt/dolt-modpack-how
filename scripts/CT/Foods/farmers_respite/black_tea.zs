DebugUtil.startScript("/Foods/farmers_respite/black_tea.zs/"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;

val S = <item:farmersrespite:strong_black_tea>;
val L = <item:farmersrespite:long_black_tea>;
val N = <item:farmersrespite:black_tea>;

N.food = black_tea.getTea(0, 200);
L.food = black_tea.getTea(0, 300);
S.food = black_tea.getTea(1, 150);



public class black_tea {
    public static getTea(amp as int, duration as int) as FoodProperties {
        return FoodProperties.create(0, 0).setCanAlwaysEat(true).addEffect(new MobEffectInstance(<mobeffect:minecraft:poison>, duration, amp), 1)
        .addEffect(new MobEffectInstance(<mobeffect:farmersrespite:caffeinated>, duration * 6, amp), 1);
    }
}


DebugUtil.endScript("/Foods/farmers_respite/black_tea.zs"); 