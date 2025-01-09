DebugUtil.startScript("recipes/dye_depot/amber_dye_from_smelting_instead"); 
    
Kiln.addFurnaceAndKiln("glow_berry_to_amber_dye", <item:minecraft:glow_berries>, <item:dye_depot:amber_dye>, 0.1, "misc"); 
craftingTable.removeByName("dye_depot:amber_dye_from_glow_berries"); 

DebugUtil.endScript("recipes/dye_depot/amber_dye_from_smelting_instead"); 