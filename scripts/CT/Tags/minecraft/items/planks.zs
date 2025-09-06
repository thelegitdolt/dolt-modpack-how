DebugUtil.startScript("tags/minecraft/items/planks"); 
    
val planks = [
"everycomp:q/architects_palette/vertical_twisted_planks",
"everycomp:q/environmental/vertical_wisteria_planks",
"everycomp:q/atmospheric/vertical_grimwood_planks",
"quark:ancient_planks",
"quark:blossom_planks",
"everycomp:q/enhanced_mushrooms/vertical_mushroom_planks",
"everycomp:q/environmental/vertical_willow_planks",
"everycomp:q/alexscaves/vertical_thornwood_planks",
"mowziesmobs:painted_acacia",
"everycomp:q/atmospheric/vertical_yucca_planks",
"quark:azalea_planks",
"everycomp:q/alexscaves/vertical_pewen_planks",
"everycomp:q/atmospheric/vertical_rosewood_planks",
"everycomp:q/atmospheric/vertical_kousa_planks",
"everycomp:q/environmental/vertical_plum_planks",
"everycomp:q/sullysmod/vertical_petrified_planks",
"everycomp:q/upgrade_aquatic/vertical_river_planks",
"everycomp:q/atmospheric/vertical_laurel_planks",
"quark:vertical_warped_planks",
"everycomp:q/autumnity/vertical_maple_planks",
"everycomp:q/upgrade_aquatic/vertical_driftwood_planks",
"everycomp:q/spawn/vertical_rotten_planks",
"everycomp:q/environmental/vertical_pine_planks",
"everycomp:q/atmospheric/vertical_morado_planks",
"quark:vertical_crimson_planks",
"everycomp:q/mynethersdelight/vertical_powdery_planks",
"everycomp:q/atmospheric/vertical_aspen_planks"

];
for i in planks {
    <tag:items:minecraft:planks>.remove(<item:${i}>);
}



DebugUtil.endScript("tags/minecraft/items/planks"); 