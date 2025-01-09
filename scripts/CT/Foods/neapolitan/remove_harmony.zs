DebugUtil.startScript("/Foods/neapolitan/remove_harmony.zs/"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;

val adzuki_foods = [
    "abnormals_delight:adzuki_cake_slice",
    "neapolitan:strawberry_bean_bonbons",
    "neapolitan:adzuki_curry",
    "neapolitan:adzuki_bun",
    "neapolitan:adzuki_milkshake",
    "neapolitan:adzuki_ice_cream",
    "neapolitan:roasted_adzuki_beans",
    "neapolitan:adzuki_stew"];

for adzuki in adzuki_foods {
    removeHarmonyFrom(adzuki);
}


function removeHarmonyFrom(item as string) as void {
    val item = <item:${item}>;
    item.food = item.food.removeEffect(<mobeffect:neapolitan:harmony>);
}




DebugUtil.endScript("/Foods/neapolitan/remove_harmony.zs"); 