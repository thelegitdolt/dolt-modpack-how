DebugUtil.startScript("recipes/architects_palette/die_nubs"); 

val die = [
    "architects_palette:copper_nub",
    "architects_palette:granite_nub",
    "architects_palette:diamond_nub",
    "architects_palette:oxidized_copper_nub",
    "architects_palette:waxed_exposed_copper_nub",
    "architects_palette:netherite_nub",
    "architects_palette:smooth_stone_nub",
    "architects_palette:deepslate_nub",
    "architects_palette:stone_nub",
    "architects_palette:bread_nub",
    "architects_palette:iron_nub",
    "architects_palette:diorite_nub",
    "architects_palette:andesite_nub",
    "architects_palette:emerald_nub",
    "architects_palette:waxed_copper_nub",
    "architects_palette:waxed_oxidized_copper_nub",
    "architects_palette:waxed_weathered_copper_nub",
    "architects_palette:sandstone_nub",
    "architects_palette:weathered_copper_nub",
    "architects_palette:blackstone_nub",
    "architects_palette:bone_nub",
    "architects_palette:exposed_copper_nub"
]; 

HUtil.hideAll(die);
RUtil.removeStonecutter(die); 

stoneCutter.removeByName("architects_palette:stonecutting/gold_nub_from_gold_ingot_stonecutting"); 
stoneCutter.removeByName("architects_palette:stonecutting/nub_of_ender_from_eye_of_ender_stonecutting"); 

craftingTable.addShapeless("gold_nub_good", <item:architects_palette:gold_nub> * 2, 
    [<item:create:golden_sheet>]
); 
craftingTable.addShapeless("ender_nub_good", <item:architects_palette:nub_of_ender>, 
    [<item:minecraft:ender_eye>, <item:architects_palette:gold_nub>]
); 

<tag:items:minecraft:piglins_loved>.add(<item:architects_palette:gold_nub>);
<tag:blocks:minecraft:guarded_by_piglins>.add(<block:architects_palette:gold_nub>); 

    

DebugUtil.endScript("recipes/architects_palette/die_nubs"); 