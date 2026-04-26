DebugUtil.startScript("/Recipes/misc/pressure_plate/"); 
    
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.type.CraftingRecipe;

var thing = WoodGroup.create()
    .add("planks", "%s_planks")
    .add("plate", "%s_pressure_plate");
var pair = thing.build(); 
for i in 0 .. thing.length() {
    val p = pair["planks"][i];
    val pp = pair["plate"][i];

    if pp.getNamespace() == "sullysmod" {
        craftingTable.removeByName("sullysmod:crafting/" + pp.getPath());
    }
    else {
        craftingTable.removeByName(pp);
    }
    
    
    val pressureplate = <item:${pp}>;
    val planks = <item:${p}>;

    craftingTable.addShaped(RUtil.getRecipeString(pp) + "_based", pressureplate, [
        [planks, planks, planks]
    ]);
}

val a = [
    "minecraft:stone_pressure_plate", 
    "minecraft:heavy_weighted_pressure_plate",
    "minecraft:light_weighted_pressure_plate", 
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
craftingTable.removeByName("caverns_and_chasms:medium_weighted_pressure_plate");
RUtil.withPattern("med_wei_pre_pla", 
                <item:caverns_and_chasms:medium_weighted_pressure_plate>, 
                <item:caverns_and_chasms:silver_ingot>, 
                        (b) => [[b, b, b]]);
DebugUtil.endScript("/Recipes/misc/pressure_plate"); 