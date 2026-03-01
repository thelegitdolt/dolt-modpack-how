# priority -200

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;
import crafttweaker.api.recipe.replacement.type.NotFilteringRule;
import mods.jeitweaker.Jei;


DebugUtil.startScript("recipes/suppies/candle_holder_stuff"); 



craftingTable.addShaped("ender_candle_holder_lol", <item:supplementaries:candle_holder_ender>, [
    [<item:buzzier_bees:ender_candle>],[RUtil.air]
    
]); 






DebugUtil.endScript("recipes/suppies/candle_holder_stuff"); 