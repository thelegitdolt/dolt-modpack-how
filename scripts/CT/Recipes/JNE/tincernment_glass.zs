DebugUtil.startScript("recipes/JNE/tincernment_glass/"); 
    
craftingTable.removeByName("netherexp:discernment_glass");
craftingTable.addShaped("discernment_glass_based", <item:netherexp:discernment_glass> * 2, [[RUtil.air, <item:caverns_and_chasms:tin_ingot>, RUtil.air], [<item:caverns_and_chasms:tin_ingot>, <item:netherexp:soul_glass>, <item:caverns_and_chasms:tin_ingot>], [RUtil.air, <item:caverns_and_chasms:tin_ingot>, RUtil.air]]);

<tag:blocks:caverns_and_chasms:deflects_projectiles>.add(<block:netherexp:discernment_glass>);
DebugUtil.endScript("recipes/JNE/tincernment_glass"); 