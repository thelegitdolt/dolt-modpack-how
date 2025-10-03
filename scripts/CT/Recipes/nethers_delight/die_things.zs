DebugUtil.startScript("recipes/nethers_delight/die_things"); 
    

val all_weird_things = [
    "mynethersdelight:ghast_dough",
    "mynethersdelight:ghast_salad",
    "mynethersdelight:nether_bricks_cabinet",
    "mynethersdelight:spicy_cotton",
    "mynethersdelight:ghasta",
    "mynethersdelight:plate_of_ghasta_with_cream",
    "mynethersdelight:ghasta_with_cream",
    "mynethersdelight:fries_ghasta",
    "mynethersdelight:twisted_ghasta",
    "mynethersdelight:ghasmati",
    "mynethersdelight:spicy_noodle_soup",
    "mynethersdelight:red_nether_bricks_cabinet",
    "mynethersdelight:blackstone_bricks_cabinet",
    "mynethersdelight:nether_bricks_cabinet",
    "mynethersdelight:dried_ghast_with_milk",
    "mynethersdelight:sizzling_pudding",
    "mynethersdelight:ghast_sourdough"
];

HUtil.hideAll(all_weird_things); 
RUtil.removeAll(all_weird_things); 
TUtil.removeItems(all_weird_things); 

val d = [
    "mynethersdelight:cooking/fries_ghasta",
    "mynethersdelight:cooking/twisted_ghasta"
];
for amogus in d {
    RUtil.cook.removeByName(amogus);
}

RUtil.cut.removeByName("mynethersdelight:cutting/ghasmati");
stoneCutter.removeByName("mynethersdelight:stonecutting/red_nether_bricks_cabinet");
stoneCutter.removeByName("mynethersdelight:stonecutting/blackstone_bricks_cabinet");
stoneCutter.removeByName("mynethersdelight:stonecutting/nether_bricks_cabinet");

RUtil.cut.removeByName("mynethersdelight:cutting/balze_rod"); 

DebugUtil.endScript("recipes/nethers_delight/die_powder"); 