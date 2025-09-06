DebugUtil.startScript("recipes/architects_palette/polished_ice_pipeline"); 

craftingTable.removeByName("windswept:packed_ice_bricks");
RUtil.twoByTwo("packed_ice_from_polished_ice", <item:architects_palette:polished_packed_ice>, <item:windswept:packed_ice_bricks>, 4);

val ices = [
    "architects_palette:chiseled_packed_ice",
    "architects_palette:packed_ice_pillar"
];

RUtil.removeCraftingAndStonecutter(ices);
HUtil.hideAll(ices);

DebugUtil.endScript("recipes/architects_palette/polished_ice_pipeline"); 