DebugUtil.startScript("recipes/atmospheric/scrubland_coral_stuff"); 
    

craftingTable.removeByName("atmospheric:red_dye_from_firethorn");
RUtil.cut.removeByName("abnormals_delight:atmospheric/cutting/firethorn");
RUtil.cut.addRecipe("firethorn_cut_to_coral_dye", <item:atmospheric:firethorn>, [
    <item:dye_depot:coral_dye> * 2
], <tag:items:forge:tools/knives>);

RUtil.oneToOneConversion("firethorn_coral", <item:atmospheric:firethorn>, <item:dye_depot:coral_dye>);

craftingTable.removeByName("atmospheric:pink_dye_from_dragon_fruit");
RUtil.oneToOneConversion("dragonfruit_rose", <item:atmospheric:dragon_fruit>, <item:dye_depot:rose_dye>);

<recipetype:create:crushing>.addRecipe("carmine_to_red", 
[<item:minecraft:red_dye>, <item:dye_depot:coral_dye> % 25, <item:minecraft:bone_meal> % 25], 
<item:atmospheric:carmine_husk>, 200);


DebugUtil.endScript("recipes/atmospheric/scrubland_coral_stuff"); 