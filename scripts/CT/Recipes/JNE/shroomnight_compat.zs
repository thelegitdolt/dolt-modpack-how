DebugUtil.startScript("recipes/JNE/shroomnight_compat/"); 
    
val recipes = [
    "supplementaries:stone_lamp",
    "supplementaries:blackstone_lamp",
    "supplementaries:deepslate_lamp",
    "supplementaries:end_stone_lamp"
];

RUtil.replaceAll(<item:minecraft:shroomlight>, <tag:items:netherexp:shroomlights>, recipes);

DebugUtil.endScript("recipes/JNE/shroomnight_compat"); 