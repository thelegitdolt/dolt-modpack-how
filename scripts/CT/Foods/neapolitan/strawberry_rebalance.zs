DebugUtil.startScript("/Foods/neapolitan/strawbery_rebalance/"); 
    
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;

setThingStrawb(<item:neapolitan:strawberries>, 1);
setThingStrawb(<item:neapolitan:chocolate_strawberries>, 2);
setThingStrawb(<item:neapolitan:white_strawberries>, 2);
setThingStrawb(<item:neapolitan:strawberry_scones>, 3);
setThingStrawb(<item:neapolitan:strawberry_ice_cream>, 2);
setThingStrawb(<item:neapolitan:strawberry_banana_smoothie>, 1);
setThingStrawb(<item:neapolitan:strawberry_bean_bonbons>, 2);

function setThingStrawb(item as IItemStack, newThing as int) as void {
    item.food = item.food.setNutrition(newThing);
}




DebugUtil.endScript("/Foods/neapolitan/strawberry_rebalance"); 