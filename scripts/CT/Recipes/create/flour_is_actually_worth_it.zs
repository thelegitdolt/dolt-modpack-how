DebugUtil.startScript("recipes/create/flour_is_actually_worth_it"); 
    
craftingTable.remove(<item:create:dough>);
HUtil.hide(<item:create:dough>);

<recipetype:create:mixing>.removeByName("create:mixing/dough_by_mixing");
<recipetype:create:mixing>.addRecipe("fd_dough_by_mixing_flour", <constant:create:heat_condition:none>, 
[<item:farmersdelight:wheat_dough> % 100.0], [<tag:items:forge:flour/wheat>], [<fluid:minecraft:water> * 1000]);


DebugUtil.endScript("recipes/create/flour_is_actually_worth_it"); 