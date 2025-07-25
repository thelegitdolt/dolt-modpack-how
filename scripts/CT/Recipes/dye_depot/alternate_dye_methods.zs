DebugUtil.startScript("recipes/dye_depot/alternate_dye_methods"); 

# amber
RUtil.oneToOneConversion("amber_from_pewen_sap", <item:alexscaves:pewen_sap>, <item:dye_depot:amber_dye>);

# aqua
Kiln.addFurnaceAndKiln("sculk_to_aqua", <item:dungeonsdelight:sculk_polyp>, <item:dye_depot:aqua_dye>, 0.1, "misc");

# coral 
<tag:items:dye_depot:smelts_into_coral_dye>.add(<tag:items:create:upgrade_aquatic/coral>); 


# ginger
Kiln.addFurnaceAndKiln("ginger_bread_to_ginger_dye", <item:alexscaves:gingerbread_crumbs>, <item:dye_depot:ginger_dye>, 0.1, "misc"); 


# indigo
craftingTable.removeByName("atmospheric:purple_dye_from_currant");
RUtil.oneToOneConversion("currant_dye_its_indigo", <item:atmospheric:currant>, <item:dye_depot:indigo_dye>); 


# maroon
RUtil.oneToOneConversion("orange_to_orange_dye_wow", <item:atmospheric:blood_orange>, <item:dye_depot:maroon_dye>);


# mint
craftingTable.removeByName("caverns_and_chasms:cyan_dye_from_turquoise");
Kiln.addFurnaceAndKiln("mint_to_mint_dye", <item:neapolitan:mint_leaves>, <item:dye_depot:mint_dye>, 0.1, "misc"); 
RUtil.oneToOneConversion("turquoise_to_mint_dye", <item:caverns_and_chasms:turquoise>, <item:dye_depot:mint_dye>, 16); 

# navy
RUtil.oneToOneConversion("navy_from_phasmo_shard", <item:netherexp:phasmo_shard>, <item:dye_depot:navy_dye>);

# orange 
RUtil.oneToOneConversion("blood_orange_to_orange_dye_wow", <item:atmospheric:orange>, <item:minecraft:orange_dye>);

# slate_dye
RUtil.oneToOneConversion("slate_from_marine_snow", <item:alexscaves:marine_snow>, <item:dye_depot:slate_dye>);


# tan
craftingTable.removeByName("minecraft:orange_dye_from_torchflower"); 
RUtil.oneToOneConversion("torchflower_to_tan_dye", <item:minecraft:torchflower>, <item:dye_depot:tan_dye>); 
RUtil.cut.addRecipe("cut_torchflower_to_tan_dye", <item:minecraft:torchflower>, [(<item:dye_depot:tan_dye> * 2)], <tag:items:forge:tools/knives>);








DebugUtil.endScript("recipes/dye_depot/alternate_dye_methods"); 