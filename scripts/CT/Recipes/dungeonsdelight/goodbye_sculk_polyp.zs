DebugUtil.startScript("recipes/dungeonsdelight/goodbye_meals_with_weird_fleshes"); 

#priority -200

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;
import crafttweaker.api.recipe.replacement.type.NotFilteringRule;

DebugUtil.startScript("recipes/misc/egging"); 

RUtil.cut.removeByName("farmersdelight:cutting/calibrated_sculk_sensor");
RUtil.cut.removeByName("farmersdelight:cutting/sculk_mayo_block");
RUtil.cut.removeByName("farmersdelight:cutting/sculk");

RUtil.twoByTwo("sculk_from_sculk_veins", <item:minecraft:sculk_vein>, <item:minecraft:sculk>);
RUtil.oneToOneConversion("sculk_to_sculk_veins", <item:minecraft:sculk>, <item:minecraft:sculk_vein>, 4);

val egg = <item:dungeonsdelight:sculk_polyp>;
val eggTag = <item:minecraft:sculk>;

RUtil.replaceAll(egg, eggTag, 
    "dungeonsdelight:embedded_eggs", "dungeonsdelight:sculk_tart" 
);


DebugUtil.endScript("recipes/misc/egging"); 