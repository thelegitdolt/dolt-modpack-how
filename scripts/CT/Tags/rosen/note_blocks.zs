DebugUtil.startScript("Tags/rosen/note_blocks"); 
    
import crafttweaker.api.resource.ResourceLocation;

val vibe = [
    "minecraft:prismarine_stairs",
    "minecraft:prismarine_slab",
    "minecraft:prismarine_wall",
    "minecraft:prismarine_brick_stairs",
    "minecraft:prismarine_brick_slab",
    "minecraft:dark_prismarine_stairs",
    "minecraft:dark_prismarine_slab",
    "upgrade_aquatic:luminous_prismarine",
    "upgrade_aquatic:luminous_prismarine_stairs",
    "upgrade_aquatic:luminous_prismarine_slab",
    "upgrade_aquatic:prismarine_rod_bundle",
    "upgrade_aquatic:prismarine_coral_block",
    "upgrade_aquatic:elder_prismarine_coral_block"
];

for i in vibe {
    <tag:blocks:rosen:vibraphone_noteblocks>.add(<block:${i}>);
}


val violin = [
    "architects_palette:coarse_snow",
    "alexscaves:sweetberry_ice_cream",
    "alexscaves:chocolate_ice_cream",
    "alexscaves:vanilla_ice_cream",
    "neapolitan:mint_ice_cream_block",
    "neapolitan:banana_ice_cream_block",
    "neapolitan:strawberry_ice_cream_block",
    "neapolitan:chocolate_ice_cream_block",
    "neapolitan:vanilla_ice_cream_block",
    "windswept:snow_brick_wall",
    "windswept:snow_stairs",
    "windswept:snow_slab",
    "windswept:snow_bricks",
    "windswept:snow_brick_slab",
    "windswept:snow_brick_stairs",
    "windswept:suspicious_snow"
];

for i in violin {
    <tag:blocks:rosen:violin_noteblocks>.add(<block:${i}>);
}


val timpani = [
    "quark:mud_pillar",
    "quark:mud_brick_lattice",
    "minecraft:mud_brick_slab",
    "minecraft:mud_brick_wall",
    "minecraft:mud_brick_stairs",
    "minecraft:mud_bricks",
    "environmental:smooth_mud_slab",
    "environmental:smooth_mud",
    "clayworks:kiln"
];

for i in timpani {
    <tag:blocks:rosen:timpani_noteblocks>.add(<block:${i}>);
}

val synth = [
    "endergetic:cracked_purpur_block",
    "minecraft:purpur_stairs",
    "minecraft:purpur_slab",
    "quark:duskbound_block",
    "quark:duskbound_block_slab",
    "quark:duskbound_lantern",
    "quark:duskbound_block_stairs"
];

for i in synth {
    <tag:blocks:rosen:synth_noteblocks>.add(<block:${i}>);
}

val synth_bass = [
    
    "netherexp:shroomnight",
    "species:alphacene_mushroom_block",
    "quark:glow_shroom_block"
];

for i in synth_bass {
    <tag:blocks:rosen:synth_bass_noteblocks>.add(<block:${i}>);
}

<tag:blocks:rosen:power_guitar_noteblocks>.add(<block:quark:charcoal_block>);
# add placeable C&C coal here

val piano = [
    "netherexp:cracked_quartz_bricks",
    "netherexp:chiseled_quartz_pillar"
];

for i in piano {
    <tag:blocks:rosen:piano_noteblocks>.add(<block:${i}>);
}

