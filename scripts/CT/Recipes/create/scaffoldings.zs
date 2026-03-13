DebugUtil.startScript("recipes/create/scaffoldings"); 

import crafttweaker.api.ingredient.IIngredient;

doScaffolding(<tag:items:forge:ingots/copper>, "create:copper_scaffolding");
doScaffolding(<item:create:brass_ingot>, "create:brass_scaffolding");
doScaffolding(<item:create:andesite_alloy>, "create:andesite_scaffolding");

for i in ["create:brass_scaffolding_from_ingots_brass_stonecutting", "create:andesite_scaffolding_from_andesite_alloy_stonecutting", "create:copper_scaffolding_from_ingots_copper_stonecutting"] {
    stoneCutter.removeByName(i);
}

function doScaffolding(a as IIngredient, scaf as string) as void {
    val fold = <item:${scaf}>;

    craftingTable.addShaped(RUtil.split(scaf)[1] + "_based", fold * 6, [
        [a, <tag:items:minecraft:planks>, a],
        [a, RUtil.air, a],
        [a, RUtil.air, a]
    ]);
}

DebugUtil.endScript("recipes/create/scaffoldings"); 
