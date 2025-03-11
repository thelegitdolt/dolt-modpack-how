DebugUtil.startScript("recipes/create/no_stonecutting_rose_quartz_wtf"); 
    
val redstone = <item:minecraft:redstone>; 
val roseq = <item:create:rose_quartz>; 

craftingTable.removeByName("create:crafting/materials/rose_quartz");
craftingTable.addShapeless("rose_quartz_based", roseq, [
    <item:minecraft:quartz>, redstone, redstone, redstone
]);  

stoneCutter.removeByName("create:rose_quartz_block_from_rose_quartz_stonecutting"); 
craftingTable.addShapeless("rose_quartz_block", <item:create:rose_quartz_block>, [
    roseq, roseq, roseq, roseq, roseq, roseq, roseq, roseq, roseq
]);  

craftingTable.addShapeless("rose_quartz_block_uncompress", roseq * 9, [
    <item:create:rose_quartz_block>
]);  


stoneCutter.removeByName("create:small_rose_quartz_tiles_from_polished_rose_quartz_stonecutting"); 
stoneCutter.removeByName("create:rose_quartz_tiles_from_polished_rose_quartz_stonecutting"); 

craftingTable.removeByName("create:crafting/materials/rose_quartz_tiles_from_conversion"); 
craftingTable.removeByName("create:crafting/materials/small_rose_quartz_tiles_from_conversion"); 

val polished = <item:create:polished_rose_quartz>; 
val rose_tiles = <item:create:rose_quartz_tiles>; 
val small_rose = <item:create:small_rose_quartz_tiles>; 
craftingTable.addShaped("rose_quartz_tiles_exist", rose_tiles * 4, [
    [polished, polished],
    [polished, polished] 
]);

craftingTable.addShaped("small_rose_tiles_ig_lol_what", small_rose * 4, [
    [rose_tiles, rose_tiles],
    [rose_tiles, rose_tiles] 
]);



DebugUtil.endScript("recipes/create/no_stonecutting_rose_quartz_wtf"); 