val organ = [
    "minecraft:nether_brick_stairs",
    "minecraft:nether_brick_slab",
    "minecraft:nether_brick_wall",
    "minecraft:nether_brick_fence",
    "quark:nether_brick_fence_gate",
    "minecraft:red_nether_brick_stairs",
    "minecraft:red_nether_brick_slab",
    "minecraft:red_nether_brick_wall",
    "netherexp:smooth_netherrack",
    "netherexp:netherrack_brick_stairs",
    "netherexp:netherrack_brick_slab",
    "netherexp:netherrack_brick_wall",
    "netherexp:smooth_netherrack_slab",
    "netherexp:smooth_netherrack_stairs",
    "netherexp:smooth_netherrack_wall",
    "netherexp:netherrack_tiles",
    "netherexp:netherrack_pillar",
    "netherexp:netherrack_bricks",
    "netherexp:nether_brick_pillar",
    "netherexp:red_mixed_nether_bricks",
    "netherexp:blue_mixed_nether_bricks",
    "netherexp:blue_nether_bricks",
    "netherexp:blue_nether_brick_stairs",
    "netherexp:blue_nether_brick_slab",
    "netherexp:blue_nether_brick_wall"
];

for i in organ {
    <tag:blocks:rosen:organ_noteblocks>.add(<block:${i}>);
}

val music_box = [
    "caverns_and_chasms:lapis_bricks",
    "caverns_and_chasms:lapis_lamp",
    "caverns_and_chasms:lapis_brick_stairs",
    "caverns_and_chasms:lapis_brick_slab",
    "caverns_and_chasms:lapis_brick_wall"
];

for i in music_box {
    <tag:blocks:rosen:music_box_noteblocks>.add(<block:${i}>);
}

val log_drum = [

    "minecraft:bamboo_stairs",
    "minecraft:bamboo_mosaic_stairs",
    "minecraft:bamboo_slab",
    "minecraft:bamboo_mosaic_slab",
    "quark:bamboo_post",
    "quark:stripped_bamboo_post",
    "minecraft:bamboo_fence",
    "minecraft:bamboo_fence_gate",
    "minecraft:bamboo_trapdoor",
    "minecraft:bamboo_pressure_plate",
    "minecraft:bamboo_button",
    "minecraft:bamboo_door",
    "woodworks:bamboo_ladder",
    "woodworks:bamboo_bookshelf",
    "woodworks:bamboo_beehive",
    "woodworks:chiseled_bamboo_bookshelf",
    "woodworks:bamboo_closet",
    "minecraft:bamboo_sign",
    "minecraft:bamboo_hanging_sign",
    "woodworks:trapped_bamboo_closet",
    "farmersdelight:bamboo_cabinet",
    "minecraft:scaffolding",
    "farmersdelight:basket"
];

for i in log_drum {
    <tag:blocks:rosen:log_drum_noteblocks>.add(<block:${i}>);
}

tag("kick", "architects_palette:chiseled_end_stone_bricks",
    "architects_palette:heavy_end_stone_bricks",
    "architects_palette:heavy_cracked_end_stone_bricks",
    "supplementaries:end_stone_lamp",
    "architects_palette:choral_end_stone_bricks",
    "endergetic:chiseled_end_stone_bricks",
    "minecraft:end_stone_brick_wall",
    "endergetic:cracked_end_stone_bricks",
    "minecraft:end_stone_brick_stairs",
    "minecraft:end_stone_brick_slab");

