DebugUtil.startScript("/Tags/minecraft/blocks/mineable/hoe.zs/"); 
    



var froglights = [
    "minecraft:pearlescent_froglight",
    "minecraft:verdant_froglight",
    "minecraft:ochre_froglight",
    "alexscaves:carmine_froglight",
]
 as string[];


 var cacti = [
    "quark:cactus_block",
    "minecraft:cactus",
    "atmospheric:barrel_cactus",
    "atmospheric:barrel_cactus_batch"
]
 as string[];

 <tag:blocks:minecraft:mineable/axe>.remove(<block:atmospheric:barrel_cactus_batch>);

add(cacti);
add(froglights);


function add(hi as string[]) as void {
    for hello in hi {
        <tag:blocks:minecraft:mineable/hoe>.add(<block:${hello}>);
    }
}

<tag:blocks:minecraft:mineable/hoe>.add(<block:minecraft:cocoa>);
 



DebugUtil.endScript("/Tags/minecraft/blocks/mineable/hoe.zs"); 