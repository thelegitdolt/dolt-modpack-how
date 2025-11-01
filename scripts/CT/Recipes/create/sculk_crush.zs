DebugUtil.startScript("recipes/create/sculk_crush"); 


import crafttweaker.api.item.IItemStack;


oneNugRecipe(<item:minecraft:sculk>, 33, 1);
twoNugRecipe(<item:minecraft:sculk_sensor>, 33, 2);
twoNugRecipe(<item:minecraft:sculk_shrieker>, 33, 2);
twoNugRecipe(<item:minecraft:sculk_catalyst>, 33, 2);

function oneNugRecipe(sculk as IItemStack, chance as int, count as int) as void{
    <recipetype:create:crushing>.addRecipe(
        sculk.registryName.getPath() + "_crush", [
            <item:create:experience_nugget> * count % chance 
        ], sculk, 250);
}

function twoNugRecipe(sculk as IItemStack, chance as int, count as int) as void{
    <recipetype:create:crushing>.addRecipe(
        sculk.registryName.getPath() + "_crush", [ <item:create:experience_nugget>, 
            <item:create:experience_nugget>  * count % chance
        ], sculk, 250);
}

DebugUtil.endScript("recipes/create/sculk_crush"); 