tag("dholak", "dye_the_world:tan_decorated_pot", "dye_the_world:teal_decorated_pot", "dye_the_world:navy_decorated_pot", "dye_the_world:mint_decorated_pot", "dye_the_world:olive_decorated_pot", "dye_the_world:verdant_decorated_pot", "dye_the_world:rose_decorated_pot", "dye_the_world:maroon_decorated_pot", "dye_the_world:slate_decorated_pot", "dye_the_world:indigo_decorated_pot", "dye_the_world:ginger_decorated_pot", "dye_the_world:forest_decorated_pot", "dye_the_world:coral_decorated_pot", "clayworks:magenta_decorated_pot", "clayworks:pink_decorated_pot", "dye_the_world:amber_decorated_pot", "dye_the_world:aqua_decorated_pot", "dye_the_world:beige_decorated_pot", "clayworks:purple_decorated_pot", "clayworks:blue_decorated_pot", "clayworks:light_blue_decorated_pot", "clayworks:cyan_decorated_pot", "clayworks:green_decorated_pot", "clayworks:brown_decorated_pot", "clayworks:red_decorated_pot", "clayworks:white_decorated_pot", "clayworks:light_gray_decorated_pot", "clayworks:orange_decorated_pot", "clayworks:yellow_decorated_pot", "clayworks:gray_decorated_pot", "clayworks:black_decorated_pot", "clayworks:lime_decorated_pot", "dye_the_world:amber_terracotta_bricks", "dye_the_world:aqua_terracotta_bricks", "dye_the_world:beige_terracotta_bricks", "dye_the_world:coral_terracotta_bricks", "dye_the_world:forest_terracotta_bricks", "dye_the_world:mint_terracotta_bricks", "dye_the_world:navy_terracotta_bricks", "dye_the_world:teal_terracotta_bricks", "dye_the_world:tan_terracotta_bricks", "dye_the_world:slate_terracotta_bricks", "dye_the_world:maroon_terracotta_bricks", "dye_the_world:indigo_terracotta_bricks", "dye_the_world:rose_terracotta_bricks", "dye_the_world:olive_terracotta_bricks", "dye_the_world:ginger_terracotta_bricks", "dye_the_world:verdant_terracotta_bricks", "dye_the_world:amber_terracotta_brick_slab", "dye_the_world:aqua_terracotta_brick_slab", "dye_the_world:beige_terracotta_brick_slab", "dye_the_world:coral_terracotta_brick_slab", "dye_the_world:mint_terracotta_brick_slab", "dye_the_world:maroon_terracotta_brick_slab", "dye_the_world:indigo_terracotta_brick_slab", "dye_the_world:ginger_terracotta_brick_slab", "dye_the_world:forest_terracotta_brick_slab", "dye_the_world:navy_terracotta_brick_slab", "dye_the_world:olive_terracotta_brick_slab", "dye_the_world:rose_terracotta_brick_slab", "dye_the_world:slate_terracotta_brick_slab", "dye_the_world:tan_terracotta_brick_slab", "dye_the_world:beige_terracotta_brick_stairs", "dye_the_world:aqua_terracotta_brick_stairs", "dye_the_world:amber_terracotta_brick_stairs", "dye_the_world:verdant_terracotta_brick_slab", "dye_the_world:teal_terracotta_brick_slab", "dye_the_world:coral_terracotta_brick_stairs", "dye_the_world:forest_terracotta_brick_stairs", "dye_the_world:mint_terracotta_brick_stairs", "dye_the_world:navy_terracotta_brick_stairs", "dye_the_world:olive_terracotta_brick_stairs", "dye_the_world:ginger_terracotta_brick_stairs", "dye_the_world:indigo_terracotta_brick_stairs", "dye_the_world:rose_terracotta_brick_stairs", "dye_the_world:slate_terracotta_brick_stairs", "dye_the_world:maroon_terracotta_brick_stairs", "dye_the_world:indigo_terracotta_brick_wall", "dye_the_world:ginger_terracotta_brick_wall", "dye_the_world:aqua_terracotta_brick_wall", "dye_the_world:amber_terracotta_brick_wall", "dye_the_world:verdant_terracotta_brick_stairs", "dye_the_world:forest_terracotta_brick_wall", "dye_the_world:coral_terracotta_brick_wall", "dye_the_world:teal_terracotta_brick_stairs", "dye_the_world:tan_terracotta_brick_stairs", "dye_the_world:beige_terracotta_brick_wall", "dye_the_world:maroon_terracotta_brick_wall", "dye_the_world:mint_terracotta_brick_wall", "dye_the_world:navy_terracotta_brick_wall", "dye_the_world:olive_terracotta_brick_wall", "dye_the_world:rose_terracotta_brick_wall", "dye_the_world:mint_terracotta_wall", "dye_the_world:tan_terracotta_wall", "dye_depot:coral_terracotta", "dye_depot:olive_terracotta", "dye_depot:aqua_terracotta", "dye_depot:maroon_glazed_terracotta", "dye_depot:amber_glazed_terracotta", "dye_depot:mint_glazed_terracotta", "dye_depot:aqua_glazed_terracotta", "dye_depot:olive_glazed_terracotta", "dye_depot:coral_glazed_terracotta", "dye_depot:slate_terracotta", "dye_depot:forest_terracotta", "dye_depot:ginger_terracotta", "dye_the_world:teal_terracotta_wall", "dye_the_world:navy_terracotta_wall", "dye_the_world:olive_terracotta_wall", "dye_the_world:verdant_terracotta_wall", "dye_depot:tan_terracotta", "dye_depot:verdant_terracotta", "dye_depot:navy_terracotta", "dye_depot:ginger_glazed_terracotta", "dye_depot:forest_glazed_terracotta", "dye_depot:slate_glazed_terracotta", "dye_depot:navy_glazed_terracotta", "dye_depot:verdant_glazed_terracotta", "dye_depot:tan_glazed_terracotta", "dye_depot:indigo_terracotta", "dye_depot:teal_terracotta", "dye_depot:beige_terracotta", "dye_depot:rose_terracotta", "dye_the_world:rose_terracotta_wall", "dye_the_world:slate_terracotta_wall", "dye_depot:maroon_terracotta", "dye_depot:amber_terracotta", "dye_depot:mint_terracotta", "dye_depot:rose_glazed_terracotta", "dye_depot:beige_glazed_terracotta", "dye_depot:teal_glazed_terracotta", "dye_depot:indigo_glazed_terracotta", "dye_the_world:slate_terracotta_brick_wall", "dye_the_world:chiseled_indigo_terracotta_bricks", "dye_the_world:chiseled_rose_terracotta_bricks", "dye_the_world:chiseled_aqua_terracotta_bricks", "dye_the_world:amber_terracotta_slab", "dye_the_world:ginger_terracotta_slab", "dye_the_world:olive_terracotta_slab", "dye_the_world:verdant_terracotta_slab", "dye_the_world:forest_terracotta_stairs", "dye_the_world:navy_terracotta_stairs", "dye_the_world:coral_terracotta_wall", "dye_the_world:forest_terracotta_wall", "dye_the_world:verdant_terracotta_stairs", "dye_the_world:teal_terracotta_stairs", "dye_the_world:olive_terracotta_stairs", "dye_the_world:rose_terracotta_stairs", "dye_the_world:amber_terracotta_wall", "dye_the_world:ginger_terracotta_wall", "dye_the_world:indigo_terracotta_wall", "dye_the_world:slate_terracotta_stairs", "dye_the_world:aqua_terracotta_wall", "dye_the_world:beige_terracotta_wall", "dye_the_world:maroon_terracotta_wall", "dye_the_world:maroon_terracotta_stairs", "dye_the_world:tan_terracotta_stairs", "dye_the_world:mint_terracotta_stairs", "dye_the_world:ginger_terracotta_stairs", "dye_the_world:amber_terracotta_stairs", "dye_the_world:indigo_terracotta_stairs", "dye_the_world:beige_terracotta_stairs", "dye_the_world:aqua_terracotta_stairs", "dye_the_world:coral_terracotta_stairs", "dye_the_world:teal_terracotta_slab", "dye_the_world:tan_terracotta_slab", "dye_the_world:slate_terracotta_slab", "dye_the_world:rose_terracotta_slab", "dye_the_world:indigo_terracotta_slab", "dye_the_world:maroon_terracotta_slab", "dye_the_world:mint_terracotta_slab", "dye_the_world:navy_terracotta_slab", "dye_the_world:forest_terracotta_slab", "dye_the_world:coral_terracotta_slab", "dye_the_world:beige_terracotta_slab", "dye_the_world:aqua_terracotta_slab", "dye_the_world:chiseled_mint_terracotta_bricks", "dye_the_world:chiseled_tan_terracotta_bricks", "dye_the_world:chiseled_slate_terracotta_bricks", "dye_the_world:chiseled_maroon_terracotta_bricks", "dye_the_world:chiseled_beige_terracotta_bricks", "dye_the_world:tan_terracotta_brick_wall", "dye_the_world:teal_terracotta_brick_wall", "dye_the_world:chiseled_coral_terracotta_bricks", "dye_the_world:chiseled_forest_terracotta_bricks", "dye_the_world:chiseled_navy_terracotta_bricks", "dye_the_world:chiseled_teal_terracotta_bricks", "dye_the_world:chiseled_verdant_terracotta_bricks", "dye_the_world:chiseled_olive_terracotta_bricks", "dye_the_world:chiseled_ginger_terracotta_bricks", "dye_the_world:verdant_terracotta_brick_wall", "dye_the_world:chiseled_amber_terracotta_bricks", "clayworks:terracotta_bricks", "clayworks:brown_terracotta_bricks", "clayworks:green_terracotta_bricks", "clayworks:magenta_terracotta_bricks", "clayworks:chiseled_gray_terracotta_bricks", "clayworks:chiseled_yellow_terracotta_bricks", "clayworks:chiseled_blue_terracotta_bricks", "clayworks:white_terracotta_brick_stairs", "clayworks:red_terracotta_brick_stairs", "clayworks:cyan_terracotta_brick_stairs", "clayworks:pink_terracotta_brick_stairs", "clayworks:black_terracotta_brick_slab", "clayworks:brown_terracotta_brick_slab", "clayworks:terracotta_brick_slab", "clayworks:light_blue_terracotta_brick_stairs", "clayworks:orange_terracotta_brick_stairs", "clayworks:light_gray_terracotta_brick_stairs", "clayworks:chiseled_purple_terracotta_bricks", "clayworks:chiseled_lime_terracotta_bricks", "clayworks:chiseled_black_terracotta_bricks", "clayworks:pink_terracotta_bricks", "clayworks:cyan_terracotta_bricks", "clayworks:red_terracotta_bricks", "clayworks:white_terracotta_bricks", "clayworks:light_gray_terracotta_bricks", "clayworks:orange_terracotta_bricks", "clayworks:chiseled_terracotta_bricks", "clayworks:light_blue_terracotta_bricks", "clayworks:chiseled_brown_terracotta_bricks", "clayworks:chiseled_green_terracotta_bricks", "clayworks:chiseled_magenta_terracotta_bricks", "clayworks:gray_terracotta_brick_stairs", "clayworks:blue_terracotta_brick_stairs", "clayworks:yellow_terracotta_brick_stairs", "clayworks:white_terracotta_brick_slab", "clayworks:red_terracotta_brick_slab", "clayworks:orange_terracotta_brick_slab", "clayworks:light_gray_terracotta_brick_slab", "clayworks:purple_terracotta_brick_stairs", "clayworks:lime_terracotta_brick_stairs", "clayworks:green_terracotta_brick_stairs", "clayworks:magenta_terracotta_brick_stairs", "clayworks:gray_terracotta_brick_slab", "clayworks:yellow_terracotta_brick_slab", "clayworks:brown_terracotta_brick_stairs", "clayworks:black_terracotta_brick_stairs", "clayworks:terracotta_brick_stairs", "clayworks:chiseled_pink_terracotta_bricks", "clayworks:chiseled_cyan_terracotta_bricks", "clayworks:chiseled_light_blue_terracotta_bricks", "clayworks:chiseled_orange_terracotta_bricks", "clayworks:chiseled_red_terracotta_bricks", "clayworks:chiseled_white_terracotta_bricks", "clayworks:chiseled_light_gray_terracotta_bricks", "clayworks:purple_terracotta_bricks", "clayworks:blue_terracotta_bricks", "clayworks:yellow_terracotta_bricks", "clayworks:lime_terracotta_bricks", "clayworks:black_terracotta_bricks", "clayworks:gray_terracotta_bricks", "clayworks:yellow_terracotta_slab", "clayworks:gray_terracotta_slab", "clayworks:black_terracotta_slab", "clayworks:purple_terracotta_slab", "clayworks:blue_terracotta_slab", "clayworks:magenta_terracotta_slab", "clayworks:green_terracotta_slab", "clayworks:lime_terracotta_slab", "clayworks:brown_terracotta_slab", "clayworks:terracotta_slab", "clayworks:pink_terracotta_stairs", "clayworks:magenta_terracotta_stairs", "clayworks:green_terracotta_stairs", "clayworks:cyan_terracotta_stairs", "clayworks:light_blue_terracotta_stairs", "clayworks:blue_terracotta_stairs", "clayworks:white_terracotta_slab", "clayworks:red_terracotta_slab", "clayworks:cyan_terracotta_slab", "clayworks:pink_terracotta_slab", "clayworks:terracotta_wall", "clayworks:light_blue_terracotta_slab", "clayworks:orange_terracotta_slab", "clayworks:light_gray_terracotta_slab", "clayworks:purple_terracotta_stairs", "clayworks:lime_terracotta_stairs", "clayworks:yellow_terracotta_stairs", "clayworks:orange_terracotta_stairs", "clayworks:red_terracotta_stairs", "clayworks:brown_terracotta_stairs", "clayworks:terracotta_stairs", "clayworks:light_gray_terracotta_stairs", "clayworks:white_terracotta_stairs", "clayworks:gray_terracotta_stairs", "clayworks:black_terracotta_stairs", "clayworks:pink_terracotta_brick_wall", "clayworks:magenta_terracotta_brick_wall", "clayworks:purple_terracotta_brick_wall", "clayworks:blue_terracotta_brick_wall", "clayworks:light_blue_terracotta_brick_wall", "clayworks:orange_terracotta_brick_wall", "clayworks:yellow_terracotta_brick_wall", "clayworks:lime_terracotta_brick_wall", "clayworks:green_terracotta_brick_wall", "clayworks:cyan_terracotta_brick_wall", "clayworks:red_terracotta_brick_wall", "clayworks:black_terracotta_brick_wall", "clayworks:gray_terracotta_brick_wall", "clayworks:light_gray_terracotta_brick_wall", "clayworks:purple_terracotta_brick_slab", "clayworks:magenta_terracotta_brick_slab", "clayworks:pink_terracotta_brick_slab", "clayworks:brown_terracotta_brick_wall", "clayworks:terracotta_brick_wall", "clayworks:white_terracotta_brick_wall", "clayworks:blue_terracotta_brick_slab", "clayworks:light_blue_terracotta_brick_slab", "clayworks:cyan_terracotta_brick_slab", "clayworks:green_terracotta_brick_slab", "clayworks:lime_terracotta_brick_slab", "clayworks:white_terracotta_wall", "clayworks:red_terracotta_wall", "clayworks:cyan_terracotta_wall", "clayworks:pink_terracotta_wall", "clayworks:glazed_terracotta", "clayworks:light_blue_terracotta_wall", "clayworks:orange_terracotta_wall", "clayworks:light_gray_terracotta_wall", "clayworks:gray_terracotta_wall", "clayworks:yellow_terracotta_wall", "clayworks:blue_terracotta_wall", "clayworks:purple_terracotta_wall", "clayworks:lime_terracotta_wall", "clayworks:black_terracotta_wall", "clayworks:brown_terracotta_wall", "clayworks:green_terracotta_wall", "clayworks:magenta_terracotta_wall", "minecraft:lime_glazed_terracotta", "etcetera:terracotta_vase");

