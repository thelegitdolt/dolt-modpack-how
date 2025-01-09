DebugUtil.startScript("tags/farmers_delight/mineable_knife"); 
    
val fleshies = [
    "caverns_and_chasms:rotten_flesh_block",
    
    "architects_palette:cod_log",
    "architects_palette:salmon_scales",
    "architects_palette:entrails",
    "architects_palette:entrails_slab",
    "architects_palette:entrails_stairs",
    "architects_palette:salmon_log",
    "architects_palette:cod_scales",

    "species:frozen_meat",
    "species:frozen_hair"
]; 

for i in fleshies {
    <tag:blocks:farmersdelight:mineable/knife>.add(<block:${i}>); 
}

val fiberies = [
    "architects_palette:spool"
]; 


for i in fiberies {
    <tag:blocks:farmersdelight:mineable/knife>.add(<block:${i}>); 
}

val foodies = [
    "architects_palette:bread_block",
    "architects_palette:bread_slab"
]; 

for i in foodies {
    <tag:blocks:farmersdelight:mineable/knife>.add(<block:${i}>); 
}

DebugUtil.endScript("tags/farmers_delight/mineable_knife"); 