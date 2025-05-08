DebugUtil.startScript("recipes/alexscaves/mech_crafter_stuff"); 
    
craftingTable.removeByName("alexscaves:nuclear_furnace_component");
craftingTable.removeByName("alexscaves:raygun");
craftingTable.removeByName("alexscaves:galena_gauntlet");

val scrap_metal = <item:alexscaves:scrap_metal>;
val remnant = <item:alexscaves:charred_remnant>;
val uranium = <item:alexscaves:block_of_uranium>;

val rod = <item:alexscaves:uranium_rod>;
val core = <item:alexscaves:fissile_core>;
val galena = <item:alexscaves:galena>;
val fslime = <item:alexscaves:ferrouslime_ball>;

val polymer = <item:alexscaves:polymer_plate>;
val telecore = <item:alexscaves:telecore>;
val iron_block = <item:minecraft:iron_block>;
val red_neo = <item:alexscaves:block_of_scarlet_neodymium>;



<recipetype:create:mechanical_crafting>.addRecipe("nuclear_furnace_cool_awesome", <item:alexscaves:nuclear_furnace_component> * 4, 
[
    [scrap_metal, scrap_metal, scrap_metal, scrap_metal, scrap_metal],
    [remnant, uranium, <item:minecraft:blast_furnace>, uranium, remnant],
    [remnant, remnant, remnant, remnant, remnant]
]);


<recipetype:create:mechanical_crafting>.addRecipe("ray_gun_awesome", <item:alexscaves:raygun>, 
[
    [remnant, remnant, polymer, RUtil.air, RUtil.air],
    [remnant, core, uranium, polymer, polymer],
    [polymer, polymer, RUtil.air, RUtil.air, RUtil.air]
]);

<recipetype:create:mechanical_crafting>.addRecipe("galena_gauntlet_awesome", <item:alexscaves:galena_gauntlet>, 
[
    [galena, galena, galena, galena, galena],
    [galena, iron_block, <item:create:extendo_grip>, iron_block, galena],
    [galena, telecore, red_neo, telecore, galena]
]);

craftingTable.removeByName("alexscaves:nuclear_siren");
craftingTable.addShaped("nuclear_siren_goated", <item:alexscaves:nuclear_siren>, [
    [<item:alexscaves:charred_remnant>, <item:minecraft:amethyst_shard>, <item:alexscaves:charred_remnant>], 
    [RUtil.air, <tag:items:forge:ingots/iron>, RUtil.air], 
    [RUtil.air, <tag:items:forge:ingots/iron>, RUtil.air]]);

DebugUtil.endScript("recipes/alexscaves/mech_crafter_stuff"); 