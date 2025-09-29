DebugUtil.startScript("recipes/windswept/snow_cone_real"); 


craftingTable.removeByName("windswept:minty_snow_cone");
craftingTable.addShapeless("minty_cone_real", <item:windswept:minty_snow_cone>, [
    <item:windswept:pinecone>, <item:windswept:lavender>, <item:neapolitan:mint_leaves>, 
    <item:minecraft:snowball>, <item:minecraft:sugar>]);


DebugUtil.endScript("recipes/windswept/snow_cone_real"); 