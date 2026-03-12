DebugUtil.startScript("recipes/nethers_delight/die_powder"); 


RUtil.oneToOneConversion("powder_uncompress", <item:mynethersdelight:powdery_block> | <item:mynethersdelight:stripped_powdery_block>, <item:mynethersdelight:powder_cannon>, 9); 


craftingTable.removeByName("mynethersdelight:crafting/basket_alt");
craftingTable.removeByName("mynethersdelight:crafting/stick_alt");
craftingTable.removeByName("mynethersdelight:crafting/tnt_alt"); 
craftingTable.removeByName("mynethersdelight:crafting/scaffolding_alt"); 

DebugUtil.endScript("recipes/nethers_delight/die_powder"); 