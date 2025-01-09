DebugUtil.startScript("/Tags/auditory/stone_ore_sounds.zs/"); 
    

import crafttweaker.api.BracketDumpers;

val ores = [
    "caverns_and_chasms:silver_ore",
    "sullysmod:jade_ore",
    "oreganized:lead_ore",
    "caverns_and_chasms:spinel_ore"
] as string[];

for thing in ores {
    <tag:blocks:auditory:stone_ore_sounds>.add(<block:${thing}>);
    
}





DebugUtil.endScript("/Tags/auditory/stone_ore_sounds.zs"); 