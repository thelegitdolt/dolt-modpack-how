DebugUtil.startScript("recipes/nethers_delight/ghasta_changes"); 

val gh = <tag:items:dungeonsdelight:raw_ghast>;
val veg = <tag:items:forge:vegetables>;

craftingTable.removeByName("mynethersdelight:crafting/ghasta_with_cream");

craftingTable.addShaped("ghasta_with_cream", <item:mynethersdelight:ghasta_with_cream>, [
    [gh, veg, gh],
    [<item:minecraft:magma_cream>, <item:minecraft:ghast_tear>, <item:minecraft:magma_cream>],
    [gh, <item:minecraft:bowl>, gh]
]);

RUtil.cook.removeByName("mynethersdelight:cooking/giant_tentacles");
RUtil.cook.addRecipe("sex_balls", <item:mynethersdelight:giant_takoyaki>,
    [gh, gh, <tag:items:forge:salad_ingredients>, <tag:items:forge:dough>, <tag:items:mynethersdelight:hot_spice>], 
    <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:minecraft:bowl>,
    0.35, 200);

DebugUtil.endScript("recipes/nethers_delight/ghasta_changes"); 