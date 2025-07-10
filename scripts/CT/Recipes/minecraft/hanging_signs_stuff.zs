DebugUtil.startScript("recipes/minecraft/hanging_signs_stuff/"); 
    

val signs = WoodList.create("minecraft", (str) => str + "_hanging_sign")
    .moddedOriginal().filter("rotten", "wormwood").build();
val planks = WoodList.create("minecraft", (str) => str + "_planks")
    .moddedOriginal().filter("rotten", "wormwood").build();

for sign, plank in WoodUtil.asPair(signs, planks) {
    craftingTable.removeByName(sign.toString());

    val signItem = <item:${sign}>;
    val plankItem = <item:${plank}>;

    craftingTable.addShaped(sign.getPath() + "_based_doltum", signItem * 3, [
        [<item:minecraft:chain>, RUtil.air, <item:minecraft:chain>],
        [plankItem, plankItem, plankItem],
        [plankItem, plankItem, plankItem]
    ]);
}



DebugUtil.endScript("recipes/minecraft/hanging_signs_stuff"); 