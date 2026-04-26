DebugUtil.startScript("recipes/quark/furnace_good"); 
    

import crafttweaker.api.resource.ResourceLocation;


var boats = WoodGroup.create("claret", "petrified", "thornwood", "desecrated", "pewen", "wormwood")
    .add("boat", "%s_boat")
    .edgeCase("boat", ["bamboo", "date"], "%s_raft")
    .add("furnace_boat", "%s_furnace_boat")
    .edgeCase("furnace_boat", ["bamboo"], "%s_furnace_raft");

var boats_real = boats.build(); 
for i in 0 .. boats.length() {
    var boat = boats_real["boat"][i];
    var furnace_boat = boats_real["furnace_boat"][i];
    craftingTable.removeByName(furnace_boat);
    craftingTable.addShapeless(RUtil.getRecipeString(furnace_boat) + "_based", 
        <item:${furnace_boat}>, [<item:${boat}>, <tag:items:forge:furnace/stone>]);
}

craftingTable.remove(<item:clayworks:kiln>);

craftingTable.addShaped("kiln_based", <item:clayworks:kiln>, [
    [
        <tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>
    ],
    [
        <tag:items:minecraft:stone_crafting_materials>, <tag:items:forge:furnace/stone>, <tag:items:minecraft:stone_crafting_materials>
    ],
    [
        <item:minecraft:mud_bricks>, <item:minecraft:mud_bricks>, <item:minecraft:mud_bricks>
    ]
]);


DebugUtil.endScript("recipes/quark/furnace_good.zs"); 