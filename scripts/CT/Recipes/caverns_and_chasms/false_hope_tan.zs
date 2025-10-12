DebugUtil.startScript("recipes/caverns_and_chasms/false_hope_tan"); 
    
craftingTable.removeByName("caverns_and_chasms:yellow_dye_from_false_hope");
RUtil.oneToOneConversion("tan_dye_from_false_hope", <item:caverns_and_chasms:false_hope>, <item:dye_depot:tan_dye>);

RUtil.cut.addRecipe("tan_dye_from_cutting_false_hope", <item:caverns_and_chasms:false_hope>, [<item:dye_depot:tan_dye> * 2], <tag:items:forge:tools/knives>);
DebugUtil.endScript("recipes/caverns_and_chasms/false_hope_tan"); 