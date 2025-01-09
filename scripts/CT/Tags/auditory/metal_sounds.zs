DebugUtil.startScript("/Tags/auditory/metal_sounds.zs/"); 
    

var metals = [
    "supplementaries:iron_gate", 
    "quark:grate",
    "supplementaries:relayer",
    "supplementaries:turn_table",
    "neapolitan:vanilla_milkshake_cauldron",
	"neapolitan:strawberry_milkshake_cauldron",
	"neapolitan:chocolate_milkshake_cauldron",
	"neapolitan:mint_milkshake_cauldron",
	"neapolitan:adzuki_milkshake_cauldron",
	"neapolitan:banana_milkshake_cauldron",
	"neapolitan:milk_cauldron",
	"minecraft:water_cauldron",
	"minecraft:powder_snow_cauldron",
	"minecraft:lava_cauldron",
    "quark:magnet","minecraft:blast_furnace", "quark:magnet", "minecraft:powered_rail", "minecraft:detector_rail", "minecraft:rail", "minecraft:activator_rail", "caverns_and_chasms:spiked_rail", "quark:framed_glass", "quark:light_gray_framed_glass", "quark:cyan_framed_glass", "quark:white_framed_glass", "quark:orange_framed_glass", "quark:purple_framed_glass", "quark:blue_framed_glass", "quark:magenta_framed_glass", "quark:light_blue_framed_glass", "quark:brown_framed_glass", "quark:green_framed_glass", "quark:yellow_framed_glass", "quark:lime_framed_glass", "quark:red_framed_glass", "quark:black_framed_glass", "quark:pink_framed_glass", "quark:gray_framed_glass", "supplementaries:wind_vane", "quark:iron_plate", "quark:iron_plate_slab", "quark:iron_plate_stairs", "quark:rusty_iron_plate", "quark:rusty_iron_plate_stairs", "quark:crate", "supplementaries:faucet", "minecraft:cauldron", "quark:purple_framed_glass_pane", "quark:cyan_framed_glass_pane", "quark:white_framed_glass_pane", "quark:orange_framed_glass_pane", "quark:magenta_framed_glass_pane", "quark:blue_framed_glass_pane", "quark:brown_framed_glass_pane", "quark:light_blue_framed_glass_pane", "quark:yellow_framed_glass_pane", "quark:green_framed_glass_pane", "quark:red_framed_glass_pane", "quark:lime_framed_glass_pane", "quark:pink_framed_glass_pane", "quark:black_framed_glass_pane", "quark:gray_framed_glass_pane", "quark:light_gray_framed_glass_pane", "quark:iron_ladder", "minecraft:damaged_anvil", "minecraft:chipped_anvil", "minecraft:anvil"
] as string[];

for met in metals{
    <tag:blocks:auditory:metal_sounds>.add(<block:${met}>);
}


<tag:blocks:auditory:metal_sounds>.add(<tag:blocks:supplementaries:candle_holders>);


DebugUtil.endScript("/Tags/auditory/metal_sounds.zs"); 