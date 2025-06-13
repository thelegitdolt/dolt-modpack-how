DebugUtil.startScript("/Reciperminecraft/cobble_stuff/"); 
    

<tag:items:minecraft:stone_crafting_materials>.add(<item:minecraft:stone>);
<tag:items:minecraft:stone_crafting_materials>.add(<item:minecraft:andesite>);
<tag:items:minecraft:stone_crafting_materials>.add(<item:minecraft:tuff>);
<tag:items:minecraft:stone_crafting_materials>.add(<item:quark:jasper>);
<tag:items:minecraft:stone_crafting_materials>.add(<item:minecraft:granite>);
<tag:items:minecraft:stone_crafting_materials>.add(<item:minecraft:deepslate>);
<tag:items:minecraft:stone_crafting_materials>.add(<item:minecraft:sandstone>);
<tag:items:minecraft:stone_crafting_materials>.add(<item:quark:shale>);
<tag:items:minecraft:stone_crafting_materials>.add(<item:quark:limestone>);
<tag:items:minecraft:stone_crafting_materials>.add(<item:minecraft:mossy_cobblestone>);
<tag:items:minecraft:stone_crafting_materials>.add(<item:minecraft:diorite>);

<tag:items:minecraft:furnace_crafting_materials>.add(<item:minecraft:cobblestone>);
<tag:items:minecraft:furnace_crafting_materials>.add(<item:minecraft:stone>);
<tag:items:minecraft:furnace_crafting_materials>.add(<item:minecraft:andesite>);
<tag:items:minecraft:furnace_crafting_materials>.add(<item:minecraft:tuff>);
<tag:items:minecraft:furnace_crafting_materials>.add(<item:caverns_and_chasms:sugilite>);
<tag:items:minecraft:furnace_crafting_materials>.add(<item:quark:jasper>);
<tag:items:minecraft:furnace_crafting_materials>.add(<item:minecraft:granite>);
<tag:items:minecraft:furnace_crafting_materials>.add(<item:minecraft:sandstone>);
<tag:items:minecraft:furnace_crafting_materials>.add(<item:quark:shale>);
<tag:items:minecraft:furnace_crafting_materials>.add(<item:quark:limestone>);
<tag:items:minecraft:furnace_crafting_materials>.add(<item:minecraft:mossy_cobblestone>);
<tag:items:minecraft:furnace_crafting_materials>.add(<item:minecraft:diorite>);
<tag:items:minecraft:furnace_crafting_materials>.add(<item:alexscaves:radrock>);
<tag:items:minecraft:furnace_crafting_materials>.add(<item:alexscaves:galena>);



  craftingTable.removeByName("minecraft:piston");
  craftingTable.removeByName("supplementaries:soap/piston");

  craftingTable.removeByName("supplementaries:turn_table");

  craftingTable.removeByName("minecraft:dispenser");

  craftingTable.removeByName("minecraft:dropper");

  craftingTable.removeByName("minecraft:observer");
  craftingTable.removeByName("quark:building/crafting/furnaces/cobblestone_furnace");

  craftingTable.removeByName("supplementaries:relayer");




  craftingTable.addShaped("piston", <item:minecraft:piston>, [[<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>], [<tag:items:minecraft:stone_crafting_materials>, <tag:items:forge:ingots/iron>, <tag:items:minecraft:stone_crafting_materials>], [<tag:items:minecraft:stone_crafting_materials>, <item:minecraft:redstone>, <tag:items:minecraft:stone_crafting_materials>]]);

  craftingTable.addShaped("turn_table", <item:supplementaries:turn_table>, [[<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>], [<tag:items:minecraft:stone_crafting_materials>, <item:minecraft:copper_ingot>, <tag:items:minecraft:stone_crafting_materials>], [<tag:items:minecraft:stone_crafting_materials>, <item:minecraft:redstone>, <tag:items:minecraft:stone_crafting_materials>]]);

  craftingTable.addShaped("dispenser_based", <item:minecraft:dispenser>, [[<tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>], [<tag:items:minecraft:stone_crafting_materials>, <item:minecraft:bow>.anyDamage(), <tag:items:minecraft:stone_crafting_materials>], [<tag:items:minecraft:stone_crafting_materials>, <item:minecraft:redstone>, <tag:items:minecraft:stone_crafting_materials>]]);

  craftingTable.addShaped("dropper_based", <item:minecraft:dropper>, [[<tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>], [<tag:items:minecraft:stone_crafting_materials>, RUtil.air, <tag:items:minecraft:stone_crafting_materials>], [<tag:items:minecraft:stone_crafting_materials>, <item:minecraft:redstone>, <tag:items:minecraft:stone_crafting_materials>]]);

  craftingTable.addShaped("observer_based", <item:minecraft:observer>, [[<tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>], [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:quartz>], [<tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>]]);

  craftingTable.addShaped("relayer_based", <item:supplementaries:relayer>, [[<tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>], [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:iron_ingot>], [<tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>]]);

  craftingTable.addShaped("furnace_based", <item:minecraft:furnace>, [
    [<tag:items:minecraft:furnace_crafting_materials>, <tag:items:minecraft:furnace_crafting_materials>, <tag:items:minecraft:furnace_crafting_materials>], 
    [<tag:items:minecraft:furnace_crafting_materials>, <item:minecraft:air>, <tag:items:minecraft:furnace_crafting_materials>], 
    [<tag:items:minecraft:furnace_crafting_materials>, <tag:items:minecraft:furnace_crafting_materials>, <tag:items:minecraft:furnace_crafting_materials>]]);



DebugUtil.endScript("recipes/minecraft/cobble_stuff"); 