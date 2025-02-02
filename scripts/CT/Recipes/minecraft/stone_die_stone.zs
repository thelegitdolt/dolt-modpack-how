#priority -200

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;
import crafttweaker.api.recipe.replacement.type.NotFilteringRule;

DebugUtil.startScript("recipes/minecraft/stone_is_stupid_in_crafting_recipes"); 
    
var stone = <tag:items:minecraft:stone_crafting_materials>; 
var cringeStone = <item:minecraft:stone>; 


var include = [
    "minecraft:stonecutter",
    "minecraft:repeater",
    "minecraft:comparator",
    "create:crafting/logistics/pulse_repeater",
    "create:crafting/logistics/pulse_extender",
    "create:crafting/logistics/powered_latch",
    "create:crafting/logistics/powered_toggle_latch",
    "supplementaries:crank"
] as string[]; 

if (RUtil.DO_REPLACER == 1) {
    Replacer.create()
        .filter(NameFilteringRule.anyOf(include))
        .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, cringeStone as IIngredient, stone as IIngredient)
        .execute(); 
}



DebugUtil.endScript("recipes/minecraft/stone_is_stupid_in_crafting_recipes"); 