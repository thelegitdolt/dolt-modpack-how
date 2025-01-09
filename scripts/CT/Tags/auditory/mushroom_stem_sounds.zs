DebugUtil.startScript("/Tags/auditory/mushroom_stem_sounds.zs/"); 
    

var stems = [
    "quark:glow_shroom_stem"
] as string[];

for thing in stems {
    <tag:blocks:auditory:mushroom_stem_sounds>.add(<block:${thing}>);
}



DebugUtil.endScript("/Tags/auditory/mushroom_stem_sounds.zs"); 