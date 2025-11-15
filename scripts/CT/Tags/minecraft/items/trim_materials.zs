DebugUtil.startScript("tags/minecraft/items/trim_materials"); 
    
val trim_materials = [
"windswept:icicles",
"windswept:pinecone"

];
for i in trim_materials {
    <tag:items:minecraft:trim_materials>.remove(<item:${i}>);
}



DebugUtil.endScript("tags/minecraft/items/trim_materials"); 