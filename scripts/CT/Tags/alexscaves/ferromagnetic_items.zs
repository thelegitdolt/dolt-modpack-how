DebugUtil.startScript("Tags/alexscaves/ferromagnetic_items"); 
    
var magnetic_items = [
	"supplementaries:iron_gate",
	"architects_palette:iron_ore_bricks",
	"architects_palette:cracked_iron_ore_bricks",
	"architects_palette:chiseled_iron_ore_bricks",
	"architects_palette:sheet_metal_block",
	"architects_palette:plating_block",
	"architects_palette:pipe",
	"architects_palette:tread_plate",
	"quark:framed_glass",
	"quark:grate",
	"create:iron_sheet",
	"create:crushed_raw_iron",
	"create:ornate_iron_window",
	"create:ornate_iron_window_pane",
	"create:industrial_iron_block",
	"mowziesmobs:wrought_axe",
	"mowziesmobs:wrought_helmet",
	"farmersdelight:netherite_knife",
	"farmersdelight:skillet",
	"abnormals_delight:necromium_knife",
	"caverns_and_chasms:necromium_helmet",
	"caverns_and_chasms:necromium_chestplate",
	"caverns_and_chasms:necromium_leggings",
	"caverns_and_chasms:necromium_boots",
	"savage_and_ravage:cleaver_of_beheading",
	"caverns_and_chasms:necromium_shovel",
	"caverns_and_chasms:necromium_pickaxe",
	"caverns_and_chasms:necromium_axe",
	"caverns_and_chasms:necromium_hoe",
	"caverns_and_chasms:necromium_sword",
	"supplementaries:wind_vane",
	"woodworks:sawmill"
] as string[];

<tag:items:alexscaves:ferromagnetic_items>.add(<tag:items:supplementaries:candle_holders>); 

for item in magnetic_items{
    <tag:items:alexscaves:ferromagnetic_items>.add(<item:${item}>);
}




DebugUtil.endScript("Tags/alexscaves/ferromagnetic_items"); 