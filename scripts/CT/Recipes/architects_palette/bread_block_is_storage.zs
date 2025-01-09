DebugUtil.startScript("recipes/architects_palette/bread_block_is_storage"); 
    
RUtil.threeByThree("bread_block_compress", <item:minecraft:bread>, <item:architects_palette:bread_block>);
craftingTable.removeByName("architects_palette:bread_block"); 
craftingTable.addShapeless("bread_block_uncompress", <item:minecraft:bread> * 9, [
    <item:architects_palette:bread_block> | <item:architects_palette:crustless_bread_block>
]); 
RUtil.cut.addRecipe("strip_bread_block", 
    <item:architects_palette:bread_block>, [<item:architects_palette:crustless_bread_block>], <toolaction:axe_strip>);



DebugUtil.endScript("recipes/architects_palette/bread_block_is_storage"); 