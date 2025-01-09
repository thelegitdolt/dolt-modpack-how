#priority -200

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;
import crafttweaker.api.recipe.replacement.type.NotFilteringRule;

DebugUtil.startScript("recipes/misc/leather_scraps"); 

var leather = <item:minecraft:leather>;
var leatherTag = <tag:items:dolt_mod_how:leather>;

var exclude = [
    "quark:building/crafting/compressed/bonded_leather",
    "dolt_mod_how:cutting/leather_scrap"
] as string[]; 

if (RUtil.DO_REPLACER == 1) {
    Replacer.create()
        .filter(NotFilteringRule.of(NameFilteringRule.anyOf(exclude)))
        .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, leather as IIngredient, leatherTag as IIngredient)
        .execute();
}


DebugUtil.endScript("recipes/misc/leather_scraps"); 