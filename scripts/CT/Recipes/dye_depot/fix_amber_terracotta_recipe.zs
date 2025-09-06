DebugUtil.startScript("recipes/dye_depot/fix_amber_terracotta_recipes"); 
    
furnace.removeByName("dye_depot:amber_glazed_terracotta");
furnace.addRecipe("dye_depot_amber_glazed_terracotta", <item:dye_depot:amber_glazed_terracotta>, <item:dye_depot:amber_terracotta>, 0.1, 200);


val amber = <item:dye_depot:amber_dye>;

craftingTable.removeByName("dye_depot:amber_carpet");
craftingTable.removeByName("dye_depot:dye_amber_wool");
craftingTable.removeByName("dye_depot:amber_stained_glass");
craftingTable.removeByName("dye_depot:amber_bed");
craftingTable.removeByName("dye_depot:dye_amber_bed");
craftingTable.removeByName("dye_depot:dye_amber_carpet");
craftingTable.removeByName("dye_depot:amber_terracotta");
craftingTable.removeByName("dye_depot:amber_candle");
craftingTable.removeByName("dye_depot:amber_banner");

craftingTable.removeByName("dye_depot:amber_stained_glass_pane_from_glass_pane");
craftingTable.removeByName("dye_depot:amber_stained_glass_pane");

craftingTable.addShaped("dye_depot_amber_carpet", <item:dye_depot:amber_carpet> * 3, [
    [<item:dye_depot:amber_wool>, <item:dye_depot:amber_wool>]
]);
craftingTable.addShaped("dye_depot_amber_bed", <item:dye_depot:amber_bed>, [
    [<item:dye_depot:amber_wool>, <item:dye_depot:amber_wool>, <item:dye_depot:amber_wool>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
]);
craftingTable.addShapeless("dye_amber_wool_real", <item:dye_depot:amber_wool>, [
    <tag:items:minecraft:wool>, amber
]);
craftingTable.addShapeless("dye_amber_carpet_real", <item:dye_depot:amber_carpet>, [
    <tag:items:minecraft:wool_carpets>, amber
]);
craftingTable.addShapeless("dye_amber_beds_real", <item:dye_depot:amber_bed>, [
    <tag:items:minecraft:beds>, amber
]);

val ter = <item:minecraft:terracotta>;

craftingTable.addShaped("dye_depot_amber_terracotta", <item:dye_depot:amber_terracotta> * 8, [
    [ter, ter, ter],
    [ter, amber, ter],
    [ter, ter, ter]
]);

val glass = <item:dye_depot:amber_stained_glass>;
val vg = <item:minecraft:glass>;
val gp = <item:minecraft:glass_pane>;

val pane = <item:dye_depot:amber_stained_glass_pane>;

craftingTable.addShaped("dye_depot_amber_glass", glass * 8, [
    [vg, vg, vg],
    [vg, amber, vg],
    [vg, vg, vg]
]);

craftingTable.addShaped("dye_depot_amber_glass_pane", pane * 16, [
    [glass, glass, glass],
    [glass, glass, glass]
]);

craftingTable.addShaped("dye_depot_amber_glass_pane_dye", pane * 8, [
    [gp, gp, gp],
    [gp, amber, gp],
    [gp, gp, gp]
]);

craftingTable.addShapeless("dye_amber_candles", <item:dye_depot:amber_candle>, [
    <tag:items:minecraft:candles>, amber
]);

craftingTable.addShaped("dye_depot_banner", <item:dye_depot:amber_banner>, [
    [<item:dye_depot:amber_wool>, <item:dye_depot:amber_wool>, <item:dye_depot:amber_wool>],
    [<item:dye_depot:amber_wool>, <item:dye_depot:amber_wool>, <item:dye_depot:amber_wool>],
    [RUtil.air, <item:minecraft:stick>, RUtil.air]
]);





DebugUtil.endScript("recipes/dye_depot/fix_amber_terracotta_recipes"); 