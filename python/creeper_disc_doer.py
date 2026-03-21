imports = """
import crafttweaker.api.loot.LootContext;
import crafttweaker.api.loot.condition.LootConditions;
"""

def hi(discs: list[str], tags: list[str]):
    buckets = len(tags)
    text = imports + '\n\n\n'
    if len(discs) % 2 == 1:
        text += lootMod(discs[-1])
        discs = discs[:-1]
    
    aSides = discs[::2]
    bSides = discs[1::2]

    aSideBuckets = [[] for _ in range(buckets)]
    for i, disc in enumerate(aSides):
        (aSideBuckets[i % buckets]).append(disc)

    for i, (ls, tag) in enumerate(zip(aSideBuckets, tags)):
        if i >= 8: 
            i += 4
        text += putItemsInTag(ls, "<tag:items:{}>".format(tag),  chr(97 + i))
        text += "\n"


    for up, down in zip(aSides, bSides):
        text += warpRecipe(up, down)

    return text
    

def lootMod(disc):
    return """
loot.modifiers.register("add_extra_disc_to_dungeon", LootConditions.none(), (stacks, ctx) => {
    if (ctx.queriedLootTableId == <resource:minecraft:chests/simple_dungeon> && ctx.random.nextInt(8) == 0) {
        stacks.add(<item:@@@}>); 
    }
    return stacks; 
});\n\n
""".replace('@@@', disc)

def warpRecipe(up, down):
    return "Warping.newRecipe(\"{}_flipping\", <item:{}>, <item:{}>);\n".format(down.split(":")[1], up, down)


def toZsList(strings: list[str]):
    a = ""
    for i in strings:
        a += f"\"{i}\", "

    return a[:-2]

def putItemsInTag(thing: list[str], tag: str, i: str):
    return """
val $$ = [@@];
for i in $$ {
    ##.addId(<resource:${i}>);
}
""".replace("@@", toZsList(thing)).replace("##", tag).replace("$$", i)

def creeperList(a: list[str]):
    b = []
    for i in a:
        b.append("dolt_modpack_how:{}_drop_music_discs".format(i))
        b.append("dolt_modpack_how:charged_{}_drop_music_discs".format(i))
    return b

if __name__ == '__main__':
    a = [
"minecraft:music_disc_cat",
"minecraft:music_disc_blocks",
"minecraft:music_disc_chirp",
"minecraft:music_disc_far",
"minecraft:music_disc_mall",
"minecraft:music_disc_mellohi",
"minecraft:music_disc_stal",
"minecraft:music_disc_strad",
"minecraft:music_disc_ward",
"minecraft:music_disc_11",
"minecraft:music_disc_wait",
"resonance:music_disc_irreal",
"resonance:music_disc_space_pinball",
"resonance:music_disc_underwater_were_okay",
"resonance:music_disc_its_changed",
"resonance:music_disc_new_realization",
"resonance:music_disc_nevermind",
"resonance:music_disc_synthline",
"resonance:music_disc_dream_place_ii",
"resonance:music_disc_xasd",
"resonance:music_disc_chronology",
"resonance:music_disc_pinwheel",
"resonance:music_disc_skunk",
"resonance:music_disc_nome_da_musica",
"ftgu:music_disc_terra",
"ftgu:music_disc_aria",
"ftgu:music_disc_acqua",
"ftgu:music_disc_magma",
"ftgu:music_disc_sprinkle",
"ftgu:music_disc_gamble",
"ftgu:music_disc_ripple",
"ftgu:music_disc_lobby",
"ftgu:music_disc_droop",
"resonance:music_disc_takeaguess",
"resonance:music_disc_how_he_found_the_world_all_strange_and_the_world_found_him_strange_likewise",
"resonance:music_disc_nocturne_button_presses",
"resonance:music_disc_way_way",
"resonance:music_disc_whos_counting_the_days",
"resonance:music_disc_i_think_its_over",
"resonance:music_disc_new_midsts_acid",
"resonance:music_disc_edenic_green_plus",
"resonance:music_disc_crystalline",
"resonance:music_disc_roulette",
"resonance:music_disc_many_years",
"resonance:music_disc_looking_forward",
"resonance:music_disc_skysail",
"resonance:music_disc_discovery",
"resonance:music_disc_neblina",
"resonance:music_disc_in_between_years",
"resonance:music_disc_drifter",
"resonance:music_disc_ther",
"resonance:music_disc_pacific",
"resonance:music_disc_heals",
"resonance:music_disc_star_level_ii",
"resonance:music_disc_star_level",
"resonance:music_disc_32k",
"resonance:music_disc_glass_prism",
"resonance:music_disc_underwater",
"resonance:music_disc_i_swear",
"resonance:music_disc_see_you",
"resonance:music_disc_hello_earth",
"resonance:music_disc_hazy_trip",
"resonance:music_disc_hypnosis",
"resonance:music_disc_wasting_time",
"resonance:music_disc_caligula",
"resonance:music_disc_bliss",
"resonance:music_disc_mind_mirage",
"resonance:music_disc_rituals",
"resonance:music_disc_fine_you",
"resonance:music_disc_punch_your_face",
"resonance:music_disc_lost_and_lost",
"resonance:music_disc_one_day",
"resonance:music_disc_a_cry_in_the_distance",
"resonance:music_disc_earthbound",
"resonance:music_disc_transient_feeling",
"resonance:music_disc_motion",
"resonance:music_disc_chrome",
"resonance:music_disc_unconscious_recollects_ii",
"resonance:music_disc_mizumi",
"resonance:music_disc_unconscious_recollects",
"resonance:music_disc_tranquility_path",
"resonance:music_disc_arcadia_town",
"resonance:music_disc_dream_port",
"resonance:music_disc_highwind_prairie",
"resonance:music_disc_chic_solitude",
"resonance:music_disc_superficialism",
"resonance:music_disc_seeking_truth",
"resonance:music_disc_talking_and_talking",
"resonance:music_disc_aerodynamic_dissemination",
"resonance:music_disc_unit_1644",
"resonance:music_disc_tmiasfor_creep",
"resonance:music_disc_promyshlennyi",
"resonance:music_disc_drive_slow",
"resonance:music_disc_no_future",
"resonance:music_disc_are_you_sad_enough",
"resonance:music_disc_chasing_the_sun",
"resonance:music_disc_aqua_pura",
"resonance:music_disc_u_know",
"resonance:music_disc_sega",
"resonance:music_disc_whitenoisetruthfull",
"resonance:music_disc_a_new_day",
"resonance:music_disc_red_skies",
"resonance:music_disc_another_day",
"resonance:music_disc_after",
"resonance:music_disc_all_i_want",
"resonance:music_disc_refresh_squeezed",
"resonance:music_disc_07_101fitness",
"resonance:disc_fragment_finite_time",
"resonance:disc_fragment_lynx",
"resonance:disc_fragment_achievement",
"resonance:music_disc_farvel",
"resonance:disc_fragment_history_magic",
"resonance:music_disc_pnemia",
"resonance:music_disc_xorri",
"resonance:music_disc_unison",
"resonance:music_disc_conflicting_ideas",
"resonance:music_disc_little_to_no_meaning",
"resonance:music_disc_bestill",
"resonance:music_disc_reaching_out",
"resonance:music_disc_clairvoyance"]
    print(hi(a, creeperList(["creeper", "deeper", "evendeeper", "reefer", "peeper"]))) 
