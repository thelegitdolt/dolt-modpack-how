DebugUtil.startScript("recipes/minecraft/sand_is_good"); 
    

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

val sand = <tag:items:forge:sand>;
val gravel = <tag:items:forge:gravel>;

for color in RUtil.colors {
    craftingTable.removeByName("minecraft:"  + color + "_concrete_powder");

    val powder = <item:minecraft:${color + "_concrete_powder"}>;
    val dye = <item:minecraft:${color + "_dye"}>;
    craftingTable.addShapeless(color + "_concrete_powder_based", powder * 8, [dye, sand, sand, sand, sand, gravel, gravel, gravel, gravel]);
}

for color in RUtil.dyeDepotColors {
    craftingTable.removeByName("dye_depot:"  + color + "_concrete_powder");

    val powder = <item:dye_depot:${color + "_concrete_powder"}>;
    val dye = <item:dye_depot:${color + "_dye"}>;
    craftingTable.addShapeless(color + "_concrete_powder_based", powder * 8, [dye, sand, sand, sand, sand, gravel, gravel, gravel, gravel]);
}


craftingTable.removeByName("clayworks:concrete_powder");
craftingTable.addShapeless("concrete_powder_based", <item:clayworks:concrete_powder> * 8, [sand, sand, sand, sand, gravel, gravel, gravel, gravel]);


DebugUtil.endScript("recipes/minecraft/sand_is_good"); 