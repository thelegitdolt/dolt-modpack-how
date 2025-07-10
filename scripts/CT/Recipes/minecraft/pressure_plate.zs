DebugUtil.startScript("/Recipes/minecraft/pressure_plate/"); 
    
for i, p in WoodUtil.asPair(
    WoodList.create("minecraft", str => str + "_pressure_plate").moddedOriginal().filter("rotten").build(), 
    WoodList.create("minecraft", str => str + "_planks").moddedOriginal().filter("rotten").build()) {
    craftingTable.removeByName(i);
    val pressureplate = <item:${i}>;
    val planks = <item:${p}>;

    craftingTable.addShaped(pressureplate.registryName.getPath() + "_based", pressureplate, [
        [planks, planks, planks]
    ]);
}


DebugUtil.endScript("/Recipes/minecraft/pressure_plate"); 