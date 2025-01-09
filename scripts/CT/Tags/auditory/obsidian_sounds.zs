DebugUtil.startScript("/Tags/auditory/obsidian_sounds.zs/"); 
    

var obby = [
#    "endergetic:activated_mystical_obsidian_activation_rune",
#    "endergetic:mystical_obsidian_activation_rune",
#    "endergetic:mystical_obsidian_rune",
#    "endergetic:mystical_obsidian_wall",
#    "endergetic:acidian_lantern",
#    "endergetic:crystal_holder",
#    "endergetic:mystical_obsidian",
    "quark:matrix_enchanter"    
] as string[];

for ob in obby {
    <tag:blocks:auditory:obsidian_sounds>.add(<block:${ob}>);
}


<tag:blocks:auditory:obsidian_sounds>.add(<tag:blocks:supplementaries:candle_holders>);


DebugUtil.endScript("/Tags/auditory/obsidian_sounds.zs"); 