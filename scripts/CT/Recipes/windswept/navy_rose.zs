DebugUtil.startScript("recipes/windswept/navy_rose"); 

RUtil.oneToOneConversion("blue_rose_to_navy", <item:windswept:blue_rose>, <item:dye_depot:navy_dye>);
RUtil.oneToOneConversion("blue_rose_bush_to_navy", <item:windswept:blue_rose_bush>, <item:dye_depot:navy_dye>, 2);

craftingTable.removeByName("windswept:blue_dye_from_blue_rose_bush");
craftingTable.removeByName("windswept:blue_dye_from_blue_rose");

RUtil.cut.addRecipe("cut_blue_rose_into_navy", <item:windswept:blue_rose>, [(<item:dye_depot:navy_dye> * 2)], <tag:items:forge:tools/knives>);



DebugUtil.endScript("recipes/windswept/navy_rose"); 