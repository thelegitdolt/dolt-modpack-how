DebugUtil.startScript("tags/dolt_modpack_how/creeper_discs_drops");

import crafttweaker.api.loot.LootContext;
import crafttweaker.api.loot.condition.LootConditions;

val a = ["minecraft:music_disc_cat", "resonance:music_disc_chronology", "resonance:music_disc_edenic_green_plus", "resonance:music_disc_hello_earth", "resonance:music_disc_tranquility_path", "resonance:music_disc_a_new_day"];
for i in a {
    <tag:items:dolt_modpack_how:creeper_drop_music_discs>.addId(<resource:${i}>);
}


val b = ["minecraft:music_disc_chirp", "resonance:music_disc_skunk", "resonance:music_disc_roulette", "resonance:music_disc_hypnosis", "resonance:music_disc_dream_port", "resonance:music_disc_another_day"];
for i in b {
    <tag:items:dolt_modpack_how:charged_creeper_drop_music_discs>.addId(<resource:${i}>);
}


val c = ["minecraft:music_disc_mall", "ftgu:music_disc_terra", "resonance:music_disc_looking_forward", "resonance:music_disc_caligula", "resonance:music_disc_chic_solitude", "resonance:music_disc_all_i_want"];
for i in c {
    <tag:items:dolt_modpack_how:deeper_drop_music_discs>.addId(<resource:${i}>);
}


val d = ["minecraft:music_disc_stal", "ftgu:music_disc_acqua", "resonance:music_disc_discovery", "resonance:music_disc_mind_mirage", "resonance:music_disc_seeking_truth", "resonance:music_disc_07_101fitness"];
for i in d {
    <tag:items:dolt_modpack_how:charged_deeper_drop_music_discs>.addId(<resource:${i}>);
}


val e = ["minecraft:music_disc_ward", "ftgu:music_disc_sprinkle", "resonance:music_disc_in_between_years", "resonance:music_disc_fine_you", "resonance:music_disc_aerodynamic_dissemination", "resonance:disc_fragment_lynx"];
for i in e {
    <tag:items:dolt_modpack_how:evendeeper_drop_music_discs>.addId(<resource:${i}>);
}


val f = ["minecraft:music_disc_wait", "ftgu:music_disc_ripple", "resonance:music_disc_ther", "resonance:music_disc_lost_and_lost", "resonance:music_disc_tmiasfor_creep", "resonance:music_disc_farvel"];
for i in f {
    <tag:items:dolt_modpack_how:charged_evendeeper_drop_music_discs>.addId(<resource:${i}>);
}


val g = ["resonance:music_disc_space_pinball", "ftgu:music_disc_droop", "resonance:music_disc_heals", "resonance:music_disc_a_cry_in_the_distance", "resonance:music_disc_drive_slow", "resonance:music_disc_pnemia"];
for i in g {
    <tag:items:dolt_modpack_how:reefer_drop_music_discs>.addId(<resource:${i}>);
}


val h = ["resonance:music_disc_its_changed", "resonance:music_disc_how_he_found_the_world_all_strange_and_the_world_found_him_strange_likewise", "resonance:music_disc_star_level", "resonance:music_disc_transient_feeling", "resonance:music_disc_are_you_sad_enough", "resonance:music_disc_unison"];
for i in h {
    <tag:items:dolt_modpack_how:charged_reefer_drop_music_discs>.addId(<resource:${i}>);
}


val k = ["resonance:music_disc_nevermind", "resonance:music_disc_way_way", "resonance:music_disc_glass_prism", "resonance:music_disc_chrome", "resonance:music_disc_aqua_pura", "resonance:music_disc_little_to_no_meaning"];
for i in k {
    <tag:items:dolt_modpack_how:peeper_drop_music_discs>.addId(<resource:${i}>);
}


val j = ["resonance:music_disc_dream_place_ii", "resonance:music_disc_i_think_its_over", "resonance:music_disc_i_swear", "resonance:music_disc_mizumi", "resonance:music_disc_sega", "resonance:music_disc_reaching_out"];
for i in j {
    <tag:items:dolt_modpack_how:charged_peeper_drop_music_discs>.addId(<resource:${i}>);
}

