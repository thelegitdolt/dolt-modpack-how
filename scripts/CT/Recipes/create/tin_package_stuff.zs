DebugUtil.startScript("recipes/create/tin_package_stuff"); 
    
craftingTable.removeByName("create:crafting/logistics/package_frogport");
craftingTable.addShaped("frog_tin", <item:create:package_frogport>, 
[[<tag:items:forge:slimeballs>], [<item:create:item_vault>], [<item:caverns_and_chasms:tin_ingot>]]);

craftingTable.removeByName("create:crafting/logistics/stock_ticker");
  craftingTable.addShaped("stock_ticker_tin", <item:create:stock_ticker>, 
  [[<tag:items:forge:glass>], [<item:create:stock_link>], [<tag:items:forge:ingots/tin>]]);

craftingTable.removeByName("create:crafting/logistics/packager");
  craftingTable.addShaped("packager_tin", <item:create:packager>, [
    [RUtil.air, <tag:items:forge:ingots/tin>, RUtil.air], 
  [<tag:items:forge:ingots/tin>, <item:create:cardboard_block>, <tag:items:forge:ingots/tin>], 
  [<tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/tin>, <tag:items:forge:dusts/redstone>]]);



craftingTable.removeByName("create:crafting/logistics/redstone_requester");
craftingTable.addShaped("redstone_requester_tin", <item:create:redstone_requester>, [
    [<tag:items:forge:dusts/redstone>], [<item:create:stock_link>], [<tag:items:forge:ingots/tin>]]);

# postboxes
for i in RUtil.colors {
    val recipe = "create:crafting/logistics/" + i + "_postbox"; 
    craftingTable.removeByName(recipe);
    val dye = <item:minecraft:${i}_dye>;
    craftingTable.addShaped(i + "_postbox_tin", <item:create:${i}_postbox>, 
        [[dye], [<item:minecraft:barrel>], [<item:caverns_and_chasms:tin_nugget>]]);
}
for i in RUtil.dyeDepotColors {
    val recipe = "create:" + i + "_postbox"; 
    craftingTable.removeByName(recipe);
    val dye = <item:dye_depot:${i}_dye>;
    craftingTable.addShaped(i + "_postbox_tin", <item:create:${i}_postbox>, 
        [[dye], [<item:minecraft:barrel>], [<item:caverns_and_chasms:tin_nugget>]]);
}

craftingTable.removeByName("create:crafting/logistics/item_hatch");
  craftingTable.addShapeless("item_hatch_tin", <item:create:item_hatch>, [<item:caverns_and_chasms:tin_nugget>, <item:minecraft:iron_trapdoor>]);


DebugUtil.endScript("recipes/create/tin_package_stuff");