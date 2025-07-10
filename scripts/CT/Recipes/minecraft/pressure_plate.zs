DebugUtil.startScript("/Recipes/minecraft/pressure_plate/"); 
    
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.type.CraftingRecipe;

for i, p in WoodUtil.asPair(
    WoodList.create("minecraft", str => str + "_pressure_plate").moddedOriginal().filter("rotten").build(), 
    WoodList.create("minecraft", str => str + "_planks").moddedOriginal().filter("rotten").build()) {
    craftingTable.removeByName(i);
    val pressureplate = <item:${i}>;
    val planks = <item:${p}>;

    craftingTable.addShaped(pressureplate.registryName.getPath() + "_based", pressureplate, [
        [planks, planks, planks]
    ]);
}

val a = [
    "minecraft:stone_pressure_plate",
    "minecraft:heavy_weighted_pressure_plate",
    "minecraft:light_weighted_pressure_plate",
    "caverns_and_chasms:medium_weighted_pressure_plate",  
    "minecraft:polished_blackstone_pressure_plate",
    "caverns_and_chasms:hold_plate"
];

for i in a {
    changePressurePlateRecipe(i);
}

function changePressurePlateRecipe(things as string) as void {
    val recipe = craftingTable.getRecipeByName(things) as Recipe<Container>;

    val material = RUtil.getSingleItemIngredient(recipe.ingredients[0]);
    val result = recipe.resultItem;

    craftingTable.removeByName(things);
    craftingTable.addShaped(result.registryName.toString().replace(":", "_") + "_based", result, [
        [material, material, material]
    ]);
}


DebugUtil.endScript("/Recipes/minecraft/pressure_plate"); 