DebugUtil.startScript("recipes/farmers_delight/meals_with_cooking_pots"); 
    

RUtil.cook.addRecipe("clam_chowder_cooked", <item:spawn:clam_chowder>, [
    <item:spawn:clam_meat>, <item:minecraft:potato>, <item:farmersdelight:onion>], 
    <constant:farmersdelight:cooking_pot_recipe_book_tab:meals>,
    <item:minecraft:bowl>, 1.0, 200);

craftingTable.removeByName("alexscaves:seething_stew");
craftingTable.removeByName("dungeonsdelight:poi");
craftingTable.removeByName("alexscaves:vesper_stew");

RUtil.cook.addRecipe("vesper_stew_cooked", <item:alexscaves:vesper_stew>, [
    <item:alexscaves:vesper_wing>, <item:alexscaves:thornwood_branch>, <item:minecraft:brown_mushroom>], 
    <constant:farmersdelight:cooking_pot_recipe_book_tab:meals>,
    <item:minecraft:bowl>, 1.0, 200);

val all_weird_things = [
    "abnormals_delight:neapolitan/adzuki_curry",
    "minecraft:rabbit_stew_from_brown_mushroom",
    "minecraft:rabbit_stew_from_red_mushroom",
    "minecraft:mushroom_stew",
    "minecraft:beetroot_soup",
    "spawn:clam_chowder",
    "incubation:scrambled_eggs"
];

for thing in all_weird_things {
    craftingTable.removeByName(thing);
}


DebugUtil.endScript("recipes/farmers_delight/meals_with_cooking_pots"); 