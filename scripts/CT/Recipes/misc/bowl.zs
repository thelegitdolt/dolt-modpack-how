DebugUtil.startScript("recipes/misc/bowl"); 
    
RUtil.overwrite("spawn:hamster_wheel", (a, b) => {
    craftingTable.addShaped(a, b, [
        [<tag:items:minecraft:planks>],
        [<item:minecraft:stone_pressure_plate>]
    ]);
});

RUtil.overwrite("sob:crafting/roast_turkey_block", (a, b) => {
    craftingTable.addShapeless(a, b, [
        <tag:items:forge:vegetables/onion>, <item:farmersdelight:cooked_rice>, <tag:items:forge:bread/wheat>, 
        <item:environmental:plum>, <item:autumnity:cooked_turkey>, <item:minecraft:carrot>, 
        <item:environmental:plum>, <item:farmersdelight:cooked_rice>, <item:minecraft:carrot>
    ]);
});

DebugUtil.endScript("recipes/misc/bowl"); 