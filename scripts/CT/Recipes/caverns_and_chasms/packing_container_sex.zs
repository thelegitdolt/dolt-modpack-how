DebugUtil.startScript("recipes/caverns_and_chasms/packing_container_sex"); 

val tin = <tag:items:forge:ingots/tin>;
craftingTable.removeByName("caverns_and_chasms:packing_container");    
craftingTable.addShaped("packing_container", <item:caverns_and_chasms:packing_container>, [
    [tin], [<item:minecraft:leather>], [tin]
]);

DebugUtil.endScript("recipes/caverns_and_chasms/packing_container_sex"); 