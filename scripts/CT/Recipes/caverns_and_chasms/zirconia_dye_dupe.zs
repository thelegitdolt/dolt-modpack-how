DebugUtil.startScript("recipes/caverns_and_chasms/zirconia_dye_dupe"); 
    
for i in RUtil.colors {
  val dye = <item:minecraft:${i}_dye>;
  craftingTable.addShapeless(i + "_dye_dupe_zirconia", dye * 4, [
    <item:caverns_and_chasms:zirconia>, dye 
  ]);
}

for i in RUtil.dyeDepotColors {
  val dye = <item:dye_depot:${i}_dye>;
  craftingTable.addShapeless(i + "_dye_dupe_zirconia", dye * 4, [
    <item:caverns_and_chasms:zirconia>, dye 
  ]);
}


DebugUtil.endScript("recipes/caverns_and_chasms/zirconia_dye_dupe"); 