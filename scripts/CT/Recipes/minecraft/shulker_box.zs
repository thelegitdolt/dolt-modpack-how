DebugUtil.startScript("/recipes/minecraft/shulker_box/"); 
    
val sh = <item:minecraft:shulker_shell>;
craftingTable.removeByName("minecraft:shulker_box");
craftingTable.addShaped("shulker_box_really_weird_am_i_dumb", <item:minecraft:shulker_box>, [
    [sh, sh, sh],
    [sh, <tag:items:forge:chests/wooden>, sh],
    [sh, sh, sh]
]);

DebugUtil.endScript("/recipes/minecraft/shulker_box"); 