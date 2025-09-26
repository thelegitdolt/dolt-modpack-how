DebugUtil.startScript("/Recipes/minecraft/banner_from_canvas.zs/"); 
    

var canvas = <item:farmersdelight:canvas>;

var color = "beige";
var banner = <item:dye_depot:${color}_banner>;
var flag = <item:supplementaries:flag_${color}>;

craftingTable.addShaped(color + "_banner_based", banner * 3, [
    [canvas, canvas, canvas],
    [canvas, canvas, canvas],
    [RUtil.air, <item:minecraft:stick>, RUtil.air]
]);

craftingTable.addShaped(color + "_flag_based", flag * 3, [
    [canvas, canvas, canvas],
    [canvas, canvas, canvas],
    [<item:minecraft:stick>, RUtil.air, RUtil.air]
]);



DebugUtil.endScript("/Recipes/minecraft/banner_from_canvas.zs"); 