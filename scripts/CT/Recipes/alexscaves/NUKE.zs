DebugUtil.startScript("recipes/alexscaves/NUKE"); 
    
craftingTable.removeByName("alexscaves:nuclear_bomb"); 

val pizza = <item:minecraft:nether_star>;
val uranium = <item:alexscaves:block_of_uranium>;
val precision = <item:create:precision_mechanism>;
val metal = <item:alexscaves:scrap_metal>;
val core = <item:alexscaves:fissile_core>;
val netherite = <item:caverns_and_chasms:netherite_nugget>; 


<recipetype:create:mechanical_crafting>.addRecipe("nuke_spooky", <item:alexscaves:nuclear_bomb>, 
[
    [RUtil.air, metal, metal, metal, RUtil.air], 
    [metal, core, uranium, core, metal],
    [metal, precision, pizza, precision, metal],
    [metal, core, uranium, core, metal],
    [RUtil.air, metal, metal, metal, RUtil.air]
]);

DebugUtil.endScript("recipes/alexscaves/NUKE"); 