DebugUtil.startScript("recipes/architects_palette/die_nubs"); 

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