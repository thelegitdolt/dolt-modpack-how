DebugUtil.startScript("recipes/alexscaves/crush_heavy_bone"); 


<recipetype:create:milling>.addRecipe("milling/heavy_bone", [
    <item:minecraft:bone_meal> * 6 % 100.0, <item:minecraft:white_dye> % 25.0, <item:minecraft:bone_meal> * 3 % 50.0], 
    <item:alexscaves:heavy_bone>, 100);


DebugUtil.endScript("recipes/alexscaves/crush_heavy_bone");  