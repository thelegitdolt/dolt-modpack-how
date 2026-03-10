DebugUtil.startScript("recipes/create/crush_horse_armor"); 

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

<recipetype:create:crushing>.addRecipe("crushing/silver_horse_armor", [<item:caverns_and_chasms:silver_ingot> * 2 % 100.0, <item:minecraft:leather> % 50.0, 
    <item:caverns_and_chasms:silver_ingot> % 50.0, <item:minecraft:string> * 2 % 25.0, <item:caverns_and_chasms:silver_nugget> * 2 % 25.0], 
    <item:caverns_and_chasms:silver_horse_armor>, 200);




addHorseArmorRecipe(<item:minecraft:iron_horse_armor>, <item:minecraft:iron_ingot>, <item:minecraft:iron_nugget>);
addHorseArmorRecipe(<item:minecraft:golden_horse_armor>, <item:minecraft:gold_ingot>, <item:minecraft:gold_nugget>);
addHorseArmorRecipeNoNugget(<item:minecraft:diamond_horse_armor>, <item:minecraft:diamond>);

CUtil.copperRecipe("copper_horse_armor", (name, armor, ingot) => {
    <recipetype:create:crushing>.addRecipe("crushing/" + name, [ingot * 2 % 100.0, ingot % 50.0, <item:minecraft:leather> % 50.0, <item:minecraft:string> *  2 % 25.0,  <item:caverns_and_chasms:copper_nugget> * 2 % 25.0], armor);
}, "caverns_and_chasms:copper_horse_armor", "copper_ingot");

<recipetype:create:crushing>.removeByName("create:crushing/leather_horse_armor");

function addHorseArmorRecipe(armor as IItemStack, material as IItemStack, nugget as IItemStack) as void {
    val name = armor.registryName.getPath(); 
    
    <recipetype:create:crushing>.removeByName("create:crushing/" + name);
    <recipetype:create:crushing>.addRecipe("crushing/" + name, [material * 2 % 100.0,    
        material % 50.0, <item:minecraft:leather> % 50.0, <item:minecraft:string> *  2 % 25.0,  nugget * 2 % 25.0], armor);
}

function addHorseArmorRecipeNoNugget(armor as IItemStack, material as IItemStack) as void {
    val name = armor.registryName.getPath(); 

    <recipetype:create:crushing>.removeByName("create:crushing/" + name);
    <recipetype:create:crushing>.addRecipe("crushing/" + name, [material * 2 % 100.0, 
        <item:minecraft:leather> % 50.0, material % 50.0, <item:minecraft:string> *  2 % 25.0], armor);
}

DebugUtil.endScript("recipes/create/crush_horse_armor"); 