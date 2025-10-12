DebugUtil.startScript("recipes/windswept/colored_roses"); 

RUtil.oneToOneConversion("blue_rose_to_navy", <item:windswept:blue_rose>, <item:dye_depot:navy_dye>);
RUtil.oneToOneConversion("blue_rose_bush_to_navy", <item:windswept:blue_rose_bush>, <item:dye_depot:navy_dye>, 2);

craftingTable.removeByName("windswept:blue_dye_from_blue_rose_bush");
craftingTable.removeByName("windswept:blue_dye_from_blue_rose");

RUtil.cut.addRecipe("cut_blue_rose_into_navy", <item:windswept:blue_rose>, [(<item:dye_depot:navy_dye> * 2)], <tag:items:forge:tools/knives>);
RUtil.cut.removeByName("windswept_delights:cutting/blue_rose");

craftingTable.removeByName("windswept:red_dye_from_red_rose");
craftingTable.removeByName("windswept:red_dye_from_red_rose_bush");

RUtil.oneToOneConversion("red_rose_to_rose", <item:windswept:red_rose>, <item:dye_depot:rose_dye>);
RUtil.oneToOneConversion("red_rose_bush_to_rose", <item:windswept:red_rose_bush>, <item:dye_depot:rose_dye>, 2);
RUtil.cut.removeByName("windswept_delights:cutting/red_rose");
RUtil.cut.addRecipe("cut_red_rose_into_rose", <item:windswept:red_rose>, [(<item:dye_depot:rose_dye> * 2)], <tag:items:forge:tools/knives>);

craftingTable.removeByName("windswept:orange_dye_from_lions_tail");
RUtil.oneToOneConversion("ginger_dye_from_lions_tail", <item:windswept:lions_tail>, <item:dye_depot:ginger_dye>, 2);

craftingTable.removeByName("windswept:yellow_dye_from_mimosa");
craftingTable.removeByName("windswept:yellow_dye_from_yellow_petals");

RUtil.cut.removeByName("windswept_delights:cutting/mimosa");
RUtil.oneToOneConversion("amber_dye_from_yellow_petals_xd", <item:windswept:yellow_petals>, <item:dye_depot:amber_dye>);
RUtil.oneToOneConversion("amber_dye_from_mimosa", <item:windswept:mimosa>, <item:dye_depot:amber_dye>);
RUtil.cut.addRecipe("cut_mimosa_into_amber", <item:windswept:mimosa>, [(<item:dye_depot:amber_dye> * 2)], <tag:items:forge:tools/knives>);


DebugUtil.endScript("recipes/windswept/colored_roses"); 