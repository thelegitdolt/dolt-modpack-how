DebugUtil.startScript("tags/minecraft/blocks/mineable/pickaxe"); 
    

<tag:blocks:minecraft:mineable/pickaxe>.remove(<block:minecraft:budding_amethyst>);

<tag:blocks:forge:glass>.add(<tag:blocks:oreganized:crystal_glass_panes>);
<tag:blocks:forge:glass>.add(<tag:blocks:minecraft:glass_blocks>);
<tag:blocks:forge:glass>.add(<tag:blocks:minecraft:glass_panes>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<tag:blocks:forge:glass>);

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
    "amendments:skull_pile",
    "amendments:skull_candle",
    "amendments:skull_candle_soul",
    "amendments:skull_candle_soul_wall",
    "amendments:skull_candle_wall"
] as string[];

for skull in skulls {
    <tag:blocks:minecraft:mineable/pickaxe>.add(<block:${skull}>);
}

<tag:blocks:minecraft:mineable/pickaxe>.add(<block:minecraft:beacon>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:minecraft:glowstone>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:minecraft:lever>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:minecraft:sea_lantern>);

<tag:blocks:minecraft:mineable/pickaxe>.add(<block:alexscaves:enigmatic_engine>);






DebugUtil.endScript("/Tags/minecraft/blocks/mineable/pickaxe.zs"); 