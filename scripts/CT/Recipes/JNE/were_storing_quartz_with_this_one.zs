DebugUtil.startScript("recipes/JNE/were_storing_quartz_with_this_one"); 

val q = <item:minecraft:quartz>;
craftingTable.removeByName("netherexp:quartz_crystal_block");
RUtil.oneToOneConversion("quartz_block_unpack", <item:netherexp:quartz_crystal_block>, <item:minecraft:quartz>, 9);
craftingTable.addShapeless("quartz_crystal_block_from_based", <item:netherexp:quartz_crystal_block>, [
    q, q, q, q, q, q, q, q, q
]);

DebugUtil.endScript("recipes/JNE/were_storing_quartz_with_this_one"); 