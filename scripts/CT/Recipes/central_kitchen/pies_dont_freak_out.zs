DebugUtil.startScript("recipes/central_kitchen/pies_dont_freak_out"); 
    
val pies = [
"create_central_kitchen:pumpkin_cake_slice",
"create_central_kitchen:chocolate_cake_slice",
"create_central_kitchen:passionfruit_cake_slice",
"create_central_kitchen:mulberry_pie_slice",
"create_central_kitchen:sweet_berry_cake_slice",
"create_central_kitchen:honey_cake_slice",
"create_central_kitchen:truffle_pie_slice",
"create_central_kitchen:aloe_cake_slice",
"create_central_kitchen:cherry_pie_slice",
"create_central_kitchen:yucca_cake_slice"]; 

HUtil.hideAll(pies); 

craftingTable.removeByName("create_central_kitchen:crafting/cherry_pie"); 
craftingTable.removeByName("create_central_kitchen:crafting/truffle_pie");

DebugUtil.endScript("recipes/central_kitchen/pies_dont_freak_out"); 