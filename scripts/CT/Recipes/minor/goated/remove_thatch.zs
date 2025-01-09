DebugUtil.startScript("/Recipes/minor/goated/remove_thatch.zs/"); 
    

val c = ["goated:thatch",
"goated:thatch_slab",
"goated:thatch_stairs"] as string[];

HUtil.hideAll(c);

for a in c {
    craftingTable.remove(<item:${a}>);
}

 


DebugUtil.endScript("/Recipes/minor/goated/remove_thatch.zs"); 