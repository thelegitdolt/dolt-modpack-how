DebugUtil.startScript("recipes/create/ladders_not_stonecutter"); 

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.resource.ResourceLocation;

function ladder_real(ladder as IItemStack, ingot as IItemStack, nugget as IItemStack, count as int = 6) as void  {
    stoneCutter.remove(ladder);
    craftingTable.remove(ladder);

    craftingTable.addShaped(ladder.registryName.getPath() + "_based", ladder * count, [
        [nugget, RUtil.air, nugget], 
        [nugget, ingot, nugget], 
        [nugget, RUtil.air, nugget]
    ]); 
}

function ladder(type as string) as void  {
    val ladder = <item:create:${type}_ladder>;

    val ingot = <item:create:${type}_ingot>; 
    val nugget = <item:create:${type}_nugget>; 

    ladder_real(ladder, ingot, nugget); 
}


ladder("brass");
ladder_real(<item:create:copper_ladder>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, 12);
ladder_real(<item:create:andesite_ladder>, <item:minecraft:iron_ingot>, <item:minecraft:iron_nugget>);

DebugUtil.endScript("recipes/create/ladders_not_stonecutter"); 