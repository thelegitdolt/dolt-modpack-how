# priority -200

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;
import crafttweaker.api.recipe.replacement.type.NotFilteringRule;
import mods.jeitweaker.Jei;


DebugUtil.startScript("recipes/suppies/candle_holder_stuff"); 


craftingTable.removeByName("supplementaries:candle_holders/candle_holder_soul"); 

craftingTable.addShaped("cupric_candle_holder_lol", <item:supplementaries:candle_holder_cupric>, [
    [<item:oreganized:lead_ingot>, <item:buzzier_bees:cupric_candle>, <item:oreganized:lead_ingot>],
    [<item:minecraft:air>, <item:oreganized:lead_ingot>, <item:minecraft:air>]
]); 

craftingTable.addShaped("soul_candle_holder_lol", <item:supplementaries:candle_holder_soul>, [
    [<item:oreganized:lead_ingot>, <item:buzzier_bees:soul_candle> | <item:netherexp:soul_candle>, <item:oreganized:lead_ingot>],
    [<item:minecraft:air>, <item:oreganized:lead_ingot>, <item:minecraft:air>]
]); 



if (RUtil.DO_REPLACER == 1) {
    Replacer.create()
        .filter(NameFilteringRule.regex("^supplementaries:candle_holder(_[a-z]+)?$"))
        .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:minecraft:iron_ingot>, <item:oreganized:lead_ingot>)
        .execute(); 

    Replacer.create()
        .filter(NameFilteringRule.regex("^supplementaries:candle_holders/candle_holder(_[a-z]+)?$"))
        .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:minecraft:iron_ingot>, <item:oreganized:lead_ingot>)
        .execute(); 
}



DebugUtil.endScript("recipes/suppies/candle_holder_stuff"); 