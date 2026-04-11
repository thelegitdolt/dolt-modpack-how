DebugUtil.startScript("recipes/immersiveenchanting/the_books"); 

import crafttweaker.api.ingredient.IIngredient;

val a = {
    "allurement:alleviating": <item:caverns_and_chasms:living_flesh> as IIngredient,
    "minecraft:aqua_affinity": <item:upgrade_aquatic:pickerelweed> as IIngredient, 
    "allurement:alleviating": <item:caverns_and_chasms:living_flesh> as IIngredient,
    "minecraft:blast_protection": <item:minecraft:gunpowder> as IIngredient,
    "minecraft:bane_of_arthropods": <item:dungeonsdelight:spider_meat> as IIngredient,
    "minecraft:binding_curse": <item:minecraft:slime_ball> as IIngredient,
    "minecraft:channeling": <item:caverns_and_chasms:oxidized_copper_ingot>,
    "minecraft:depth_strider": <tag:items:minecraft:fishes> as IIngredient,
    "minecraft:feather_falling": <item:minecraft:phantom_membrane> as IIngredient,
    "minecraft:fire_aspect": <item:minecraft:blaze_powder> as IIngredient,
    "minecraft:fire_protection": <item:oreganized:lead_ingot> as IIngredient,
    "minecraft:frost_walker": <item:windswept:frozen_branch> as IIngredient,
    "minecraft:fortune": <item:minecraft:gold_ingot> as IIngredient,
    "minecraft:infinity": <item:caverns_and_chasms:zirconia> as IIngredient,
    "minecraft:knockback": <item:mynethersdelight:hoglin_hide> as IIngredient,
    "allurement:launch": <tag:items:minecraft:saplings> as IIngredient,
    "minecraft:looting": <item:buzzier_bees:four_leaf_clover> as IIngredient,
    "minecraft:loyalty": <item:upgrade_aquatic:thrasher_tooth> as IIngredient,
    "minecraft:multishot":  <item:wilderflowers:hopeful_wildflowers> | <item:wilderflowers:moody_wildflowers> | <item:wilderflowers:cheery_wildflowers>,
    "allurement:obedience": <item:species:broken_links> as IIngredient,
    "minecraft:piercing": <item:netherexp:phasmo_shard> as IIngredient,
    "minecraft:projectile_protection": <item:minecraft:bone> as IIngredient,
    "minecraft:quick_charge": <item:minecraft:redstone> as IIngredient,
    "allurement:reforming": <item:minecraft:ghast_tear> as IIngredient,
    "minecraft:respiration": <tag:items:dolt_modpack_how:corals> as IIngredient,
    "minecraft:riptide": <item:minecraft:nautilus_shell> as IIngredient,
    "minecraft:sharpness": <item:caverns_and_chasms:silver_ingot> as IIngredient,
    "allurement:spread_of_ailments": <item:dungeonsdelight:rotbulb> as IIngredient,
    "windswept:slipping_curse": <item:neapolitan:banana_bunch> as IIngredient,
    "allurement:shockwave": <item:species:kinetic_core> as IIngredient,
    "minecraft:smite": <item:buzzier_bees:buttercup> | <item:spawn:sunflower>,
    "minecraft:thorns": <item:atmospheric:yucca_flower> as IIngredient,
    "minecraft:unbreaking": <item:create:powdered_obsidian> as IIngredient,
    "minecraft:vanishing_curse": <item:caverns_and_chasms:spinel> as IIngredient,
    "allurement:vengeance": <item:quark:soul_bead> as IIngredient
} as IIngredient[string];

for enchant, item in a {
    enchanting("john_book_for_" + enchant.replace(":", "_"), enchant, item);
}

function enchanting(name as string, enchantment as string, reagent as IIngredient) as void {

    val diamond = <item:minecraft:diamond>;
    val book = <item:minecraft:book>;

    craftingTable.addShaped(name, <item:immersiveenchanting:ancient_book>.withTag({StoredEnchantments: [{lvl: 1, id: enchantment}]}), [
            [diamond, reagent, diamond],
            [diamond, book, diamond],
            [diamond, diamond, diamond]    
    ]);
} 

val diamond = <item:minecraft:diamond>;
val book = <item:minecraft:book>;


DebugUtil.endScript("recipes/immersiveenchanting/the_books"); 