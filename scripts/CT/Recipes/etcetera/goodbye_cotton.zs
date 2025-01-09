DebugUtil.startScript("recipes/etcetera/goodbye_cotton"); 
    
val list = ["etcetera:cotton_flower",
"etcetera:cotton_seeds"];

HUtil.hideAll(list); 
for i in list {
    craftingTable.remove(<item:${i}>);
    craftingTable.removeByInput(<item:${i}>);
}

DebugUtil.endScript("recipes/etcetera/goodbye_cotton"); 