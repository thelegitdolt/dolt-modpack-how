DebugUtil.startScript("recipes/minecraft/chain"); 
    

craftingTable.removeByName("chain");
craftingTable.removeByName("create:crafting/appliances/chain_from_zinc");

craftingTable.addShaped("chain_good", <item:minecraft:chain>, [
    [<item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>]
]);

craftingTable.addShaped("chain_good_zinc", <item:minecraft:chain>, [
    [<item:create:zinc_nugget>],
    [<item:create:zinc_nugget>]
]);

DebugUtil.endScript("recipes/minecraft/chain"); 