Warping.newRecipe("music_disc_blocks_flipping", <item:minecraft:music_disc_cat>, <item:minecraft:music_disc_blocks>);
Warping.newRecipe("music_disc_far_flipping", <item:minecraft:music_disc_chirp>, <item:minecraft:music_disc_far>);
Warping.newRecipe("music_disc_mellohi_flipping", <item:minecraft:music_disc_mall>, <item:minecraft:music_disc_mellohi>);
Warping.newRecipe("music_disc_strad_flipping", <item:minecraft:music_disc_stal>, <item:minecraft:music_disc_strad>);
Warping.newRecipe("music_disc_11_flipping", <item:minecraft:music_disc_ward>, <item:minecraft:music_disc_11>);
Warping.newRecipe("music_disc_irreal_flipping", <item:minecraft:music_disc_wait>, <item:resonance:music_disc_irreal>);
Warping.newRecipe("music_disc_underwater_were_okay_flipping", <item:resonance:music_disc_space_pinball>, <item:resonance:music_disc_underwater_were_okay>);
Warping.newRecipe("music_disc_new_realization_flipping", <item:resonance:music_disc_its_changed>, <item:resonance:music_disc_new_realization>);
Warping.newRecipe("music_disc_synthline_flipping", <item:resonance:music_disc_nevermind>, <item:resonance:music_disc_synthline>);
Warping.newRecipe("music_disc_xasd_flipping", <item:resonance:music_disc_dream_place_ii>, <item:resonance:music_disc_xasd>);
Warping.newRecipe("music_disc_pinwheel_flipping", <item:resonance:music_disc_chronology>, <item:resonance:music_disc_pinwheel>);
Warping.newRecipe("music_disc_nome_da_musica_flipping", <item:resonance:music_disc_skunk>, <item:resonance:music_disc_nome_da_musica>);
Warping.newRecipe("music_disc_aria_flipping", <item:ftgu:music_disc_terra>, <item:ftgu:music_disc_aria>);
Warping.newRecipe("music_disc_magma_flipping", <item:ftgu:music_disc_acqua>, <item:ftgu:music_disc_magma>);
Warping.newRecipe("music_disc_gamble_flipping", <item:ftgu:music_disc_sprinkle>, <item:ftgu:music_disc_gamble>);
Warping.newRecipe("music_disc_lobby_flipping", <item:ftgu:music_disc_ripple>, <item:ftgu:music_disc_lobby>);
Warping.newRecipe("music_disc_takeaguess_flipping", <item:ftgu:music_disc_droop>, <item:resonance:music_disc_takeaguess>);
Warping.newRecipe("music_disc_nocturne_button_presses_flipping", <item:resonance:music_disc_how_he_found_the_world_all_strange_and_the_world_found_him_strange_likewise>, <item:resonance:music_disc_nocturne_button_presses>);
Warping.newRecipe("music_disc_whos_counting_the_days_flipping", <item:resonance:music_disc_way_way>, <item:resonance:music_disc_whos_counting_the_days>);
Warping.newRecipe("music_disc_new_midsts_acid_flipping", <item:resonance:music_disc_i_think_its_over>, <item:resonance:music_disc_new_midsts_acid>);
Warping.newRecipe("music_disc_crystalline_flipping", <item:resonance:music_disc_edenic_green_plus>, <item:resonance:music_disc_crystalline>);
Warping.newRecipe("music_disc_many_years_flipping", <item:resonance:music_disc_roulette>, <item:resonance:music_disc_many_years>);
Warping.newRecipe("music_disc_skysail_flipping", <item:resonance:music_disc_looking_forward>, <item:resonance:music_disc_skysail>);
Warping.newRecipe("music_disc_neblina_flipping", <item:resonance:music_disc_discovery>, <item:resonance:music_disc_neblina>);
Warping.newRecipe("music_disc_drifter_flipping", <item:resonance:music_disc_in_between_years>, <item:resonance:music_disc_drifter>);
Warping.newRecipe("music_disc_pacific_flipping", <item:resonance:music_disc_ther>, <item:resonance:music_disc_pacific>);
Warping.newRecipe("music_disc_star_level_ii_flipping", <item:resonance:music_disc_heals>, <item:resonance:music_disc_star_level_ii>);
Warping.newRecipe("music_disc_32k_flipping", <item:resonance:music_disc_star_level>, <item:resonance:music_disc_32k>);
Warping.newRecipe("music_disc_underwater_flipping", <item:resonance:music_disc_glass_prism>, <item:resonance:music_disc_underwater>);
Warping.newRecipe("music_disc_see_you_flipping", <item:resonance:music_disc_i_swear>, <item:resonance:music_disc_see_you>);
Warping.newRecipe("music_disc_hazy_trip_flipping", <item:resonance:music_disc_hello_earth>, <item:resonance:music_disc_hazy_trip>);
Warping.newRecipe("music_disc_wasting_time_flipping", <item:resonance:music_disc_hypnosis>, <item:resonance:music_disc_wasting_time>);
Warping.newRecipe("music_disc_bliss_flipping", <item:resonance:music_disc_caligula>, <item:resonance:music_disc_bliss>);
Warping.newRecipe("music_disc_rituals_flipping", <item:resonance:music_disc_mind_mirage>, <item:resonance:music_disc_rituals>);
Warping.newRecipe("music_disc_punch_your_face_flipping", <item:resonance:music_disc_fine_you>, <item:resonance:music_disc_punch_your_face>);
Warping.newRecipe("music_disc_one_day_flipping", <item:resonance:music_disc_lost_and_lost>, <item:resonance:music_disc_one_day>);
Warping.newRecipe("music_disc_earthbound_flipping", <item:resonance:music_disc_a_cry_in_the_distance>, <item:resonance:music_disc_earthbound>);
Warping.newRecipe("music_disc_motion_flipping", <item:resonance:music_disc_transient_feeling>, <item:resonance:music_disc_motion>);
Warping.newRecipe("music_disc_unconscious_recollects_ii_flipping", <item:resonance:music_disc_chrome>, <item:resonance:music_disc_unconscious_recollects_ii>);
Warping.newRecipe("music_disc_unconscious_recollects_flipping", <item:resonance:music_disc_mizumi>, <item:resonance:music_disc_unconscious_recollects>);
Warping.newRecipe("music_disc_arcadia_town_flipping", <item:resonance:music_disc_tranquility_path>, <item:resonance:music_disc_arcadia_town>);
Warping.newRecipe("music_disc_highwind_prairie_flipping", <item:resonance:music_disc_dream_port>, <item:resonance:music_disc_highwind_prairie>);
Warping.newRecipe("music_disc_superficialism_flipping", <item:resonance:music_disc_chic_solitude>, <item:resonance:music_disc_superficialism>);
Warping.newRecipe("music_disc_talking_and_talking_flipping", <item:resonance:music_disc_seeking_truth>, <item:resonance:music_disc_talking_and_talking>);
Warping.newRecipe("music_disc_unit_1644_flipping", <item:resonance:music_disc_aerodynamic_dissemination>, <item:resonance:music_disc_unit_1644>);
Warping.newRecipe("music_disc_promyshlennyi_flipping", <item:resonance:music_disc_tmiasfor_creep>, <item:resonance:music_disc_promyshlennyi>);
Warping.newRecipe("music_disc_no_future_flipping", <item:resonance:music_disc_drive_slow>, <item:resonance:music_disc_no_future>);
Warping.newRecipe("music_disc_chasing_the_sun_flipping", <item:resonance:music_disc_are_you_sad_enough>, <item:resonance:music_disc_chasing_the_sun>);
Warping.newRecipe("music_disc_u_know_flipping", <item:resonance:music_disc_aqua_pura>, <item:resonance:music_disc_u_know>);
Warping.newRecipe("music_disc_whitenoisetruthfull_flipping", <item:resonance:music_disc_sega>, <item:resonance:music_disc_whitenoisetruthfull>);
Warping.newRecipe("music_disc_red_skies_flipping", <item:resonance:music_disc_a_new_day>, <item:resonance:music_disc_red_skies>);
Warping.newRecipe("music_disc_after_flipping", <item:resonance:music_disc_another_day>, <item:resonance:music_disc_after>);
Warping.newRecipe("music_disc_refresh_squeezed_flipping", <item:resonance:music_disc_all_i_want>, <item:resonance:music_disc_refresh_squeezed>);
Warping.newRecipe("disc_fragment_finite_time_flipping", <item:resonance:music_disc_07_101fitness>, <item:resonance:disc_fragment_finite_time>);
Warping.newRecipe("disc_fragment_achievement_flipping", <item:resonance:disc_fragment_lynx>, <item:resonance:disc_fragment_achievement>);
Warping.newRecipe("disc_fragment_history_magic_flipping", <item:resonance:music_disc_farvel>, <item:resonance:disc_fragment_history_magic>);
Warping.newRecipe("music_disc_xorri_flipping", <item:resonance:music_disc_pnemia>, <item:resonance:music_disc_xorri>);
Warping.newRecipe("music_disc_conflicting_ideas_flipping", <item:resonance:music_disc_unison>, <item:resonance:music_disc_conflicting_ideas>);
Warping.newRecipe("music_disc_bestill_flipping", <item:resonance:music_disc_little_to_no_meaning>, <item:resonance:music_disc_bestill>);
Warping.newRecipe("music_disc_clairvoyance_flipping", <item:resonance:music_disc_reaching_out>, <item:resonance:music_disc_clairvoyance>);


DebugUtil.endScript("tags/dolt_modpack_how/creeper_discs_drops");