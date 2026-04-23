DebugUtil.startScript("recipes/suppies/candle_holder_stuff"); 


for i in RUtil.dyeDepotColors {
    craftingTable.removeByName("supplementaries:candle_holder_" + i);
    craftingTable.addShaped("candle_holder_" + i + "_good", <item:supplementaries:candle_holder_${i}>, [
        [<item:dye_depot:${i}_candle>], [<tag:items:forge:ingots/iron>]
    ]);
}




DebugUtil.endScript("recipes/suppies/candle_holder_stuff"); 