DebugUtil.startScript("recipes/alexscaves/candy_cavity_oooo"); 
    

craftingTable.addShapeless("chocosoda_lol_woo_woo", <item:alexscaves:hot_chocolate_bottle>, [
    <item:alexscaves:block_of_chocolate>, <item:alexscaves:purple_soda_bottle>.transformReplace(<item:minecraft:glass_bottle>), 
    <item:minecraft:sugar>, <item:minecraft:glass_bottle>]);

craftingTable.removeByName("alexscaves:hot_chocolate_bottle");
DebugUtil.endScript("recipes/alexscaves/candy_cavity_oooo"); 