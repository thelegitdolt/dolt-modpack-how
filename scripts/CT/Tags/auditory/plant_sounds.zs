DebugUtil.startScript("/Tags/auditory/plant_sounds.zs/"); 
    

var plants = [
    "quark:glow_shroom",
    "farmersdelight:red_mushroom_colony",
    "farmersdelight:brown_mushroom_colony",
    "dolt_mod_how:glowshroom_colony",
    "environmental:giant_tall_grass",
    "environmental:dwarf_spruce",
    "environmental:dwarf_spruce_plant",
    "environmental:dwarf_spruce_torch",
    "environmental:dwarf_spruce_plant_torch",
    "upgrade_aquatic:beachgrass",
    "upgrade_aquatic:tall_beachgrass",
    "farmersdelight:sandy_shrub",
    "minecraft:sweet_berry_bush",
    "autumnity:foul_berry_bush",
    "minecraft:vine",
    "minecraft:large_fern",
    "atmospheric:passion_vine",
    "atmospheric:agave",
    "quark:glow_lichen_growth",
    "quark:chorus_twist",
    "quark:chorus_weeds",
    "farmersrespite:wild_tea_bush",
    "farmersrespite:small_tea_bush",
    "farmersrespite:tea_bush",
    "farmersrespite:coffee_bush",
    "farmersrespite:wild_coffee_bush"
] as string[];

for thing in plants {
    <tag:blocks:auditory:plant_sounds>.add(<block:${thing}>);
}
<tag:blocks:auditory:plant_sounds>.add(<tag:blocks:minecraft:small_flowers>);
<tag:blocks:auditory:plant_sounds>.add(<tag:blocks:minecraft:tall_flowers>);



DebugUtil.endScript("/Tags/auditory/plant_sounds.zs"); 