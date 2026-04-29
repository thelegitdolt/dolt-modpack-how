DebugUtil.startScript("recipes/minecraft/tnt_lol"); 
    

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

val sand = <tag:items:forge:sand>;
val gravel = <tag:items:forge:gravel>;


val pow = <item:minecraft:gunpowder>;
val spore = <item:savage_and_ravage:creeper_spores>;
craftingTable.removeByName("blasted_barrens:tnt");
craftingTable.removeByName("spawn:tnt_from_blasted_sand");

doTntLol("spore_bomb_based", <item:savage_and_ravage:spore_bomb>, sand, spore);
doTntLol("tnt_based", <item:minecraft:tnt>, sand, pow);
doTntLol("tnt_very_based", <item:minecraft:tnt> * 2, <item:blasted_barrens:ashen_sand>, pow, false);
doTntLol("thc_based", <item:nirvana:thc>, <item:nirvana:weed>, pow);
doTntLol("shrapnel_based", <item:oreganized:shrapnel_bomb>, <item:oreganized:lead_nugget>, pow);

function doTntLol(name as string, output as IItemStack, spice as IIngredient, gunp as IIngredient, remove as bool = true) as void {
   if (remove) {
      craftingTable.removeByName(output.registryName);
   }
   
   craftingTable.addShaped(name, output, [
      [gunp, spice],
      [spice, gunp]
   ]);
}

DebugUtil.endScript("recipes/minecraft/tnt_lol"); 