DebugUtil.startScript("recipes/create/bars"); 
    
val brass = <item:create:brass_ingot>;

stoneCutter.remove(<item:create:brass_bars>);
craftingTable.addShaped("brass_bars_vanilla_holyshit", <item:create:brass_bars> * 16, [
    [brass, brass, brass], 
    [brass, brass, brass] 
]); 


DebugUtil.endScript("recipes/create/bars"); 