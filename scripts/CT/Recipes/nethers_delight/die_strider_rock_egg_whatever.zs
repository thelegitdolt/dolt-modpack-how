DebugUtil.startScript("recipes/nethers_delight/die_strider_rock_egg_whatever"); 

val egg = <tag:items:forge:eggs>;

RUtil.cook.removeByName("mynethersdelight:cooking/scotch_eggs");
RUtil.cook.addRecipe("cooking/scotch_eggs_good", <item:mynethersdelight:scotch_eggs>, [
    egg, egg, <item:mynethersdelight:hoglin_sausage>, <tag:items:forge:bread>
], <constant:farmersdelight:cooking_pot_recipe_book_tab:meals>, <item:minecraft:bowl>, 0.35, 200);

RUtil.cook.removeByName("mynethersdelight:cooking/egg_soup");
RUtil.cook.addRecipe("cooking/egg_soup_good", <item:mynethersdelight:egg_soup>, [
    egg, egg, egg, <tag:items:forge:vegetables>
], <constant:farmersdelight:cooking_pot_recipe_book_tab:meals>, <item:minecraft:bowl>, 0.35, 200);

DebugUtil.endScript("recipes/nethers_delight/die_strider_rock_egg_whatever"); 