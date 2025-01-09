DebugUtil.startScript("recipes/nethers_delight/die_powder"); 
    

val all_weird_things = [
    "mynethersdelight:powdery_sign",
    "mynethersdelight:powdery_planks",
    "mynethersdelight:powdery_mosaic",
    "mynethersdelight:powdery_hanging_sign",
    "mynethersdelight:powdery_mosaic_slab",
    "mynethersdelight:powdery_door",
    "mynethersdelight:powdery_stairs",
    "mynethersdelight:powdery_button",
    "mynethersdelight:powdery_fence_gate",
    "mynethersdelight:powdery_cabinet",
    "mynethersdelight:powdery_mosaic_stairs",
    "mynethersdelight:powdery_trapdoor",
    "mynethersdelight:powdery_fence",
    "mynethersdelight:powdery_slab",
    "mynethersdelight:powdery_pressure_plate"
];

HUtil.hideAll(all_weird_things); 
RUtil.removeAll(all_weird_things); 
TUtil.removeItems(all_weird_things); 

RUtil.oneToOneConversion("powder_uncompress", <item:mynethersdelight:powdery_block> | <item:mynethersdelight:stripped_powdery_block>, <item:mynethersdelight:powder_cannon>, 9); 


craftingTable.removeByName("mynethersdelight:basket_alt");
craftingTable.removeByName("mynethersdelight:stick_alt");
craftingTable.removeByName("mynethersdelight:tnt_alt"); 
craftingTable.removeByName("mynethersdelight:scaffolding_alt"); 

DebugUtil.endScript("recipes/nethers_delight/die_powder"); 