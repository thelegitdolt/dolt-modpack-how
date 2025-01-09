DebugUtil.startScript("/Foods/misc/fast_eat.zs/"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;


var fastEats = [
    "incubation:fried_egg",
    "upgrade_aquatic:boiled_pickerelweed",
    "farmersdelight:pumpkin_slice",
    "atmospheric:passion_fruit_tart",
    "alexscaves:pine_nuts",
    "atmospheric:aloe_leaves",
    "farmersdelight:barbecue_stick",
    "neapolitan:strawberry_scones",
    "neapolitan:dried_vanilla_pods",
    "neapolitan:vanilla_fudge",
    "neapolitan:banana_bread",
    "neapolitan:mint_candies",
    "neapolitan:mint_chocolate",
    "neapolitan:strawberry_bean_bonbons",
    "neapolitan:chocolate_strawberries",
    "neapolitan:vanilla_chocolate_fingers",
    "neapolitan:dried_banana",
    "neapolitan:chocolate_spider_eye",
    "upgrade_aquatic:mulberry",
    "abnormals_delight:escargot",
    "abnormals_delight:maple_glazed_bacon",
    "minecraft:melon_slice",
    "minecraft:glow_berries",
    "minecraft:sweet_berries",
    "atmospheric:currant",
    "atmospheric:currant_muffin"
 ] as string[];



for fastEat in fastEats {
    var itemed = <item:${fastEat}>;
    itemed.food = itemed.food.setIsFastFood(true);
}




DebugUtil.endScript("/Foods/misc/fast_eat.zs"); 