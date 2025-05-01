DebugUtil.startScript("recipes/minecraft/goodbye_wooden_tools/"); 
    
val list = ["minecraft:wooden_sword",
"minecraft:wooden_axe",
"minecraft:wooden_pickaxe",
"minecraft:wooden_shovel"];

HUtil.hideAll(list);
RUtil.removeAll(list);
craftingTable.removeByName("minecraft:wooden_hoe");



DebugUtil.endScript("recipes/minecraft/goodbye_wooden_tools"); 