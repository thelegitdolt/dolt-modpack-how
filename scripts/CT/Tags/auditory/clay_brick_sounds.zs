DebugUtil.startScript("/Tags/auditory/clay_brick_sounds.zs/"); 
    

val hi = ["farmersdelight:stove",
"clayworks:chiseled_bricks"];

for hello in hi {

    <tag:blocks:auditory:clay_brick_sounds>.add(<block:${hello}>);
}



DebugUtil.endScript("/Tags/auditory/clay_brick_sounds.zs"); 