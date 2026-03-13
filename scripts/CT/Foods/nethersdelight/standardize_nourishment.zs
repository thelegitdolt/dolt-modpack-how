DebugUtil.startScript("foods/nethersdelight/standardize_nourishment"); 
    

import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;
import crafttweaker.api.entity.effect.MobEffect;
import crafttweaker.api.item.IItemStack;


noNourishment(<item:mynethersdelight:bleeding_tartar>);

threeMinNourishment(<item:mynethersdelight:sausage_and_potatoes>);
threeMinNourishment(<item:mynethersdelight:fried_hoglin_chop>);
threeMinNourishment(<item:mynethersdelight:plate_of_stuffed_hoglin>);
threeMinNourishment(<item:mynethersdelight:plate_of_striderloaf>);
threeMinNourishment(<item:mynethersdelight:plate_of_cold_striderloaf>);
threeMinNourishment(<item:mynethersdelight:scotch_eggs>);
threeMinNourishment(<item:mynethersdelight:giant_takoyaki>);
threeMinNourishment(<item:mynethersdelight:hotdog_with_mixed_salad>);
threeMinNourishment(<item:mynethersdelight:twisted_ghasta>);
threeMinNourishment(<item:mynethersdelight:hotdog_with_nether_salad>);
threeMinNourishment(<item:mynethersdelight:hotdog_with_mixed_salad>);
threeMinNourishment(<item:mynethersdelight:hotdog_with_nether_salad>);
threeMinNourishment(<item:mynethersdelight:chilidog>);

fiveMinNourishment(<item:mynethersdelight:breakfast_sampler>);
fiveMinNourishment(<item:mynethersdelight:spicy_curry>);


function noNourishment(a as IItemStack) as void {
    a.food = a.food.removeEffect(<mobeffect:farmersdelight:nourishment>);
}

function threeMinNourishment(a as IItemStack) as void {
    a.food = a.food.removeEffect(<mobeffect:farmersdelight:nourishment>)
    .addEffect(new MobEffectInstance(<mobeffect:farmersdelight:nourishment>, 3600), 1);
}

function oneMinNourishment(a as IItemStack) as void {
    a.food = a.food.removeEffect(<mobeffect:farmersdelight:nourishment>).addEffect(new MobEffectInstance(<mobeffect:farmersdelight:nourishment>, 1200), 1);
}

function fiveMinNourishment(a as IItemStack) as void {
    a.food = a.food.removeEffect(<mobeffect:farmersdelight:nourishment>).addEffect(new MobEffectInstance(<mobeffect:farmersdelight:nourishment>, 6000), 1);
}

DebugUtil.endScript("foods/nethersdelight/standardize_nourishment"); 