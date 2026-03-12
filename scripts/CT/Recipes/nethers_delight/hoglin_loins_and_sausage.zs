DebugUtil.startScript("recipes/nethers_delight/hoglin_loins_and_sausage"); 

<recipetype:create:milling>.addRecipe("sausage_yeah", 
    [<item:mynethersdelight:hoglin_sausage>  * 2, <item:mynethersdelight:hoglin_sausage> % 50, <item:minecraft:bone_meal> % 25.0], 
    <item:environmental:venison> |
    <item:minecraft:chicken> |
    <item:minecraft:beef> |
    <item:minecraft:porkchop> |
    <item:minecraft:mutton> |
    <item:environmental:duck> |
    <item:minecraft:rabbit> |
    <item:autumnity:turkey> |
    <item:dungeonsdelight:sniffer_shank>, 150);

craftingTable.removeByName("mynethersdelight:crafting/nether_burger");

craftingTable.addShapeless("nether_burger_but_good", <item:mynethersdelight:nether_burger> * 2, [
    <tag:items:forge:bread>, <item:netherexp:cooked_hogham>, 
    <item:minecraft:twisting_vines>, <item:minecraft:crimson_fungus>, 
    <item:minecraft:warped_fungus> | <item:minecraft:crimson_fungus>]);

<recipetype:farmersdelight:cooking>.removeByName("mynethersdelight:cooking/fried_hoglin_chop");
<recipetype:farmersdelight:cooking>.addRecipe("cooking/fried_hoglin_chop_good", 
<item:mynethersdelight:fried_hoglin_chop> * 2, [
    <item:netherexp:hogham>, <tag:items:forge:bread>,
     <tag:items:forge:milk>, <tag:items:forge:eggs>, 
     <item:mynethersdelight:bullet_pepper>], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:minecraft:bowl>, 1.0, 200);




DebugUtil.endScript("recipes/nethers_delight/hoglin_loins_and_sausage"); 