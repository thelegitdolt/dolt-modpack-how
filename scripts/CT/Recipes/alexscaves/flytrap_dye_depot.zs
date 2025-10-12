DebugUtil.startScript("recipes/alexscaves/flytrap_dye_depot"); 
    
craftingTable.removeByName("alexscaves:red_dye_from_flytrap");
RUtil.oneToOneConversion("maroon_fly_trap", <item:alexscaves:flytrap>, <item:dye_depot:maroon_dye>, 2);
DebugUtil.endScript("recipes/alexscaves/flytrap_dye_depot"); 