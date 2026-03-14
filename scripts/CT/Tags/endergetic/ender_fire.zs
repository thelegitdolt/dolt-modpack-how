#loader tags

TLUtil.startScript("tag/endergetic/ender_fire"); 

val a = [
    "architects_palette:choral_end_stone_bricks",
    "architects_palette:heavy_cracked_end_stone_bricks",
    "architects_palette:heavy_end_stone_bricks",
    "architects_palette:chiseled_end_stone_bricks",
    "supplementaries:end_stone_lamp"
];

for i in a {
    <tag:blocks:endergetic:ender_fire_base_blocks>.addId(<resource:${i}>);
}

TLUtil.endScript("tag/endergetic/ender_fire"); 