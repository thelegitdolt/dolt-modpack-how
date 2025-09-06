DebugUtil.startScript("recipes/dye_depot/kiln_stuff"); 
    
Kiln.newRecipeTag("coral_to_coral_dye_from_baking", <tag:items:dye_depot:smelts_into_coral_dye>, <item:dye_depot:coral_dye>, 0.1, "misc");
Kiln.newRecipe("vine_to_verdant_dye_from_baking", <item:minecraft:vine>, <item:dye_depot:verdant_dye>);
Kiln.newRecipe("prismarine_to_teal_from_baking", <item:minecraft:prismarine_shard>, <item:dye_depot:teal_dye>);


for i in RUtil.dyeDepotColors {
    Kiln.newRecipe(i + "_glazed_terracotta_from_baking", <item:dye_depot:${i}_terracotta>, <item:dye_depot:${i}_glazed_terracotta>);
}
DebugUtil.endScript("recipes/dye_depot/kiln_stuff"); 