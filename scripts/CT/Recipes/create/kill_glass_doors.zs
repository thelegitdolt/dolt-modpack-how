DebugUtil.startScript("recipes/create/kill_glass_doors"); 
    
val doors = [
    "create:framed_glass_door",
    "create:framed_glass_trapdoor"
];

HUtil.hideAll(doors); 
RUtil.removeAll(doors); 

DebugUtil.endScript("recipes/create/kill_glass_doors"); 