#priority -200

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;
import crafttweaker.api.recipe.replacement.type.NotFilteringRule;

DebugUtil.startScript("recipes/misc/leather_scraps"); 

var leather = <item:minecraft:leather>;
var scrap = <item:dolt_mod_how:leather_scraps>;
var leatherTag = <tag:items:dolt_mod_how:leather>;


craftingTable.addShapeless("leather_scrap_combine", leather, [scrap, scrap]);


for i in ["helmet", "chestplate", "leggings", "boots"] {
    RUtil.cut.removeByName("farmersdelight:cutting/leather_" + i);
    RUtil.cut.addRecipe("leather_" + i + "_cutting_based", <item:minecraft:leather_${i}>, 
        [scrap], <toolaction:shears_harvest>);

}


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