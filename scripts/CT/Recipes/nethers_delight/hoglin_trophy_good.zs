DebugUtil.startScript("recipes/nethers_delight/hoglin_trophy_good"); 

craftingTable.removeByName("mynethersdelight:crafting/hoglin_trophy");
craftingTable.addShaped("hoglin_trophy_good", <item:mynethersdelight:hoglin_trophy>, [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:mynethersdelight:hoglin_hide>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
]);

craftingTable.removeByName("mynethersdelight:crafting/zoglin_trophy");
craftingTable.removeByName("mynethersdelight:crafting/hoglin_trophy_cure");
craftingTable.removeByName("mynethersdelight:crafting/skoglin_trophy");

RUtil.cut.removeByName("mynethersdelight:cutting/hoglin_trophy");

DebugUtil.endScript("recipes/nethers_delight/hoglin_trophy_good"); 