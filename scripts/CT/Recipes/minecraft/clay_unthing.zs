DebugUtil.startScript("recipes/minecraft/clay_unthing"); 

val star = <item:minecraft:clay_ball>;
RUtil.oneToOneConversion("clay_compress_good", <item:minecraft:clay>, star, 4);

RUtil.cut.removeByName("farmersdelight:cutting/clay");

DebugUtil.endScript("recipes/minecraft/clay_unthing"); 