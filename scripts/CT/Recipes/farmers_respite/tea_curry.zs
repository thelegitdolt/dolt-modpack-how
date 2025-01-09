DebugUtil.startScript("/Recipes/farmers_respite/tea_curry.zs/"); 
    

var CP = <recipetype:farmersdelight:cooking>;

CP.removeByName("farmersrespite:cooking/tea_curry");

<tag:items:crafttweaker:blazing_chili_meats>.add(<tag:items:forge:raw_beef>);

CP.addRecipe("cooking/tea_curry_cool", <item:farmersrespite:tea_curry>,
    [<item:farmersrespite:yellow_tea_leaves>, <tag:items:forge:raw_chicken>, <tag:items:forge:salad_ingredients>, <item:farmersdelight:rice>], <constant:farmersdelight:cooking_pot_recipe_book_tab:meals>, <item:minecraft:bowl>,
    4, 200);


DebugUtil.endScript("/Recipes/farmers_respite/tea_curry.zs"); 