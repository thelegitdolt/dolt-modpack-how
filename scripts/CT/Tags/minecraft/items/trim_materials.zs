#loader tags

TLUtil.startScript("tags/minecraft/items/trim_materials"); 
    
val trim_materials = [
"windswept:icicles",
"windswept:pinecone"

];
for i in trim_materials {
    <tag:items:minecraft:trim_materials>.removeId(<resource:${i}>);
}



TLUtil.endScript("tags/minecraft/items/trim_materials"); 