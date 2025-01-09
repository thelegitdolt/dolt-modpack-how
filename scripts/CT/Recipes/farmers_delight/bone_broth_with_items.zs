DebugUtil.startScript("roseecipes/farmers_delight/bone_broth_with_items"); 
    

RUtil.cook.removeByName("farmersdelight:cooking/bone_broth");

val broths = [
    "minecraft:red_mushroom", "minecraft:brown_mushroom", "minecraft:hanging_roots",  "minecraft:glow_lichen", "minecraft:glow_berries",
    "quark:glow_shroom", "quark:glow_lichen_growth", "sullysmod:lanternfish"
] as string[];

for broth in broths {
    <tag:items:crafttweaker:bone_broth_ingredients>.add(<item:${broth}>);
}


RUtil.cook.addRecipe("cooking/bone_broth_based", <item:farmersdelight:bone_broth>, 
[<item:minecraft:bone>, <tag:items:crafttweaker:bone_broth_ingredients>],  <constant:farmersdelight:cooking_pot_recipe_book_tab:meals>, 
 <item:minecraft:bowl>, 1, 200);



DebugUtil.endScript("recipes/farmers_delight/bone_broth_with_items"); 