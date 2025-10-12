DebugUtil.startScript("recipes/farmers_respite/coffee_parts_to_dye"); 
    

craftingTable.addShapeless("brown_dye_from_coffee", <item:minecraft:brown_dye>, [<item:farmersrespite:coffee_beans>]);
craftingTable.removeByName("minecraft:red_dye");

RUtil.oneToOneConversion("maroon_dye_from_coffee_berries", <item:farmersrespite:coffee_berries>, <item:dye_depot:maroon_dye>);


DebugUtil.endScript("recipes/farmers_respite/coffee_parts_to_dye"); 