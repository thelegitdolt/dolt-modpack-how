DebugUtil.startScript("/Recipes/upgrade_aquatic/kill_good_mulberry_foods.zs/"); 
    

val should_die = [
    "upgrade_aquatic:mulberry_bread", "upgrade_aquatic:mulberry_pie", "upgrade_aquatic:mulberry_jam_bottle", "upgrade_aquatic:mulberry_jam_block"
];

HUtil.hideAll(should_die);

for should in should_die {
    craftingTable.remove(<item:${should}>);
}



DebugUtil.endScript("/Recipes/upgrade_aquatic/kill_good_mulberry_foods.zs"); 