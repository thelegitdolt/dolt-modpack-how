DebugUtil.startScript("recipes/minecraft/rails"); 
    

craftingTable.addShaped("activator_rail_based", <item:minecraft:activator_rail> * 8, [[<tag:items:forge:nuggets/iron>, <tag:items:forge:rods/wooden>, <tag:items:forge:nuggets/iron>], [<tag:items:forge:nuggets/iron>, <item:minecraft:redstone_torch>, <tag:items:forge:nuggets/iron>], [<tag:items:forge:nuggets/iron>, <tag:items:forge:rods/wooden>, <tag:items:forge:nuggets/iron>]]);

craftingTable.addShaped("detector_rail_based", <item:minecraft:detector_rail> * 8, [[<tag:items:forge:nuggets/iron>, <item:minecraft:air>, <tag:items:forge:nuggets/iron>], [<tag:items:forge:nuggets/iron>, <item:minecraft:stone_pressure_plate>, <tag:items:forge:nuggets/iron>], [<tag:items:forge:nuggets/iron>, <item:minecraft:redstone>, <tag:items:forge:nuggets/iron>]]);

craftingTable.addShaped("powered_rail_based", <item:minecraft:powered_rail> * 8, [[<tag:items:forge:nuggets/gold>, <item:minecraft:air>, <tag:items:forge:nuggets/gold>], [<tag:items:forge:nuggets/gold>, <tag:items:forge:rods/wooden>, <tag:items:forge:nuggets/gold>], [<tag:items:forge:nuggets/gold>, <item:minecraft:redstone>, <tag:items:forge:nuggets/gold>]]);

craftingTable.addShaped("maglev_rail_based", <item:alexscaves:magnetic_levitation_rail> * 8, 
[[<tag:items:forge:nuggets/iron>, RUtil.air, <tag:items:forge:nuggets/iron>], 
[<tag:items:forge:nuggets/iron>, <tag:items:forge:rods/wooden>, <tag:items:forge:nuggets/iron>], 
[<tag:items:forge:nuggets/iron>, <item:alexscaves:azure_neodymium_ingot>, <tag:items:forge:nuggets/iron>]]);

craftingTable.addShaped("controller_rail_based", <item:create:controller_rail> * 8, 
[[<tag:items:forge:nuggets/gold>, RUtil.air, <tag:items:forge:nuggets/gold>], 
[<tag:items:forge:nuggets/gold>, <tag:items:forge:rods/wooden>, <tag:items:forge:nuggets/gold>], 
[<tag:items:forge:nuggets/gold>, <item:create:electron_tube>, <tag:items:forge:nuggets/gold>]]);



craftingTable.addShaped("rail_based", <item:minecraft:rail> * 16, [[<tag:items:forge:nuggets/iron>, <item:minecraft:air>, <tag:items:forge:nuggets/iron>], [<tag:items:forge:nuggets/iron>, <tag:items:forge:rods/wooden>, <tag:items:forge:nuggets/iron>], [<tag:items:forge:nuggets/iron>, <item:minecraft:air>, <tag:items:forge:nuggets/iron>]]);


craftingTable.addShaped("spiked_rail_based", <item:caverns_and_chasms:spiked_rail> * 8, [[<tag:items:forge:nuggets/silver>, <item:minecraft:air>, <tag:items:forge:nuggets/silver>], [<tag:items:forge:nuggets/silver>, <item:minecraft:stick>, <tag:items:forge:nuggets/silver>], [<tag:items:forge:nuggets/silver>, <item:minecraft:redstone>, <tag:items:forge:nuggets/silver>]]);




craftingTable.removeByName("minecraft:activator_rail");
craftingTable.removeByName("minecraft:detector_rail");
craftingTable.removeByName("alexscaves:magnetic_levitation_rail");
craftingTable.removeByName("minecraft:powered_rail");
craftingTable.removeByName("minecraft:rail");
craftingTable.removeByName("caverns_and_chasms:spiked_rail");
craftingTable.removeByName("create:crafting/kinetics/controller_rail");

DebugUtil.endScript("recipes/minecraft/rails"); 