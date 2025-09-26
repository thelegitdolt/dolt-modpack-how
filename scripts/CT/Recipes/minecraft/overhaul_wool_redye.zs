
DebugUtil.startScript("recipes/minecraft/overhaul_wool_redye"); 


for i in RUtil.colors {
    craftingTable.removeByName("minecraft:dye_" + i + "_wool");
    craftingTable.addShapeless("dye_" + i + "_wool_actually_works", <item:minecraft:${i}_wool>, [
        <item:minecraft:${i}_dye>, <tag:items:minecraft:wool>
    ]);
}

for i in RUtil.dyeDepotColors {
    if (i != "amber") {
        craftingTable.removeByName("dye_depot:dye_" + i + "_wool");
    }
    
    craftingTable.addShapeless("dye_" + i + "_wool_actually_works", <item:dye_depot:${i}_wool>, [
        <item:dye_depot:${i}_dye>, <tag:items:minecraft:wool>
    ]);
}

DebugUtil.endScript("recipes/minecraft/overhaul_wool_redye"); 