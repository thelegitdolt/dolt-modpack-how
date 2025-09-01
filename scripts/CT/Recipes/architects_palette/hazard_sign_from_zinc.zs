DebugUtil.startScript("recipes/architects_palette/hazard_sign_from_zinc"); 

craftingTable.removeByName("architects_palette:hazard_sign");
craftingTable.addShaped("hazard_based", <item:architects_palette:hazard_sign> * 4, [
    [RUtil.air, <item:create:zinc_ingot>, RUtil.air],
    [<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>]
]);

DebugUtil.endScript("recipes/architects_palette/hazard_sign_from_zinc"); 