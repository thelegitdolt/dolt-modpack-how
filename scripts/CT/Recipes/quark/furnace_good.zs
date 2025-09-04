DebugUtil.startScript("recipes/quark/furnace_good"); 
    

import crafttweaker.api.resource.ResourceLocation;

val missingBoats = ["pewen", "thornwood", "rotten", "claret", "wormwood"];
var boats = WoodList.create("minecraft", (str) => str + "_boat")
        .filter(missingBoats)
        .specialModid(["warped", "crimson"], Constants.BOATLOAD)
        .specialFunc(["bamboo"], (bamb) => bamb + "_raft").build(); 
    
var furnace_boats = WoodList.create(Constants.BOATLOAD, (str) => str + "_furnace_boat")
        .filter(missingBoats)
        .specialFunc(["bamboo"], (bamb) => bamb + "_furnace_raft").build(); 

var boat_furnace_pair = WoodUtil.asPair(boats, furnace_boats); 

for boat, furnace in boat_furnace_pair {
    craftingTable.removeByName(furnace.toString());
    craftingTable.addShapeless(RUtil.getRecipeString(furnace) + "_based", 
        <item:${furnace}>, [<item:${boat}>, <tag:items:forge:furnace/stone>]);
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