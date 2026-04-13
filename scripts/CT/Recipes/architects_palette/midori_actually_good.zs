DebugUtil.startScript("recipes/architects_palette/midori_actually_good"); 
    
val brick = <item:minecraft:stone_bricks>;
val paste = <item:quark:moss_paste>;
craftingTable.removeByName("architects_palette:temp/olivestone_bricks");
craftingTable.addShaped("midori_wow_what", <item:architects_palette:olivestone_bricks> * 8, [
    [brick, brick, brick],
    [brick, paste, brick],
    [brick, brick, brick]
]);

DebugUtil.endScript("recipes/architects_palette/midori_actually_good"); 