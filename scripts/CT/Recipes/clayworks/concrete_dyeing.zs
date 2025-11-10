DebugUtil.startScript("recipes/clayworks/concrete_dyeing"); 
    
val concrete = <item:clayworks:concrete>;
val powder = <item:clayworks:concrete_powder>;

for i in RUtil.dyeDepotColors {
    val dye = <item:dye_depot:${i}_dye>;
    val dyedConcrete = <item:dye_depot:${i}_concrete>;
    val dyedConcretePow = <item:dye_depot:${i}_concrete_powder>;
    craftingTable.addShaped(i + "_concrete_from_dyeing", dyedConcrete * 8, [
        [concrete, concrete, concrete],
        [concrete, dye, concrete],
        [concrete, concrete, concrete]
    ]);
    craftingTable.addShaped(i + "_concrete_powder_from_dyeing", dyedConcretePow * 8, [
        [powder, powder, powder],
        [powder, dye, powder],
        [powder, powder, powder]
    ]);
}

for i in RUtil.colors {
    val dye = <item:minecraft:${i}_dye>;
    val dyedConcretePow = <item:minecraft:${i}_concrete_powder>;
    craftingTable.addShaped(i + "_concrete_powder_from_dyeing", dyedConcretePow * 8, [
        [powder, powder, powder],
        [powder, dye, powder],
        [powder, powder, powder]
    ]);
}


DebugUtil.endScript("recipes/clayworks/concrete_dyeing"); 