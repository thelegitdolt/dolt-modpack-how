DebugUtil.startScript("/Recipes/mowziesmobs/kill_painted_acacia.zs/"); 
    

val painted_acacias = [
    "mowziesmobs:painted_acacia",
    "mowziesmobs:painted_acacia_slab"
];

HUtil.hideAll(painted_acacias);

for ad in painted_acacias {
    craftingTable.remove(<item:${ad}>);
}


DebugUtil.endScript("/Recipes/mowziesmobs/kill_painted_acacia.zs"); 