import paths
import os

auditory_path = f"{paths.textures}/auditory 2/assets"

# https://github.com/MehVahdJukaar/polytone/wiki/Block-Properties-Modifiers
# https://github.com/MehVahdJukaar/polytone/wiki/Custom-Sound-Events


def get_path(block):
    namespace, path = block.split(':')
    return auditory_path + f"/{namespace}/polytone/block_modifiers/{path}.json"

def get_content(soundtype):
    return """{
   "sound_type": "@@@"
}""".replace("@@@", soundtype)

def write(block, soundtype):
    json_path = get_path(block)
    os.makedirs(os.path.dirname(json_path), exist_ok=True)
    with open(json_path, 'w') as file:
        file.write(get_content(soundtype))
        print("Written file at", json_path)

def write_list(block_ls, soundtype):
    for block in block_ls:
        write(block, soundtype)

if __name__ == '__main__':
    write_list([
"minecraft:spruce_leaves",
"woodworks:spruce_leaf_pile",
"minecraft:birch_leaves",
"woodworks:birch_leaf_pile",
"minecraft:oak_leaves",
"woodworks:oak_leaf_pile",
"minecraft:jungle_leaves",
"windswept:flowering_acacia_leaf_pile",
"windswept:flowering_acacia_leaves",
"woodworks:jungle_leaf_pile",
"minecraft:dark_oak_leaves",
"woodworks:dark_oak_leaf_pile",
"minecraft:acacia_leaves",
"woodworks:acacia_leaf_pile",
"minecraft:mangrove_leaves",
"woodworks:mangrove_leaf_pile",
"minecraft:cherry_leaves",
"atmospheric:morado_leaf_pile",
"atmospheric:morado_leaves",
"atmospheric:rosewood_leaf_pile",
"atmospheric:rosewood_leaves",
"woodworks:cherry_leaf_pile",
"atmospheric:flowering_morado_leaves",
"atmospheric:flowering_morado_leaf_pile",
"atmospheric:yucca_leaves",
"atmospheric:yucca_leaf_pile",
"atmospheric:laurel_leaves",
"atmospheric:aspen_leaf_pile",
"atmospheric:aspen_leaves",
"atmospheric:laurel_leaf_pile",
"atmospheric:green_aspen_leaves",
"atmospheric:green_aspen_leaf_pile",
"atmospheric:dry_laurel_leaves",
"atmospheric:dry_laurel_leaf_pile",
"atmospheric:kousa_leaves",
"atmospheric:kousa_leaf_pile",
"atmospheric:currant_leaves",
"autumnity:maple_leaf_pile",
"autumnity:maple_leaves",
"atmospheric:grimwood_leaves",
"atmospheric:grimwood_leaf_pile",
"atmospheric:currant_leaf_pile",
"autumnity:yellow_maple_leaves",
"autumnity:yellow_maple_leaf_pile",
"dolt_mod_how:ancient_leaf_pile",
"autumnity:red_maple_leaf_pile",
"environmental:pine_leaf_pile",
"environmental:cheerful_plum_leaves",
"environmental:cheerful_plum_leaf_pile",
"environmental:willow_leaves",
"autumnity:orange_maple_leaves",
"autumnity:orange_maple_leaf_pile",
"environmental:willow_leaf_pile",
"environmental:plum_leaves",
"environmental:plum_leaf_pile",
"environmental:pine_leaves",
"autumnity:red_maple_leaves",
"environmental:moody_plum_leaves",
"environmental:pink_wisteria_leaf_pile",
"environmental:white_wisteria_leaves",
"upgrade_aquatic:river_leaf_pile",
"windswept:pine_leaves",
"spawn:fallen_leaves",
"environmental:hanging_willow_leaves",
"environmental:pink_hanging_wisteria_leaves",
"environmental:purple_hanging_wisteria_leaves",
"environmental:blue_hanging_wisteria_leaves",
"environmental:white_hanging_wisteria_leaves",
"alexscaves:ancient_leaves",
"windswept:pine_leaf_pile",
"windswept:holly_leaves",
"windswept:holly_leaf_pile",
"windswept:chestnut_leaves",
"windswept:chestnut_leaf_pile",
"upgrade_aquatic:river_leaves",
"environmental:hibiscus_leaf_pile",
"environmental:hibiscus_leaves",
"environmental:purple_wisteria_leaves",
"environmental:white_wisteria_leaf_pile",
"environmental:purple_wisteria_leaf_pile",
"environmental:blue_wisteria_leaves",
"environmental:pink_wisteria_leaves",
"environmental:blue_wisteria_leaf_pile",
"environmental:wisteria_leaf_pile",
"environmental:moody_plum_leaf_pile",
"environmental:wisteria_leaves"], "azalea_leaves")
