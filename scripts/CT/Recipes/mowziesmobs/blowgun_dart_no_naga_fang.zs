DebugUtil.startScript("/Recipes/mowziesmobs/blowgun_dart_no_naga_fang.zs/"); 
    

craftingTable.removeByName("mowziesmobs:dart");

craftingTable.addShaped("dart_based", <item:mowziesmobs:dart> * 8, [
    [
        <item:minecraft:fermented_spider_eye>
    ],
    [
        <item:minecraft:stick>
    ],
    [
        <item:minecraft:feather>
    ]
]);


DebugUtil.endScript("/Recipes/mowziesmobs/blowgun_dart_no_naga_fang.zs"); 