DebugUtil.startScript("/Recipes/minecraft/banner_from_canvas.zs/"); 
    

var canvas = <item:farmersdelight:canvas>;

for color in RUtil.colors {
    var banner = <item:minecraft:${color}_banner>;
    var wool = <item:minecraft:${color}_wool>;

    craftingTable.addShaped(color + "_banner_based", banner * 3, [
        [wool, canvas, wool],
        [wool, canvas, wool],
        [RUtil.air, <item:minecraft:stick>, RUtil.air]
    ]);
}


DebugUtil.endScript("/Recipes/minecraft/banner_from_canvas.zs"); 