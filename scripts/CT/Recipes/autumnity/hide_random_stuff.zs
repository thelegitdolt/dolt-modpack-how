DebugUtil.startScript("/Recipes/autumnity/hide_random_stuff.zs/"); 
    

val things = [
    "autumnity:pancake"

] as string[];

for thing in things {
    craftingTable.remove(<item:${thing}>);
}
HUtil.hideAll(things);





DebugUtil.endScript("/Recipes/autumnity/hide_random_stuff.zs"); 