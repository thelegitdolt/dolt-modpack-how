DebugUtil.startScript("recipes/architects_palette/remove_stuff"); 

val die = [
    "architects_palette:dripstone_bricks",
    "architects_palette:dripstone_brick_slab",
    "architects_palette:dripstone_brick_wall",
    "architects_palette:dripstone_brick_stairs",
    "architects_palette:dripstone_pillar"
]; 

HUtil.hideAll(die);
RUtil.removeAll(die);  
RUtil.removeStonecutter(die);  

    

DebugUtil.endScript("recipes/architects_palette/remove_stuff"); 