DebugUtil.startScript("recipes/quark/color_rune_duping_sane"); 
    

craftingTable.removeByName("quark:tools/crafting/rune_duplication");

craftingTable.addShaped("color_rune_duping_sane", <item:quark:smithing_template_rune> *2, [
    [<item:minecraft:diamond>, <item:quark:smithing_template_rune>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, <item:minecraft:cobblestone>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>]]);




DebugUtil.endScript("recipes/quark/color_rune_duping_sane"); 