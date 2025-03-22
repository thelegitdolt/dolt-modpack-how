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
    "species:frozen_hair",


    "alexscaves:licoroot_sprout",
    "alexscaves:block_of_chocolate",
    "alexscaves:frosted_gingerbread_block",
    "alexscaves:gingerbread_brick_wall",
    "alexscaves:frosted_gingerbread_brick_wall",
    "alexscaves:frosted_gingerbread_brick_stairs",
    "alexscaves:gingerbread_stairs",
    "alexscaves:frosted_gingerbread_door",
    "alexscaves:gingerbread_wall",
    "alexscaves:frosted_gingerbread_brick_slab",
    "alexscaves:block_of_frosting",
    "alexscaves:dough_block",
    "alexscaves:frosted_gingerbread_bricks",
    "alexscaves:block_of_chocolate_frosting",
    "alexscaves:wafer_cookie_wall",
    "alexscaves:block_of_chiseled_chocolate",
    "alexscaves:block_of_vanilla_frosting",
    "alexscaves:gingerbread_slab",
    "alexscaves:gingerbarrel",
    "alexscaves:sweet_puff",
    "alexscaves:frosted_gingerbread_slab",
    "alexscaves:cake_layer",
    "alexscaves:gingerbread_block",
    "alexscaves:gingerbread_brick_stairs",
    "alexscaves:gingerbread_door",
    "alexscaves:licoroot_vine",
    "alexscaves:gingerbread_brick_slab",
    "alexscaves:block_of_polished_chocolate",
    "alexscaves:gingerbread_bricks",
    "alexscaves:frosted_gingerbread_stairs",
    "alexscaves:block_of_frosted_chocolate",
    "alexscaves:frosted_gingerbread_wall"
]; 

for i in fleshies {
    <tag:blocks:farmersdelight:mineable/knife>.add(<block:${i}>); 
}

for color in RUtil.colors {
    if (color != "black") {
        <tag:blocks:farmersdelight:mineable/knife>.add(<block:dye_depot:${color}_dye_basket>);
    }
}
for weirdColor in RUtil.dyeDepotColors {
    <tag:blocks:farmersdelight:mineable/knife>.add(<block:dye_depot:${weirdColor}_dye_basket>);
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