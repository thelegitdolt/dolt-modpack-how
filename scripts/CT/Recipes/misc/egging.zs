#priority -200

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;
import crafttweaker.api.recipe.replacement.type.NotFilteringRule;

DebugUtil.startScript("recipes/misc/egging"); 

val egg = <item:minecraft:egg>;
val eggTag = <tag:items:forge:eggs>;

var include = [
    "brewinandchewin:quiche_from_mushroom",
    "farmersrespite:coffee_cake"
] as string[]; 

if (RUtil.DO_REPLACER == 1) {
    Replacer.create()
        .filter(NameFilteringRule.anyOf(include))
        .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, egg as IIngredient, eggTag as IIngredient)
        .execute();
}


DebugUtil.endScript("recipes/misc/egging"); 