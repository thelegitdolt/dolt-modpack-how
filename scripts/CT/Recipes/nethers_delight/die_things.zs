DebugUtil.startScript("recipes/nethers_delight/die_things"); 
    

val all_weird_things = [
    "mynethersdelight:ghast_dough",
    "mynethersdelight:ghast_salad",
    "mynethersdelight:nether_bricks_cabinet",
    "mynethersdelight:spicy_cotton",
    "mynethersdelight:ghasta",
    "mynethersdelight:plate_of_ghasta_with_cream",
    "mynethersdelight:ghasta_with_cream",
    "mynethersdelight:ghasmati",
    "mynethersdelight:spicy_noodle_soup"
];

HUtil.hideAll(all_weird_things); 
RUtil.removeAll(all_weird_things); 
TUtil.removeItems(all_weird_things); 

RUtil.cut.removeByName("mynethersdelight:cutting/balze_rod"); 

DebugUtil.endScript("recipes/nethers_delight/die_powder"); 