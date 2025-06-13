DebugUtil.startScript("recipes/create/horse_armor_crush"); 

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

<recipetype:create:crushing>.addRecipe("crushing/silver_horse_armor", [<item:caverns_and_chasms:silver_ingot> * 2 % 100.0, <item:dolt_mod_how:leather_scraps> % 50.0, 
    <item:caverns_and_chasms:silver_ingot> % 50.0, <item:minecraft:string> * 2 % 25.0, <item:caverns_and_chasms:silver_nugget> * 2 % 25.0], 
    <item:caverns_and_chasms:silver_horse_armor>, 200);

<recipetype:create:crushing>.addRecipe("crushing/jade_horse_armor", [<item:sullysmod:jade> * 4 % 100.0, 
    <item:dolt_mod_how:leather_scraps> % 50.0, <item:minecraft:diamond> % 50.0, <item:minecraft:string> * 2 % 25.0, 
    <item:sullysmod:jade> * 2 % 25.0], <item:sullysmod:jade_horse_armor>, 200);



addHorseArmorRecipe(<item:minecraft:iron_horse_armor>, <item:minecraft:iron_ingot>, <item:minecraft:iron_nugget>);
addHorseArmorRecipe(<item:minecraft:golden_horse_armor>, <item:minecraft:gold_ingot>, <item:minecraft:gold_nugget>);
addHorseArmorRecipeNoNugget(<item:minecraft:diamond_horse_armor>, <item:minecraft:diamond>);


<recipetype:create:crushing>.removeByName("create:crushing/leather_horse_armor");

function addHorseArmorRecipe(armor as IItemStack, material as IItemStack, nugget as IItemStack) as void {
    val name = armor.registryName.getPath(); 
    
    <recipetype:create:crushing>.removeByName("create:crushing/" + name);
    <recipetype:create:crushing>.addRecipe("crushing/" + name, [material * 2 % 100.0, 
        <item:dolt_mod_how:leather_scraps> % 50.0, material % 50.0, <item:minecraft:string> *  2 % 25.0,  nugget * 2 % 25.0], armor);
}

function addHorseArmorRecipeNoNugget(armor as IItemStack, material as IItemStack) as void {
    val name = armor.registryName.getPath(); 

    <recipetype:create:crushing>.removeByName("create:crushing/" + name);
    <recipetype:create:crushing>.addRecipe("crushing/" + name, [material * 2 % 100.0, 
        <item:dolt_mod_how:leather_scraps> % 50.0, material % 50.0, <item:minecraft:string> *  2 % 25.0], armor);
}

DebugUtil.endScript("recipes/create/horse_armor_crush"); 