DebugUtil.startScript("recipes/JNE/fossil_fuel_use/"); 
    
RUtil.replaceAll(<item:minecraft:coal> | <item:minecraft:charcoal>, <tag:items:minecraft:coals>, 
    "galosphere:light_stand", "galosphere:chandelier", "endergetic:ender_torch", "caverns_and_chasms:cupric_torch", "minecraft:fire_charge");
DebugUtil.endScript("recipes/JNE/fossil_fuel_use"); 