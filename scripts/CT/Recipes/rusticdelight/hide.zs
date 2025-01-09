DebugUtil.startScript("Recipes/rusticdelight/hide"); 
    
val weirds = [
    "rusticdelight:bell_pepper_red_crate",
    "rusticdelight:bell_pepper_green_crate",
    "rusticdelight:bell_pepper_yellow_crate",
    "rusticdelight:bell_pepper_seeds_bag",
    "rusticdelight:wild_bell_peppers",
    "rusticdelight:bell_pepper_green",
    "rusticdelight:bell_pepper_red",
    "rusticdelight:bell_pepper_yellow",
    "rusticdelight:bell_pepper_seeds",
    "rusticdelight:roasted_bell_pepper_green",
    "rusticdelight:roasted_bell_pepper_yellow",
    
    "rusticdelight:roasted_bell_pepper_red",
    "rusticdelight:bell_pepper_soup",
    "rusticdelight:bell_pepper_pasta",
    "rusticdelight:stuffed_bell_pepper_green",
    "rusticdelight:stuffed_bell_pepper_red",
    "rusticdelight:stuffed_bell_pepper_yellow",
    "rusticdelight:honey_pancakes",
    "rusticdelight:vegetable_pancakes",
    "rusticdelight:cherry_blossom_pancakes",
    "rusticdelight:chocolate_pancakes",

    "rusticdelight:cherry_blossom_cheesecake",
    "rusticdelight:cherry_blossom_cookie",
    "rusticdelight:cherry_blossom_cheesecake_slice"
];
HUtil.hideAll(weirds);
val bellpepper = [
    "rusticdelight:bell_pepper_green",
    "rusticdelight:bell_pepper_red",
    "rusticdelight:bell_pepper_yellow"
];

for pep in bellpepper {
    <tag:items:forge:vegetables>.remove(<item:${pep}>);
}

HUtil.hideAll(weirds);


for weird in weirds {
    craftingTable.remove(<item:${weird}>);
    RUtil.cook.remove(<item:${weird}>); 
}


DebugUtil.endScript("Recipes/rusticdelight/hide"); 