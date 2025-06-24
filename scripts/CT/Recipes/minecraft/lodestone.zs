DebugUtil.startScript("recipes/minecraft/lodestone/"); 
    

val thing = <item:minecraft:chiseled_stone_bricks>;

craftingTable.removeByName("minecraft:lodestone");


craftingTable.addShaped("lodestone_not_stupid", <item:minecraft:lodestone>, [
    [
        thing, thing, thing
    ],
    [
        thing, <item:minecraft:iron_ingot>, thing
    ],
    [
        thing, thing, thing
    ]
]);


DebugUtil.endScript("recipes/minecraft/lodestone"); 