tag("choir", "minecraft:sculk_vein",
"minecraft:calibrated_sculk_sensor",
"netherexp:sculk_grinder",
"dungeonsdelight:sculk_mayo_block",
"dungeonsdelight:sculk_tart",
"minecraft:sculk_shrieker",
"minecraft:sculk_sensor",
"dungeonsdelight:heap_of_ancient_eggs",
"dungeonsdelight:embedded_eggs",
"dolt_mod_how:wardenzola");

tag("chime", 
    "minecraft:large_amethyst_bud",
    "minecraft:medium_amethyst_bud",
    "caverns_and_chasms:cut_amethyst_brick_slab",
    "caverns_and_chasms:cut_amethyst_brick_wall",
    "minecraft:amethyst_cluster",
    "caverns_and_chasms:amethyst_block",
    "caverns_and_chasms:cut_amethyst",
    "caverns_and_chasms:cut_amethyst_bricks",
    "caverns_and_chasms:cut_amethyst_brick_stairs",
    "minecraft:small_amethyst_bud");

tag("carillon", 
"caverns_and_chasms:chiseled_copper_bricks",
"caverns_and_chasms:copper_brick_wall",
"caverns_and_chasms:copper_bricks",
"caverns_and_chasms:copper_brick_stairs",
"caverns_and_chasms:copper_brick_slab",
"caverns_and_chasms:copper_button",
"caverns_and_chasms:weathered_copper_bricks",
"caverns_and_chasms:weathered_copper_brick_stairs",
"caverns_and_chasms:weathered_copper_brick_slab",
"caverns_and_chasms:weathered_copper_brick_wall",
"caverns_and_chasms:weathered_chiseled_copper_bricks",
"caverns_and_chasms:weathered_copper_bars",
"caverns_and_chasms:weathered_copper_button",
"caverns_and_chasms:oxidized_chiseled_copper_bricks",
"caverns_and_chasms:oxidized_copper_bars",
"caverns_and_chasms:oxidized_copper_button",
"caverns_and_chasms:oxidized_copper_brick_stairs",
"caverns_and_chasms:oxidized_copper_bricks",
"caverns_and_chasms:oxidized_copper_brick_wall",
"caverns_and_chasms:oxidized_copper_brick_slab",
"caverns_and_chasms:exposed_chiseled_copper_bricks",
"caverns_and_chasms:exposed_copper_bricks",
"caverns_and_chasms:exposed_copper_brick_wall",
"caverns_and_chasms:exposed_copper_brick_slab",
"caverns_and_chasms:exposed_copper_brick_stairs",
"caverns_and_chasms:exposed_copper_button",
"caverns_and_chasms:waxed_copper_bricks",
"caverns_and_chasms:waxed_copper_brick_stairs",
"caverns_and_chasms:waxed_copper_brick_slab",
"caverns_and_chasms:waxed_copper_brick_wall",
"caverns_and_chasms:waxed_chiseled_copper_bricks",
"caverns_and_chasms:waxed_copper_bars",
"caverns_and_chasms:waxed_copper_button",
"caverns_and_chasms:waxed_exposed_copper_bars",
"caverns_and_chasms:waxed_exposed_chiseled_copper_bricks",
"caverns_and_chasms:waxed_exposed_copper_brick_wall",
"caverns_and_chasms:waxed_exposed_copper_bricks",
"caverns_and_chasms:waxed_exposed_copper_brick_stairs",
"caverns_and_chasms:waxed_exposed_copper_brick_slab",
"caverns_and_chasms:waxed_exposed_copper_button",
"caverns_and_chasms:exposed_copper_bars",
"caverns_and_chasms:copper_bars",
"caverns_and_chasms:waxed_oxidized_copper_bars",
"caverns_and_chasms:waxed_oxidized_copper_button",
"caverns_and_chasms:waxed_oxidized_copper_brick_stairs",
"caverns_and_chasms:waxed_oxidized_copper_bricks",
"caverns_and_chasms:waxed_weathered_copper_brick_slab",
"caverns_and_chasms:waxed_weathered_copper_brick_wall",
"caverns_and_chasms:waxed_weathered_chiseled_copper_bricks",
"caverns_and_chasms:waxed_oxidized_copper_brick_slab",
"caverns_and_chasms:waxed_oxidized_copper_brick_wall",
"caverns_and_chasms:waxed_oxidized_chiseled_copper_bricks",
"caverns_and_chasms:waxed_weathered_copper_button",
"caverns_and_chasms:waxed_weathered_copper_bars",
"caverns_and_chasms:waxed_weathered_copper_bricks",
"caverns_and_chasms:waxed_weathered_copper_brick_stairs",
"quark:raw_copper_bricks_wall",
"quark:pipe",
"quark:encased_pipe",
"create:copper_casing",
"alexscaves:copper_valve",
"create:copper_table_cloth",
"create:copper_ladder",
"caverns_and_chasms:waxed_weathered_lightning_rod",
"caverns_and_chasms:waxed_exposed_lightning_rod",
"minecraft:lightning_rod",
"caverns_and_chasms:exposed_lightning_rod",
"caverns_and_chasms:weathered_lightning_rod",
"caverns_and_chasms:waxed_oxidized_lightning_rod",
"caverns_and_chasms:oxidized_lightning_rod",
"caverns_and_chasms:waxed_lightning_rod",
"caverns_and_chasms:waxed_floodlight",
"caverns_and_chasms:waxed_exposed_floodlight",
"caverns_and_chasms:waxed_weathered_floodlight",
"caverns_and_chasms:waxed_oxidized_floodlight",
"caverns_and_chasms:weathered_floodlight",
"caverns_and_chasms:oxidized_floodlight",
"caverns_and_chasms:exposed_floodlight",
"caverns_and_chasms:floodlight",
"caverns_and_chasms:toolbox",
"caverns_and_chasms:waxed_exposed_toolbox",
"caverns_and_chasms:waxed_weathered_toolbox",
"caverns_and_chasms:exposed_toolbox",
"caverns_and_chasms:weathered_toolbox",
"caverns_and_chasms:waxed_oxidized_toolbox",
"caverns_and_chasms:oxidized_toolbox",
"caverns_and_chasms:waxed_toolbox",
"farmersrespite:kettle",
"supplementaries:cog_block",
"create:fluid_pipe",
"create:fluid_tank",
"create:portable_fluid_interface",
"create:fluid_valve",
"create:smart_fluid_pipe",
"create:copper_backtank",
"minecraft:cut_copper_slab",
"minecraft:cut_copper_stairs",
"minecraft:waxed_cut_copper_slab",
"minecraft:waxed_cut_copper_stairs",
"minecraft:oxidized_cut_copper_slab",
"minecraft:oxidized_cut_copper_stairs",
"minecraft:exposed_cut_copper_stairs",
"minecraft:exposed_cut_copper_slab",
"minecraft:weathered_cut_copper",
"minecraft:weathered_cut_copper_stairs",
"minecraft:waxed_oxidized_cut_copper",
"minecraft:waxed_oxidized_cut_copper_stairs",
"minecraft:waxed_weathered_cut_copper_stairs",
"minecraft:waxed_weathered_cut_copper_slab");

