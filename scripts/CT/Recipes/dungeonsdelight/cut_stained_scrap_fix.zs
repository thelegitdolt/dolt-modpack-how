DebugUtil.startScript("recipes/dungeonsdelight/cut_stained_scrap_fix"); 
    

craftingTable.removeByName("dungeonsdelight:stained_scrap_chain");
craftingTable.addShaped("stained_scrap_chain_based", <item:dungeonsdelight:stained_scrap_chain>, [
    [<item:dungeonsdelight:stained_scrap_fragment>], [<item:dungeonsdelight:stained_scrap_fragment>]
]);

val block =  <item:dungeonsdelight:stained_scrap_block>; 
craftingTable.removeByName("dungeonsdelight:cut_stained_scrap");

RUtil.twoByTwo(
    "cut_stained_scrap_based", block, <item:dungeonsdelight:cut_stained_scrap>, 16
);

craftingTable.removeByName("dungeonsdelight:stained_scrap_grate");

craftingTable.addShaped("stained_scrap_grate_based", <item:dungeonsdelight:stained_scrap_grate> * 16, [
    [RUtil.air, block, RUtil.air],
    [block, RUtil.air, block],
    [RUtil.air, block, RUtil.air],
]);

DebugUtil.endScript("recipes/dungeonsdelight/cut_stained_scrap_fix"); 