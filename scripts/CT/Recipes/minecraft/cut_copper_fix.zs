DebugUtil.startScript("recipes/minecraft/cut_copper_fix"); 
    

val thing = <item:minecraft:chiseled_stone_bricks>;

for i in CUtil.coppers {
    craftingTable.removeByName("minecraft:" + i + "cut_copper");
}

CUtil.copperRecipe(
    "cut_copper_based", (name, block, cut) => {
        RUtil.twoByTwo(
            name, block, cut, 16
        );
    }, "minecraft:copper_block", "minecraft:cut_copper"
);


DebugUtil.endScript("recipes/minecraft/cut_copper_fix"); 