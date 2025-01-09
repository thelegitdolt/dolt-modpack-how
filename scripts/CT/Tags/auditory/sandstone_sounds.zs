DebugUtil.startScript("/Tags/auditory/sandstone_sounds.zs/"); 
    

var sandstones = [
    "atmospheric:arid_sandstone",
"atmospheric:arid_sandstone_slab",
"atmospheric:arid_sandstone_stairs",
"atmospheric:smooth_arid_sandstone",
"atmospheric:smooth_arid_sandstone_slab",
"atmospheric:smooth_arid_sandstone_stairs",
"atmospheric:cut_arid_sandstone",
"atmospheric:cut_arid_sandstone_slab",
"atmospheric:chiseled_arid_sandstone",
"atmospheric:red_arid_sandstone",
"atmospheric:red_arid_sandstone_slab",
"atmospheric:red_arid_sandstone_stairs",
"atmospheric:smooth_red_arid_sandstone",
"atmospheric:smooth_red_arid_sandstone_slab",
"atmospheric:smooth_red_arid_sandstone_stairs",
"atmospheric:cut_red_arid_sandstone",
"atmospheric:cut_red_arid_sandstone_slab",
"atmospheric:chiseled_red_arid_sandstone"

] as string[];

for thing in sandstones {
    <tag:blocks:auditory:sandstone_sounds>.add(<block:${thing}>);
}



DebugUtil.endScript("/Tags/auditory/sandstone_sounds.zs"); 