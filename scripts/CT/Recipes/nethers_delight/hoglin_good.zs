DebugUtil.startScript("recipes/nethers_delight/hoglin_good"); 
    

val all_weird_things = [
    "mynethersdelight:raw_stuffed_hoglin"
];

HUtil.hideAll(all_weird_things); 
RUtil.removeAll(all_weird_things); 

RUtil.cook.removeByName("mynethersdelight:cooking/roast_stuffed_hoglin");

craftingTable.addShaped("cooked_stuffed_hoglin_based", <item:mynethersdelight:roast_stuffed_hoglin>, [
    [<item:mynethersdelight:crimson_fungus_colony>, <item:mynethersdelight:hoglin_hide>, <item:mynethersdelight:warped_fungus_colony>],
    [<item:netherexp:cooked_hogham>, <item:farmersdelight:nether_salad>, <item:netherexp:cooked_hogham>],
    [<item:netherexp:cooked_hogham>, <item:minecraft:bowl>, <item:netherexp:cooked_hogham>]
]);

DebugUtil.endScript("recipes/nethers_delight/hoglin_good"); 