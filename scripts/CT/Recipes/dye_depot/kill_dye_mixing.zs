DebugUtil.startScript("recipes/dye_depot/kill_dye_mixing"); 
    
val dye_mixings = [
    "dye_depot:light_gray_dye_from_black",
    "dye_depot:light_gray_dye_from_gray",
    "minecraft:gray_dye",
    "dye_depot:gray_dye_from_light_gray",
    "dye_depot:gray_dye_from_white",
    "dye_depot:gray_dye",
    "dye_depot:indigo_dye_from_magenta",
    "dye_depot:indigo_dye_from_purple",
    "dye_depot:indigo_dye_from_pink",
    "dye_depot:navy_dye_from_blue",
    "dye_depot:navy_dye_from_slate",
    "dye_depot:navy_dye_from_light_blue",
    "dye_depot:aqua_dye_from_teal",
    "dye_depot:aqua_dye_from_mint",
    "dye_depot:aqua_dye_from_cyan",
    "dye_depot:slate_dye", 
    "dye_depot:mint_dye",
    "dye_depot:teal_dye_from_mint", 
    "dye_depot:teal_dye_from_cyan", 
    "dye_depot:teal_dye_from_aqua",
    "dye_depot:verdant_dye_from_lime",
    "dye_depot:verdant_dye_from_forest",
    "dye_depot:verdant_dye_from_green",
    "dye_depot:forest_dye",
    "dye_depot:amber_dye",
    "dye_depot:olive_dye_from_amber",
    "dye_depot:olive_dye_from_yellow",
    "dye_depot:olive_dye_from_beige",
    "dye_depot:tan_dye_from_ginger",
    "dye_depot:tan_dye_from_orange",
    "dye_depot:tan_dye_from_brown",
    "dye_depot:coral_dye_from_red",
    "dye_depot:coral_dye_from_maroon",
    "dye_depot:coral_dye_from_rose",
    "dye_depot:maroon_dye_from_rose",
    "dye_depot:maroon_dye_from_red",
    "dye_depot:maroon_dye_from_coral",
    "dye_depot:rose_dye",
    "dye_depot:pink_dye_from_blue", 
    "dye_depot:pink_dye_from_magenta",
    "dye_depot:pink_dye_from_indigo",
    "dye_depot:magenta_dye_from_indigo",
    "dye_depot:magenta_dye_from_light_blue",
    "dye_depot:magenta_dye",
    "dye_depot:magenta_dye_from_purple_light",
    "dye_depot:magenta_dye_from_indigo_light_blue",
    "dye_depot:purple_dye",
    "minecraft:purple_dye",
    "dye_depot:blue_dye_from_slate_light",
    "dye_depot:blue_dye_from_navy",
    "dye_depot:blue_dye_from_navy_light_blue",
    "dye_depot:blue_dye_from_slate_gray", 
    "dye_depot:light_blue_dye_from_slate",
    "minecraft:light_blue_dye_from_blue_white_dye",
    "dye_depot:light_blue_dye_from_navy",
    "dye_depot:cyan_dye_from_teal",
    "dye_depot:cyan_dye_from_mint_light",
    "dye_depot:cyan_dye_from_mint_gray",
    "dye_depot:cyan_dye_from_teal_aqua",
    "minecraft:cyan_dye",
    "dye_depot:cyan_dye_from_aqua",
    "dye_depot:green_dye_from_verdant",
    "dye_depot:green_dye_from_verdant_lime",
    "dye_depot:green_dye_from_forest_light",
    "dye_depot:green_dye_from_forest_gray",
    "dye_depot:green_dye",
    "dye_depot:green_dye_from_lime",
    "dye_depot:lime_dye_from_forest",
    "minecraft:lime_dye",
    "dye_depot:lime_dye_from_green",
    "dye_depot:lime_dye_from_verdant",
    "dye_depot:yellow_dye_from_amber_gray",
    "dye_depot:yellow_dye_from_amber_light",
    "dye_depot:yellow_dye_from_olive",
    "dye_depot:yellow_dye_from_olive_beige",
    "dye_depot:yellow_dye_from_beige",
    "minecraft:orange_dye_from_red_yellow",
    "dye_depot:orange_dye_from_ginger_gray",
    "dye_depot:orange_dye_from_ginger_light",
    "dye_depot:orange_dye_from_brown",
    "dye_depot:orange_dye_from_tan",
    "dye_depot:orange_dye_from_brown_tan",
    "dye_depot:red_dye_from_coral",
    "dye_depot:red_dye_from_rose_gray",
    "dye_depot:red_dye_from_rose_light",
    "dye_depot:red_dye_from_maroon",
    "dye_depot:red_dye_from_maroon_coral",
    "dye_depot:brown_dye_from_ginger",
    "dye_depot:brown_dye_from_orange",
    "dye_depot:brown_dye_from_tan",
    "dye_depot:black_dye_from_light_gray",
    "dye_depot:black_dye_from_white",
    "dye_depot:black_dye_from_gray",
    "dye_depot:white_dye_from_gray",
    "dye_depot:white_dye_from_black",
    "dye_depot:white_dye_from_light_gray"
]; 

for i in dye_mixings {
    craftingTable.removeByName(i); 
}

# oops indigo dye is unobtainable 
# nor is navy
DebugUtil.endScript("recipes/dye_depot/kill_dye_mixing"); 