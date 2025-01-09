DebugUtil.startScript("recipes/JNE/kill_skeleton_stuff_and_soul_jackos_and_soul_candles/"); 
    
craftingTable.removeByName("netherexp:stacked_bones"); 
RUtil.twoByTwo("stacked_bones_actually_stacked", <item:minecraft:bone>, <item:netherexp:stacked_bones>, 4); 

craftingTable.removeByName("netherexp:stacked_wither_bones"); 
RUtil.twoByTwo("stacked_wither_bones", <item:architects_palette:withered_bone>, <item:netherexp:stacked_wither_bones>, 4); 

val list = [
    "netherexp:skull_block",
    "netherexp:burning_skull_block",
    "netherexp:soul_burning_skull_block",
    "netherexp:burning_wither_skull_block",
    "netherexp:soul_burning_wither_skull_block",
    "netherexp:wither_skull_block",
    
    "netherexp:weeping_polished_blackstone_bricks", 
    "netherexp:twisting_polished_blackstone_bricks"
];

HUtil.hideAll(list); 
RUtil.removeAll(list);
RUtil.removeStonecutter(list); 

craftingTable.removeByName("netherexp:wither_bone_block");
RUtil.threeByThree("wither_bone_block_ap", <item:architects_palette:withered_bone>, <item:netherexp:wither_bone_block>, 3);


DebugUtil.endScript("recipes/JNE/kill_skeleton_stuff_and_soul_jackos_and_soul_candles"); 