DebugUtil.startScript("recipes/sob/big_soup_recrafting"); 
    

craftingTable.addShapeless("sculk_sushi_real", <item:sob:sculk_roll> * 2, [
    <item:minecraft:sculk_sensor>, <item:farmersdelight:cooked_rice>
]);
RUtil.cook.removeByName("sob:cooking/ink_soup");
RUtil.cook.addRecipe("ink_soup_good", <item:sob:ink_soup>, [
    <item:minecraft:sculk>, <item:minecraft:sculk>, <item:minecraft:ink_sac>, <tag:items:forge:raw_fishes>
], <constant:farmersdelight:cooking_pot_recipe_book_tab:meals>, <item:minecraft:bowl>, 1.0, 200);
DebugUtil.endScript("recipes/sob/big_soup_recrafting"); 