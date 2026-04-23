DebugUtil.startScript("recipes/suppies/candle_holder_stuff"); 



craftingTable.addShaped("ender_candle_holder_lol", <item:supplementaries:candle_holder_ender>, [
    [<item:buzzier_bees:ender_candle>],[RUtil.air]
]); 


for i in RUtil.dyeDepotColors {
    craftingTable.removeByName("supplementaries:candle_holder_" + i);
    craftingTable.addShaped("candle_holder_" + i + "_good", <item:supplementaries:candle_holder_${i}>, [
        [<item:dye_depot:${i}_candle>], [<tag:items:forge:ingots/iron>]
    ]);
}




DebugUtil.endScript("recipes/suppies/candle_holder_stuff"); 