DebugUtil.startScript("recipes/create/flour_is_actually_worth_it"); 

<recipetype:create:mixing>.addRecipe("fd_dough_by_mixing_flour", <constant:create:heat_condition:none>, 
[<item:farmersdelight:wheat_dough> % 100.0], [<tag:items:forge:flour/wheat> * 2], [<fluid:minecraft:water> * 1000]);


val wheat = <item:minecraft:wheat> | <tag:items:forge:flour/wheat>; 

RUtil.replaceAll(
    <item:minecraft:wheat>, wheat, 
    "neapolitan:cake", 
    "neapolitan:vanilla/vanilla_cake",
    "neapolitan:chocolate/chocolate_cake",
    "neapolitan:strawberry/strawberry_cake",
    "neapolitan:banana/banana_cake",
    "neapolitan:mint/mint_cake",
    "farmersrespite:coffee_cake",
    "farmersdelight:pie_crust",
    "farmersdelight:apple_pie",
    "brewinandchewin:pizza",
    "neapolitan:strawberry/strawberry_scones",
    "windswept:christmas_pudding",
    "neapolitan:banana/banana_bread",
    "minecraft:bread",
    "abnormals_delight:autumnity/pumpkin_bread"
);

DebugUtil.endScript("recipes/create/flour_is_actually_worth_it"); 