DebugUtil.startScript("recipes/suppies/awning_dye_proper"); 

for i in RUtil.colors {
    craftingTable.addShapeless("dye_awning_" + i, <item:supplementaries:awning_${i}>, [
        <item:minecraft:${i}_dye>, <item:supplementaries:awning> 
    ]);
}

for i in RUtil.dyeDepotColors {
    val carp = <item:dye_depot:${i}_carpet>;
    craftingTable.addShaped("awning_make_" + i, <item:supplementaries:awning_${i}> * 2, [
        [carp, carp, carp],
        [<item:minecraft:stick>, RUtil.air, <item:minecraft:stick>]
    ]);
}




DebugUtil.endScript("recipes/suppies/awning_dye_proper"); 