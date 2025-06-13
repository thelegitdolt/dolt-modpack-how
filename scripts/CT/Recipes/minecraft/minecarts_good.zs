DebugUtil.startScript("/Recipes/minecraft/minecarts_good/"); 
    

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

function hi(name as string, cart as IItemStack, thing as IIngredient) as void{
    craftingTable.remove(cart);

    craftingTable.addShapeless(name, cart, [thing, <item:minecraft:minecart>]);
}

hi("hopper_cart_based", <item:minecraft:hopper_minecart>, <item:minecraft:hopper>);
hi("chest_cart_based", <item:minecraft:chest_minecart>, <tag:items:forge:chests/wooden>);
hi("furnace_cart_based", <item:minecraft:furnace_minecart>, <tag:items:forge:furnace/stone>);
hi("tnt_cart_based", <item:minecraft:tnt_minecart>, <item:minecraft:tnt>);
hi("dispener_cart_based", <item:supplementaries:dispenser_minecart>, <item:minecraft:dispenser>);
hi("jukebox_cart_based", <item:etched:jukebox_minecart>, <item:minecraft:jukebox>);




DebugUtil.endScript("/Recipes/minecraft/minecarts_good"); 