DebugUtil.startScript("recipes/create/windows_goodbye"); 

val list = [
    "create:oak_window",
    "create:spruce_window",
    "create:mangrove_window",
    "create:dark_oak_window",
    "create:acacia_window",
    "create:jungle_window",
    "create:birch_window",
    "create:crimson_window",
    "create:warped_window",
    "create:cherry_window",
    "create:cherry_window_pane",
    "create:bamboo_window",
    "create:bamboo_window_pane",
    "create:oak_window_pane",
    "create:spruce_window_pane",
    "create:birch_window_pane",
    "create:crimson_window_pane",
    "create:warped_window_pane",
    "create:jungle_window_pane",
    "create:acacia_window_pane",
    "create:dark_oak_window_pane",
    "create:mangrove_window_pane",
];

for i in list {
    craftingTable.remove(<item:${i}>); 
}
HUtil.hideAll(list);


DebugUtil.endScript("recipes/create/windows_goodbye"); 