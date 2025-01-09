DebugUtil.startScript("/Recipes/farmers_respite/blazing_chili.zs/"); 
    

var CP = <recipetype:farmersdelight:cooking>;

CP.removeByName("farmersrespite:cooking/blazing_chili");

<tag:items:crafttweaker:blazing_chili_meats>.add(<tag:items:forge:raw_beef>);
<tag:items:crafttweaker:blazing_chili_meats>.add(<tag:items:mynethersdelight:raw_hoglin>);

CP.addRecipe("cooking/blazing_chili_cool", <item:farmersrespite:blazing_chili>,
    [<item:minecraft:blaze_powder>, <item:minecraft:nether_wart>, <item:farmersrespite:coffee_beans>, <tag:items:crafttweaker:blazing_chili_meats>], 
    <constant:farmersdelight:cooking_pot_recipe_book_tab:meals>, <item:minecraft:bowl>,
    4, 200);


DebugUtil.endScript("/Recipes/farmers_respite/blazing_chili.zs"); 