DebugUtil.startScript("recipes/JNE/kill_skeleton_stuff_and_soul_jackos_and_soul_candles/"); 
    
craftingTable.removeByName("netherexp:stacked_bones"); 
RUtil.twoByTwo("stacked_bones_actually_stacked", <item:minecraft:bone>, <item:netherexp:stacked_bones>, 4); 

craftingTable.removeByName("netherexp:stacked_wither_bones"); 
RUtil.twoByTwo("stacked_wither_bones", <item:architects_palette:withered_bone>, <item:netherexp:stacked_wither_bones>, 4); 

# bones removed in reliable remover 

craftingTable.removeByName("netherexp:wither_bone_block");
RUtil.threeByThree("wither_bone_block_ap", <item:architects_palette:withered_bone>, <item:netherexp:wither_bone_block>, 3);


DebugUtil.endScript("recipes/JNE/kill_skeleton_stuff_and_soul_jackos_and_soul_candles"); 