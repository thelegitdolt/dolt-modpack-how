DebugUtil.startScript("recipes/misc/hanging_signs_stuff/"); 
    

val signs = WoodList.create("minecraft", (str) => str + "_hanging_sign")
    .moddedOriginal().filter("rotten", "wormwood").build();
val planks = WoodList.create("minecraft", (str) => str + "_planks")
    .moddedOriginal().filter("rotten", "wormwood").build();

for sign, plank in WoodUtil.asPair(signs, planks) {
    craftingTable.removeByName(sign.toString());

    val signItem = <item:${sign}>;
    val plankItem = <item:${plank}>;

    val path = plank.equals(<resource:windswept:pine_planks>) ? "fir_hanging_sign" : sign.getPath(); 

    craftingTable.addShaped(path + "_based_doltum", signItem * 3, [
        [<item:minecraft:chain>, RUtil.air, <item:minecraft:chain>],
        [plankItem, plankItem, plankItem],
        [plankItem, plankItem, plankItem]
    ]);
}



DebugUtil.endScript("recipes/misc/hanging_signs_stuff"); 