DebugUtil.startScript("recipes/dye_depot/goodbye_shulkers"); 


for i in RUtil.dyeDepotColors {
    craftingTable.removeByName("dye_depot:dye_" + i + "_shulker_box");
}



DebugUtil.endScript("recipes/dye_depot/goodbye_shulkers"); 