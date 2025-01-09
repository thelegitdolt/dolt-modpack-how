DebugUtil.startScript("recipes/JNE/hogham_is_ham"); 
    
RUtil.cut.addRecipe("cutting/hogham", <item:netherexp:hogham>, [<item:minecraft:porkchop> * 2, <item:minecraft:bone>], <tag:items:forge:tools/knives>);
RUtil.cut.addRecipe("cutting/cooked_hogham", <item:netherexp:cooked_hogham>, [<item:minecraft:cooked_porkchop> * 2, <item:minecraft:bone>], <tag:items:forge:tools/knives>);

craftingTable.addShapeless("honey_glazed_ham_block_via_hogham", <item:farmersdelight:honey_glazed_ham_block>, [<item:minecraft:sweet_berries>, <item:minecraft:honey_bottle>, <item:minecraft:sweet_berries>, <item:minecraft:sweet_berries>, <item:netherexp:cooked_hogham>, <item:minecraft:sweet_berries>, <item:farmersdelight:cooked_rice>, <item:minecraft:bowl>, <item:farmersdelight:cooked_rice>]);

DebugUtil.endScript("recipes/JNE/hogham_is_ham"); 