DebugUtil.startScript("recipes/suppies/gold_gate_remove"); 
    
val stuff_to_die = 
    ["supplementaries:netherite_trapdoor",
    "supplementaries:netherite_door",
    "supplementaries:gold_trapdoor",
    "supplementaries:gold_door"];

RUtil.removeAll(stuff_to_die);
HUtil.hideAll(stuff_to_die); 

DebugUtil.endScript("recipes/suppies/gold_gate_remove"); 