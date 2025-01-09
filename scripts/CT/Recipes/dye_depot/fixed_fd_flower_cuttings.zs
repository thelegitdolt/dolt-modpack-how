DebugUtil.startScript("recipes/dye_depot/fix_fd_flower_cutting"); 
    
RUtil.cut.removeByName("farmersdelight:cutting/oxeye_daisy"); 
RUtil.cut.addRecipe("cut_oxeye_daisy_into_beige_dye", <item:minecraft:oxeye_daisy>, [(<item:dye_depot:beige_dye> * 2)], <tag:items:forge:tools/knives>);

DebugUtil.endScript("recipes/dye_depot/fix_fd_flower_cutting"); 