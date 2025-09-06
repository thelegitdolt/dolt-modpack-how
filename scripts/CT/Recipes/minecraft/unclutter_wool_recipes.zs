DebugUtil.startScript("recipes/minecraft/unclutter_wool_recipes"); 
    

for i in RUtil.colors {
    if i != "white" {
        craftingTable.removeByName(i + "_wool");
    }
}


DebugUtil.endScript("recipes/minecraft/unclutter_wool_recipes"); 