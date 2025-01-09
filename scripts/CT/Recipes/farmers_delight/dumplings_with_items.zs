DebugUtil.startScript("/Recipes/farmers_delight/dumplings_with_items.zs/"); 
    

import crafttweaker.api.tag.manager.ITagManager;

RUtil.cook.removeByName("farmersdelight:cooking/dumplings");

val tags_to_add = [
    "forge:raw_chicken", "forge:raw_beef", "forge:raw_venison", "forge:raw_pork", "forge:raw_duck"
] as string[];
val normals = [
    "minecraft:brown_mushroom"
] as string[];

for real_tag in tags_to_add {
    val tagReal = <tagmanager:items>.tag(<resource:${real_tag}>);
    <tag:items:crafttweaker:dumpling_ingredients>.add(tagReal);
}

for normal in normals {
    <tag:items:crafttweaker:dumpling_ingredients>.add(<item:${normal}>);
}

RUtil.cook.addRecipe("cooking/dumplings_based", <item:farmersdelight:dumplings> * 2, 
[<item:farmersdelight:wheat_dough>, <tag:items:forge:salad_ingredients>, <item:farmersdelight:onion>, <tag:items:crafttweaker:dumpling_ingredients>],  <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, 
 <item:minecraft:air>, 1, 200);
RUtil.cook.addRecipe("cooking/dumplings_based_with_turkeys", <item:farmersdelight:dumplings> * 2, 
[<item:farmersdelight:wheat_dough>, <tag:items:forge:salad_ingredients>, <item:farmersdelight:onion>, <item:autumnity:turkey_piece>, <item:autumnity:turkey_piece>],  <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, 
 <item:minecraft:air>, 1, 200);
 



DebugUtil.endScript("/Recipes/farmers_delight/dumplings_with_items.zs"); 