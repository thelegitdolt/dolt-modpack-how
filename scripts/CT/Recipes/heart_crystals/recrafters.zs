DebugUtil.startScript("recipes/heart_crystals/recrafter"); 

RUtil.threeByThree("heart_crystal_from_heart_crystal", <item:heart_crystals:heart_crystal>, <item:dolt_mod_how:heart_crystal>);
RUtil.oneToOneConversion("heart_crystal_from_unpacking_heart_crystal", <item:dolt_mod_how:heart_crystal>, <item:heart_crystals:heart_crystal>, 9);


craftingTable.removeByName("heart_crystals:living_flesh_alt");
DebugUtil.endScript("recipes/heart_crystals/recrafter"); 