DebugUtil.startScript("recipes/create/glass_some_recipes"); 
    
val a = [
    "create:tiled_glass",
    "create:horizontal_framed_glass_pane",
    "create:vertical_framed_glass_pane",
    "create:framed_glass",
    "create:horizontal_framed_glass",
    "create:vertical_framed_glass",
    "create:tiled_glass_pane",
    "create:framed_glass_pane"
];

HUtil.hideAll(a);
RUtil.removeAll(a);
RUtil.removeStonecutter(a);
TUtil.removeItems(a);

DebugUtil.endScript("recipes/create/glass_some_recipes"); 