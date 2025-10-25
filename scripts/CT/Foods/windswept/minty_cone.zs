DebugUtil.startScript("foods/windswept/minty_cone"); 
    
import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;

val a = FoodProperties.create(15, 0.6).addEffect(new MobEffectInstance(<mobeffect:neapolitan:berserking>, 300), 1.0f);

<item:windswept:minty_snow_cone>.food = a; 




DebugUtil.endScript("foods/windswept/minty_cone"); 