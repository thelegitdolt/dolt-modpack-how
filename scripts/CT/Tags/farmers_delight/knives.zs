DebugUtil.startScript("tags/farmers_delight/knives"); 
    
<tag:items:farmersdelight:tools/knives>.add(<item:alexscaves:desolate_dagger>);
<tag:items:farmersdelight:straw_harvesters>.add(<item:alexscaves:desolate_dagger>);
val a = [
    "minecraft:sculk",
    "minecraft:sculk_catalyst",
    "minecraft:sculk_vein",
    "minecraft:sculk_sensor",
    "minecraft:calibrated_sculk_sensor",
    "minecraft:sculk_shrieker"
];

for i in a {
    <tag:blocks:farmersdelight:mineable/knife>.remove(<block:${i}>);
}
DebugUtil.endScript("tags/farmers_delight/knives"); 