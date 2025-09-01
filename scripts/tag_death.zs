#priority 100

DebugUtil.startScript("~/tag_death");

<tag:items:forge:ingots/silver>.remove(<item:oreganized:silver_ingot>);

val a = [
    "everycomp:q/alexscaves/vertical_pewen_planks",
"everycomp:q/alexscaves/vertical_thornwood_planks",
"everycomp:q/atmospheric/vertical_aspen_planks",
"everycomp:q/atmospheric/vertical_grimwood_planks",
"everycomp:q/atmospheric/vertical_kousa_planks",
"everycomp:q/atmospheric/vertical_laurel_planks",
"everycomp:q/atmospheric/vertical_morado_planks",
"everycomp:q/atmospheric/vertical_rosewood_planks",
"everycomp:q/atmospheric/vertical_yucca_planks",
"everycomp:q/autumnity/vertical_maple_planks",
"everycomp:q/caverns_and_chasms/vertical_azalea_planks",
"everycomp:q/endergetic/vertical_poise_planks",
"everycomp:q/enhanced_mushrooms/vertical_mushroom_planks",
"everycomp:q/environmental/vertical_pine_planks",
"everycomp:q/environmental/vertical_plum_planks",
"everycomp:q/environmental/vertical_willow_planks",
"everycomp:q/environmental/vertical_wisteria_planks",
"everycomp:q/mynethersdelight/vertical_powdery_planks",
"everycomp:q/netherexp/vertical_claret_planks",
"everycomp:q/netherexp/vertical_smokestalk_planks",
"everycomp:q/spawn/vertical_rotten_planks",
"everycomp:q/sullysmod/vertical_petrified_planks",
"everycomp:q/upgrade_aquatic/vertical_driftwood_planks",
"everycomp:q/upgrade_aquatic/vertical_river_planks",
"everycomp:q/windswept/vertical_chestnut_planks",
"everycomp:q/windswept/vertical_holly_planks",
"everycomp:q/windswept/vertical_pine_planks",
"quark:vertical_acacia_planks",
"quark:vertical_ancient_planks",
"quark:vertical_azalea_planks",
"quark:vertical_bamboo_planks",
"quark:vertical_birch_planks",
"quark:vertical_blossom_planks",
"quark:vertical_cherry_planks",
"quark:vertical_crimson_planks",
"quark:vertical_dark_oak_planks",
"quark:vertical_jungle_planks",
"quark:vertical_mangrove_planks",
"quark:vertical_oak_planks",
"quark:vertical_spruce_planks",
"quark:vertical_warped_planks"
];
for i in a {
    <tag:items:propertymodifier:shield_repair_material>.remove(<item:${i}>);
    <tag:items:minecraft:planks>.remove(<item:${i}>);
}

val woods = ["azalea", "oak", "dark_oak", "spruce", "birch", "acacia", 
"jungle", "mangrove", "blossom", "ancient", "cherry", "bamboo"] as string[];

for wood in woods {
    <tag:items:forge:chests/wooden>.remove(<item:quark:${wood}_chest>);
    <tag:items:forge:chests/wooden>.remove(<item:quark:${wood}_trapped_chest>);
}

DebugUtil.endScript("~/tag_death");