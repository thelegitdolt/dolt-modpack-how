DebugUtil.startScript("/Tags/minecraft/blocks/mineable/pickaxe.zs/"); 
    

<tag:blocks:minecraft:mineable/pickaxe>.remove(<block:minecraft:budding_amethyst>);

var glasses = ["minecraft:light_blue_stained_glass_pane",
"minecraft:cyan_stained_glass",
"minecraft:purple_stained_glass_pane",
"minecraft:gray_stained_glass_pane",
"minecraft:magenta_stained_glass_pane",
"upgrade_aquatic:glass_trapdoor",
"minecraft:yellow_stained_glass",
 "minecraft:red_stained_glass_pane",
"upgrade_aquatic:glass_door",
"minecraft:lime_stained_glass",
"minecraft:glass",
"minecraft:purple_stained_glass",
"minecraft:yellow_stained_glass_pane",
"minecraft:cyan_stained_glass_pane",
"minecraft:black_stained_glass_pane",
"minecraft:white_stained_glass_pane",
"minecraft:light_gray_stained_glass_pane",
"minecraft:lime_stained_glass_pane",
"minecraft:gray_stained_glass",
"minecraft:green_stained_glass_pane",
"minecraft:light_gray_stained_glass",
"minecraft:black_stained_glass",
"minecraft:blue_stained_glass_pane",
 "minecraft:brown_stained_glass",
"minecraft:orange_stained_glass",
"minecraft:light_blue_stained_glass",
"minecraft:orange_stained_glass_pane",
"minecraft:glass_pane",
"minecraft:red_stained_glass",
"minecraft:green_stained_glass",
"minecraft:tinted_glass",
"minecraft:brown_stained_glass_pane",
"minecraft:pink_stained_glass_pane",
"minecraft:blue_stained_glass",
"minecraft:magenta_stained_glass",
"minecraft:pink_stained_glass",
"minecraft:white_stained_glass"]
 as string[];

for glass in glasses {
    <tag:blocks:minecraft:mineable/pickaxe>.add(<block:${glass}>);

}

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