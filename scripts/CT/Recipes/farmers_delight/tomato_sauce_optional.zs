DebugUtil.startScript("/Recipes/farmers_delight/tomato_sauce_optional.zs/"); 
    

var CP = <recipetype:farmersdelight:cooking>;

CP.addRecipe("cooking/tomato_sauce_from_onion", <item:farmersdelight:tomato_sauce> * 2,
    [<item:farmersdelight:tomato>, <item:farmersdelight:tomato>, <item:farmersdelight:onion>], 
    <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:minecraft:bowl>,
    0.35, 300);


DebugUtil.endScript("/Recipes/farmers_delight/tomato_sauce_optional.zs"); 