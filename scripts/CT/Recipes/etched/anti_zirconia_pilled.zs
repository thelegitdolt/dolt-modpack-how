DebugUtil.startScript("recipes/etched/anti_zirconia_pilled/"); 
    

val disc_tag = <tag:items:dolt_modpack_how:smelts_to_blank_disc>;
disc_tag.add(<tag:items:minecraft:music_discs>);
disc_tag.remove(<item:caverns_and_chasms:music_disc_copy>);

furnace.removeByName("etched:blank_music_disc");
Kiln.addFurnaceAndKilnTag("blank_disc_smelting_real", disc_tag, <item:etched:blank_music_disc>, 1.0f, "misc", 200);



DebugUtil.endScript("recipes/etched/anti_zirconia_pilled"); 