DebugUtil.startScript("/Recipes/suppies/kill_altimeter.zs/"); 
    

val a = [
    "supplementaries:altimeter"
]; 

for i in a {
    craftingTable.remove(<item:${i}>);
}

HUtil.hideAll(a);



DebugUtil.endScript("/Recipes/suppies/kill_altimeter.zs"); 