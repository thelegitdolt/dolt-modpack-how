DebugUtil.startScript("recipes/minor/camera_better"); 
    
val zinc = <item:create:zinc_ingot>;
val electron_tube = <item:create:electron_tube>;
val amethyst = <item:minecraft:amethyst_shard>;
val button = <tag:items:minecraft:buttons>;
val lever = <item:minecraft:lever>;
val glass = <item:minecraft:glass_pane>;

craftingTable.removeByName("exposure:camera");
craftingTable.addShaped("camera_good", <item:exposure:camera>, [
    [lever, electron_tube, button],
    [zinc, glass, zinc],
    [zinc, amethyst, zinc]
]);
 


DebugUtil.endScript("recipes/minor/camera_better"); 