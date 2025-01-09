DebugUtil.startScript("Recipes/rusticdelight/sweaters_and_hats"); 
    
val boll = <item:rusticdelight:cotton_boll>; 


craftingTable.addShaped("sweater_from_rd_based", <item:etcetera:white_sweater>, [
    [boll, RUtil.air, boll], 
    [boll, boll, boll], 
    [boll, boll, boll]
]); 

craftingTable.addShaped("hat_from_rd_based", <item:etcetera:white_hat>, [
    [boll, boll, boll], 
    [boll, RUtil.air, boll]
]); 

DebugUtil.endScript("Recipes/rusticdelight/sweaters_and_hats"); 