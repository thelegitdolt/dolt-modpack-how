DebugUtil.startScript("recipes/misc/hanging_signs_stuff/"); 
    
var builder = WoodGroup.create("wormwood")
    .add("sign", "%s_hanging_sign")
    .add("planks", "%s_planks");
var pairs = builder.build(); 

for i in 0 .. builder.length() {
    val sign = pairs["sign"][i];
    val plank = pairs["planks"][i];

    if sign.getNamespace() == "sullysmod" {
        craftingTable.removeByName("sullysmod:crafting/" + sign.getPath());
    }
    else {
        craftingTable.removeByName(sign);
    }
    
    val signItem = <item:${sign}>;
    val plankItem = <item:${plank}>;

    craftingTable.addShaped(RUtil.getRecipeString(sign) + "_based_doltum", signItem * 3, [
        [<item:minecraft:chain>, RUtil.air, <item:minecraft:chain>],
        [plankItem, plankItem, plankItem],
        [plankItem, plankItem, plankItem]
    ]);
}



DebugUtil.endScript("recipes/misc/hanging_signs_stuff"); 