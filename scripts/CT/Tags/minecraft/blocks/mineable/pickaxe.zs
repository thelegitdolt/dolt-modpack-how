# priority 200

DebugUtil.startScript("tags/minecraft/blocks/mineable/pickaxe"); 
    

<tag:blocks:minecraft:mineable/pickaxe>.remove(<block:minecraft:budding_amethyst>);

<tag:blocks:forge:glass>.add(<tag:blocks:oreganized:crystal_glass_panes>);
<tag:blocks:forge:glass>.add(<block:netherexp:soul_glass>);
<tag:blocks:forge:glass>.add(<block:netherexp:discernment_glass>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<tag:blocks:forge:glass>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<tag:blocks:forge:glass_blocks>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:etcetera:light_bulb>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:etcetera:tinted_light_bulb>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<tag:blocks:forge:glass_panes>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:upgrade_aquatic:glass_trapdoor>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:upgrade_aquatic:glass_door>);


var skulls = [
    "caverns_and_chasms:mime_head",
    "caverns_and_chasms:mime_wall_head",
    "caverns_and_chasms:deeper_head",
    "caverns_and_chasms:deeper_wall_head",
    "caverns_and_chasms:peeper_head",
    "caverns_and_chasms:peeper_wall_head",
    "neapolitan:chimpanzee_head",
    "neapolitan:chimpanzee_wall_head",
    "minecraft:creeper_head",
    "minecraft:creeper_wall_head",
    "minecraft:player_head",
    "minecraft:player_wall_head",
    "minecraft:zombie_head",
    "minecraft:zombie_wall_head",
    "minecraft:skeleton_skull",
    "minecraft:skeleton_wall_skull",
    "minecraft:wither_skeleton_skull",
    "minecraft:wither_skeleton_wall_skull",
    "supplementaries:enderman_head",
    "supplementaries:enderman_wall_head",
    "sullysmod:gigantic_ancient_skull",
    "sullysmod:gigantic_ancient_wall_skull",
    "sullysmod:ribbed_ancient_skull",
    "sullysmod:ribbed_ancient_wall_skull",
    "sullysmod:long_ancient_skull",
    "sullysmod:long_ancient_wall_skull",
    "sullysmod:horned_ancient_skull",
    "sullysmod:horned_ancient_wall_skull",
    "sullysmod:flatbilled_ancient_skull",
    "sullysmod:flatbilled_ancient_wall_skull",
    "sullysmod:tiny_ancient_skull",
    "sullysmod:tiny_ancient_wall_skull",
    "sullysmod:cracked_ancient_skull",
    "sullysmod:cracked_ancient_wall_skull",
    "sullysmod:wide_ancient_skull",
    "sullysmod:wide_ancient_wall_skull",
    "sullysmod:crested_ancient_skull",
    "sullysmod:crested_ancient_wall_skull",
    "piglinproliferation:zombified_piglin_head",
    "piglinproliferation:zombified_piglin_wall_head",
    "piglinproliferation:piglin_brute_head",
    "piglinproliferation:piglin_brute_wall_head",
    "minecraft:piglin_head",
    "minecraft:piglin_wall_head",
    "piglinproliferation:piglin_alchemist_head",
    "piglinproliferation:piglin_alchemist_wall_head",
    "piglinproliferation:piglin_traveler_head",
    "piglinproliferation:piglin_traveler_wall_head",
    "species:wicked_candle",
    "species:wicked_wall_candle",
    "species:quake_head",
    "species:quake_wall_head",
    "species:ghoul_head",
    "species:ghoul_wall_head",
    "species:bewereager_head",
    "species:bewereager_wall_head",
    "amendments:skull_pile",
    "amendments:skull_candle",
    "amendments:skull_candle_soul",
    "amendments:skull_candle_soul_wall",
    "amendments:skull_candle_wall"
] as string[];

val eggs = [
    "sullysmod:tortoise_egg",
    "minecraft:turtle_egg",
    "minecraft:sniffer_egg",
    "species:cruncher_egg",
    "species:springling_egg",
    "species:petrified_egg"
];

for eg in eggs {
    <tag:blocks:minecraft:mineable/pickaxe>.add(<block:${eg}>);
}

<tag:blocks:minecraft:mineable/pickaxe>.add(<block:quark:monster_box>);

for skull in skulls {
    <tag:blocks:minecraft:mineable/pickaxe>.add(<block:${skull}>);
}

<tag:blocks:minecraft:mineable/pickaxe>.add(<block:minecraft:beacon>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:minecraft:glowstone>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:minecraft:lever>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:minecraft:sea_lantern>);

<tag:blocks:minecraft:mineable/pickaxe>.add(<block:alexscaves:enigmatic_engine>);






DebugUtil.endScript("/Tags/minecraft/blocks/mineable/pickaxe.zs"); 