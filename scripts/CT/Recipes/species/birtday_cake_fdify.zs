DebugUtil.startScript("recipes/species/birtday_cake_fdify/"); 
    
RUtil.cut.addRecipe("birtda_cak", <item:species:birtday_cake>, [<item:species:birtday_cake_slice> * 8], <tag:items:minecraft:pickaxes>);
craftingTable.addShapeless("birtda_cak_reasemble", <item:species:birtday_cake>, [
    <item:species:birtday_cake_slice>, <item:species:birtday_cake_slice>, <item:species:birtday_cake_slice>, <item:species:birtday_cake_slice>,
    <item:species:birtday_cake_slice>, <item:species:birtday_cake_slice>, <item:species:birtday_cake_slice>, <item:species:birtday_cake_slice>
]);


DebugUtil.endScript("recipes/species/birtday_cake_fdify"); 