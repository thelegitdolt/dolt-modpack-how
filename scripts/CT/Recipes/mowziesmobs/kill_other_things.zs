DebugUtil.startScript("/Recipes/mowziesmobs/kill_other_things.zs/"); 
    

val spears = [
    "mowziesmobs:spear",
    "mowziesmobs:thatch_block",
    "mowziesmobs:naga_fang_dagger"
];

HUtil.hideAll(spears);

for ad in spears {
    craftingTable.remove(<item:${ad}>);
}


DebugUtil.endScript("/Recipes/mowziesmobs/kill_other_things.zs"); 