DebugUtil.startScript("recipes/architects_palette/kiln"); 

function crackedBricks(type as string) as void {
    Kiln.newRecipe("kiln/ap/baking/cracking_" + type + "_bricks_from_baking", 
        <item:architects_palette:${type}_bricks>, 
        <item:architects_palette:cracked_${type}_bricks>, 
        0.1, "blocks"); 
}


Kiln.newRecipe("kiln/ap/baking/cracking_end_stone_bricks_from_baking", 
        <item:minecraft:end_stone_bricks>, 
        <item:architects_palette:cracked_end_stone_bricks>, 
        0.1, "blocks"); 

Kiln.newRecipe("kiln/ap/baking/heavy_cracked_end_stone_bricks_from_heavy_end_stone_bricks_smelting", 
        <item:architects_palette:heavy_end_stone_bricks>, 
        <item:architects_palette:heavy_cracked_end_stone_bricks>, 
        0.1, "blocks"); 
Kiln.newRecipe("kiln/ap/baking/heavy_cracked_stone_bricks_from_heavy_end_stone_bricks_smelting", 
        <item:architects_palette:heavy_stone_bricks>, 
        <item:architects_palette:heavy_cracked_stone_bricks>, 
        0.1, "blocks"); 

crackedBricks("emerald_ore"); 
crackedBricks("redstone_ore"); 
crackedBricks("olivestone"); 
crackedBricks("lapis_ore"); 
crackedBricks("diamond_ore"); 
crackedBricks("iron_ore"); 
crackedBricks("coal_ore"); 
crackedBricks("moonshale"); 
crackedBricks("gold_ore"); 


Kiln.newRecipe("kiln/ap/baking/cracked_basalt_tiles_from_basalt_tiles_baking", 
    <item:architects_palette:basalt_tiles>, 
    <item:architects_palette:cracked_basalt_tiles>, 0.1, "block"); 

Kiln.newRecipe("kiln/ap/baking/withered_bone_to_black_dye", 
    <item:architects_palette:withered_bone>, 
    <item:minecraft:black_dye>, 0.3, "misc"); 

DebugUtil.endScript("recipes/architects_palette/kiln"); 

