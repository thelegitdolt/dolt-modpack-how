DebugUtil.startScript("recipes/brewinandchewin/jams_good"); 
    
val berry = <item:minecraft:sweet_berries> | <item:minecraft:glow_berries> | <item:neapolitan:strawberries> | <item:upgrade_aquatic:mulberry> | <item:atmospheric:currant> |  <item:environmental:cherries>;
val fruit = <item:minecraft:apple> | <item:minecraft:melon_slice> | <item:neapolitan:banana> | <item:atmospheric:passion_fruit> | <item:atmospheric:orange> | <item:atmospheric:blood_orange> | <item:environmental:plum> | <item:atmospheric:dragon_fruit>;

val badItem = <item:brewinandchewin:glow_berry_marmalade>;
HUtil.hide(badItem);
RUtil.cook.remove(badItem);

RUtil.cook.removeByName("brewinandchewin:cooking/sweet_berry_jam");
RUtil.cook.removeByName("brewinandchewin:cooking/apple_jelly");

RUtil.cook.addRecipe("cooking/berry_jam", <item:brewinandchewin:sweet_berry_jam>, [
    berry, berry, berry, <item:minecraft:sugar>
]); 

RUtil.cook.addRecipe("cooking/fruit_marmalade", <item:brewinandchewin:apple_jelly>, [
    fruit, fruit, fruit, <item:minecraft:sugar>
]); 

DebugUtil.endScript("recipes/brewinandchewin/jams_good"); 
