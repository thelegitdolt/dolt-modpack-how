DebugUtil.startScript("/Recipes/pigsteel/pigsteel_nugget_stuff/"); 
    

blastFurnace.removeByName("pigsteel:blasting/iron_nugget_from_blasting_pigsteel_chunk");
furnace.removeByName("pigsteel:smelting/iron_nugget_from_smelting_pigsteel_chunk");

RUtil.addFurnaceAndBlastFurnaceRecipe("chunk_to_ingot", <item:pigsteel:pigsteel_chunk_block>, 
    <item:minecraft:iron_ingot>, 0.7);


DebugUtil.endScript("/Recipes/pigsteel/pigsteel_nugget_stuff"); 