tag("beach", "upgrade_aquatic:dead_petal_coral_block",
"upgrade_aquatic:dead_acan_coral_block",
"upgrade_aquatic:dead_branch_coral_block",
"upgrade_aquatic:dead_rock_coral_block",
"upgrade_aquatic:dead_finger_coral_block",
"upgrade_aquatic:dead_star_coral_block",
"upgrade_aquatic:dead_pillow_coral_block",
"upgrade_aquatic:dead_silk_coral_block",
"upgrade_aquatic:dead_moss_coral_block",
"upgrade_aquatic:dead_chrome_coral_block");

tag("accordion", "buzzier_bees:honeycomb_bricks",
    "buzzier_bees:honeycomb_brick_stairs",
    "buzzier_bees:honeycomb_brick_slab",
    "buzzier_bees:honeycomb_tile_slab",
    "buzzier_bees:honeycomb_tile_stairs",
    "buzzier_bees:honeycomb_tiles",
    "buzzier_bees:crystallized_honey_block",
    "buzzier_bees:honeycomb_trapdoor",
    "buzzier_bees:honeycomb_door",
    "buzzier_bees:chiseled_honeycomb_bricks",
    "buzzier_bees:honeycomb_brick_wall",
    "buzzier_bees:honeycomb_tile_wall",
    "buzzier_bees:honey_lamp");

function tag(instrument as string, blocks... as string[]) as void {
    val a = <tagmanager:blocks>.tag(new ResourceLocation("rosen", instrument + "_noteblocks"));
    for i in blocks {
        a.add(<block:${i}>);
    }
}

DebugUtil.endScript("Tags/rosen/note_blocks"); 