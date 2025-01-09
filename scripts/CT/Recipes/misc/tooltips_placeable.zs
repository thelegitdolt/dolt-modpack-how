DebugUtil.startScript("/Recipes/misc/tooltips_placeable.zs/"); 
    

var things = [
    "autumnity:turkey"
] as string[];


for thing in things {
    # <item:${thing}>.addTooltip("Placeable");
}


DebugUtil.endScript("/Recipes/misc/tooltips_placeable.zs"); 