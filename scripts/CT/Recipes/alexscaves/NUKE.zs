DebugUtil.startScript("recipes/alexscaves/NUKE"); 
    
craftingTable.removeByName("alexscaves:nuclear_bomb"); 

val pizza = <item:minecraft:nether_star>;
val uranium = <item:alexscaves:block_of_uranium>;
val metal = <item:alexscaves:scrap_metal>;
val core = <item:alexscaves:fissile_core>;
val netherite = <item:caverns_and_chasms:netherite_nugget>; 


<recipetype:create:mechanical_crafting>.addRecipe("nuke_spooky", <item:alexscaves:nuclear_bomb>, 
[
    [netherite, metal, metal, metal, netherite], 
    [metal, core, uranium, core, metal],
    [metal, uranium, pizza, uranium, metal],
    [metal, core, uranium, core, metal],
    [netherite, metal, metal, metal, netherite]
]);

DebugUtil.endScript("recipes/alexscaves/NUKE"); 