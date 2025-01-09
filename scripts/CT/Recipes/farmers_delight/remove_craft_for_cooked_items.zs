DebugUtil.startScript("/Recipes/farmers_delight/remove_craft_for_cooked_items.zs/"); 
    

val all_weird_things = [
    "abnormals_delight:neapolitan/adzuki_curry",
    "minecraft:rabbit_stew_from_brown_mushroom",
    "minecraft:rabbit_stew_from_red_mushroom",
    "minecraft:mushroom_stew",
    "minecraft:beetroot_soup",
    "incubation:scrambled_eggs"
];

for thing in all_weird_things {
    craftingTable.removeByName(thing);
}


DebugUtil.endScript("/Recipes/farmers_delight/remove_craft_for_cooked_items.zs"); 