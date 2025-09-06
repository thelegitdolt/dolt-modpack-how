DebugUtil.startScript("/Tags/auditory/obsidian_sounds.zs/"); 
    

var obby = [
    "minecraft:obsidian",
    "minecraft:crying_obsidian",
    "minecraft:respawn_anchor",
    "minecraft:enchanting_table",
    "minecraft:ender_chest",
    "ditr:obsidian_diamond_ore",
    "quark:obsidian_pressure_plate",
    "endergetic:activated_mystical_obsidian_activation_rune",
    "endergetic:mystical_obsidian_activation_rune",
    "endergetic:mystical_obsidian_rune",
    "endergetic:mystical_obsidian_wall",
    "endergetic:acidian_lantern",
    "endergetic:crystal_holder",
    "endergetic:mystical_obsidian",
    "quark:matrix_enchanter"    
] as string[];

for ob in obby {
    <tag:blocks:auditory:obsidian_sounds>.add(<block:${ob}>);
}




DebugUtil.endScript("/Tags/auditory/obsidian_sounds.zs"); 