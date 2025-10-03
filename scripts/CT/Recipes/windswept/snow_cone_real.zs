DebugUtil.startScript("recipes/windswept/snow_cone_real"); 


craftingTable.removeByName("windswept:minty_snow_cone");
craftingTable.removeByName("windswept_delights:snow_cone");

craftingTable.removeByName("windswept_delights:chocolate_snow_cone");
HUtil.hide(<item:windswept_delights:chocolate_snow_cone>);

craftingTable.addShapeless("minty_cone_real", <item:windswept:minty_snow_cone>, [
    <item:windswept:pinecone>, <item:windswept:lavender>, <item:neapolitan:mint_leaves>, 
    <item:minecraft:snowball>, <item:minecraft:sugar>]);

craftingTable.addShapeless("vanilla_cone_real", <item:windswept_delights:snow_cone>, [
    <item:windswept:pinecone>, <item:minecraft:honey_bottle>, <item:neapolitan:dried_vanilla_pods>, 
    <item:minecraft:snowball>, <item:minecraft:sugar>]);




DebugUtil.endScript("recipes/windswept/snow_cone_real"); 