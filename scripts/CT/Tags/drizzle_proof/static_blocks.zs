DebugUtil.startScript("tags/drizzle_proof/static_blocks"); 
    
val eggs = [
    "alexscaves:metal_scaffolding",
    "alexscaves:rusty_scaffolding",
    "minecraft:bamboo", 
    "neapolitan:vanilla_vine",
    "atmospheric:snowy_bamboo" 
];
for egg in eggs {
    <tag:blocks:drizzleproof:static_blocks>.add(<block:${egg}>);
}

<tag:blocks:drizzleproof:static_blocks>.add(<tag:items:forge:ladders>); 

DebugUtil.endScript("tags/drizzle_proof/static_blocks"); 