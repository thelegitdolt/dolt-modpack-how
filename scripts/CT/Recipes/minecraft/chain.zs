DebugUtil.startScript("recipes/minecraft/chain"); 
    

craftingTable.removeByName("chain");
craftingTable.removeByName("create:crafting/appliances/chain_from_zinc");
craftingTable.removeByName("caverns_and_chasms:copper_chain");
craftingTable.removeByName("caverns_and_chasms:tin_chain");

doChain("zinc", "minecraft:chain", "create:zinc_nugget");
doChain("copper", "caverns_and_chasms:copper_chain", "caverns_and_chasms:copper_nugget");
doChain("tin", "caverns_and_chasms:tin_chain", "caverns_and_chasms:tin_nugget");
doChain("vanilla", "minecraft:chain", "minecraft:iron_nugget");

function doChain(mat as string, chain as string, nug as string) as void {
    craftingTable.addShaped("chain_" + mat + "_good", <item:${chain}>, [  [<item:${nug}>], [<item:${nug}>]
]);
}

DebugUtil.endScript("recipes/minecraft/chain"); 