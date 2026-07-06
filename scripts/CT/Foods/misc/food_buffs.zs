#priority -100

DebugUtil.startScript("foods/dungeonsdelight/food_buffs"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;
import crafttweaker.api.game.Game;
import crafttweaker.api.entity.effect.MobEffect;
import crafttweaker.api.util.Pair;

function makeOneBuff(item as string) as void {
    <item:${item}>.food = <item:${item}>.food.setNutrition(2);
}

val a = [
    "spawn:cooked_clam",

    "farmersdelight:cooked_cod_slice",
    "farmersdelight:cooked_salmon_slice",
    "abnormals_delight:cooked_venison_shanks",
    "farmersdelight:cooked_chicken_cuts",
    "abnormals_delight:cooked_perch_slice",
    "farmersdelight:cooked_mutton_chops",
    "spawn:cooked_bluefish_slice",
    "spawn:cooked_herring_slice",
    "alexscaves:cooked_lanternfish"
];

DebugUtil.endScript("foods/dungeonsdelight/food_buffs"); 