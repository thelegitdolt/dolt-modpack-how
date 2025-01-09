DebugUtil.startScript("/Recipes/suppies/slice_map_change.zs/"); 
    

craftingTable.removeByName("supplementaries:slice_map");

craftingTable.addShaped("slice_map_based", <item:supplementaries:slice_map> * 3, [
    [
        <item:minecraft:map>
    ],
    [
        <item:minecraft:map>
    ],
    [
        <item:minecraft:map>
    ]
]);



DebugUtil.endScript("/Recipes/suppies/slice_map_change.zs"); 