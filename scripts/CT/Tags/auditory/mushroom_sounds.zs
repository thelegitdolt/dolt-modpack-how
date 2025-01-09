DebugUtil.startScript("/Tags/auditory/mushroom_sounds.zs/"); 
    

var mushrooms = [
"quark:glow_shroom_block"
] as string[];

for thing in mushrooms {
    <tag:blocks:auditory:mushroom_sounds>.add(<block:${thing}>);
}



DebugUtil.endScript("/Tags/auditory/mushroom_sounds.zs"); 