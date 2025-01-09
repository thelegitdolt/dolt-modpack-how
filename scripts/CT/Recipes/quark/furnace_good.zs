DebugUtil.startScript("/Recipes/quark/furnace_good.zs/"); 
    

import crafttweaker.api.resource.ResourceLocation;


var boats = WoodList.create(Constants.BOATLOAD, (str) => str + "_boat")
        .bambooFunc((str) => str + "_raft").moddedNP().vanillaOriginal().netherNewMod().build(); 
    
var furnace_boats  = WoodList.create(Constants.BOATLOAD, (str) => str + "_furnace_boat")
        .bambooFunc((str) => str + "_furnace_raft").moddedNP().build(); 

var boat_furnace_pair = WoodUtil.asPair(boats, furnace_boats); 

for boat, furnace in boat_furnace_pair {
    craftingTable.removeByName(furnace.toString());
    craftingTable.addShapeless(furnace.getPath() + "_based", 
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


DebugUtil.endScript("/Recipes/quark/furnace_good.zs"); 