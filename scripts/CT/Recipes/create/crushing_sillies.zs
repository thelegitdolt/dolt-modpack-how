DebugUtil.startScript("recipes/create/crushing_sillies"); 

<recipetype:create:crushing>.addRecipe("tuff_cc_copper", 
[<item:minecraft:flint> % 25, <item:create:zinc_nugget> % 2, <item:caverns_and_chasms:copper_nugget> % 2, <item:minecraft:iron_nugget> % 5], 
<item:minecraft:tuff>, 200);

<recipetype:create:crushing>.addRecipe("warped_wart_get", 
    [<item:netherexp:warped_wart> % 25], <item:minecraft:warped_wart_block>, 250);

<recipetype:create:crushing>.addRecipe("john_fossil_fuel", 
    [<item:minecraft:black_dye>, <item:minecraft:gray_dye> % 10], <item:netherexp:fossil_fuel>, 250);


<recipetype:create:crushing>.addRecipe("cotton_to_string_and_seeds", 
    [<item:minecraft:string>, <item:minecraft:string> * 2 % 25, <item:etcetera:cotton_seeds> % 25], <item:etcetera:cotton_flower>, 250);





DebugUtil.endScript("recipes/create/crushing_sillies"); 