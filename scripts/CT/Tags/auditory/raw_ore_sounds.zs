DebugUtil.startScript("/Tags/auditory/raw_ore_sounds.zs/"); 
    

val raw_ores = [
    "caverns_and_chasms:raw_silver_block"
] as string[];

for thing in raw_ores {
    <tag:blocks:auditory:raw_ore_block_sounds>.add(<block:${thing}>);
}



DebugUtil.endScript("/Tags/auditory/raw_ore_sounds.zs"); 