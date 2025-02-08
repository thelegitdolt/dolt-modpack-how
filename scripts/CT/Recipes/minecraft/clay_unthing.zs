DebugUtil.startScript("/Recipes/minecraft/clay.zs.disabled/"); 

val star = <item:minecraft:clay_ball>;
RUtil.oneToOneConversion("clay_compress_good", star, <item:minecraft:clay>, 4);

RUtil.cut.removeByName("farmersdelight:cutting/clay");

DebugUtil.endScript("/Recipes/minecraft/clay.zs.disabled"); 