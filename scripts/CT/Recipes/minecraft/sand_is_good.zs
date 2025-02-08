DebugUtil.startScript("recipes/minecraft/sand_is_good"); 
    

val sand = <tag:items:forge:sand>;
val gravel = <tag:items:forge:gravel>;

for color in RUtil.colors {
    craftingTable.removeByName("minecraft:"  + color + "_concrete_powder");

    val powder = <item:minecraft:${color + "_concrete_powder"}>;
    val dye = <item:minecraft:${color + "_dye"}>;
    craftingTable.addShapeless(color + "_concrete_powder_based", powder * 8, [dye, sand, sand, sand, sand, gravel, gravel, gravel, gravel]);
}

for color in RUtil.dyeDepotColors {
    craftingTable.removeByName("dye_depot:"  + color + "_concrete_powder");

    val powder = <item:dye_depot:${color + "_concrete_powder"}>;
    val dye = <item:dye_depot:${color + "_dye"}>;
    craftingTable.addShapeless(color + "_concrete_powder_based", powder * 8, [dye, sand, sand, sand, sand, gravel, gravel, gravel, gravel]);
}


craftingTable.removeByName("clayworks:concrete_powder");
craftingTable.addShapeless("concrete_powder_based", <item:clayworks:concrete_powder> * 8, [sand, sand, sand, sand, gravel, gravel, gravel, gravel]);


craftingTable.removeByName("minecraft:tnt");
craftingTable.removeByName("savage_and_ravage:spore_bomb");

craftingTable.addShaped("tnt_based", <item:minecraft:tnt>, [
    [
       sand,  <item:minecraft:gunpowder>, sand
    ],
    [
       <item:minecraft:gunpowder>, sand,  <item:minecraft:gunpowder>
    ],
    [
       sand,  <item:minecraft:gunpowder>, sand
    ]
]);


craftingTable.addShaped("spore_bomb_based", <item:savage_and_ravage:spore_bomb>, [
    [
       sand,  <item:savage_and_ravage:creeper_spores>, sand
    ],
    [
       <item:savage_and_ravage:creeper_spores>, sand,  <item:savage_and_ravage:creeper_spores>
    ],
    [
       sand,  <item:savage_and_ravage:creeper_spores>, sand
    ]
]);


DebugUtil.endScript("recipes/minecraft/sand_is_good"); 