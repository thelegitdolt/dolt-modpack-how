import paths
import os

auditory_path = f"{paths.textures}/auditory 2/assets"


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
    "minecraft:coal_ore",
    "minecraft:copper_ore",
    "minecraft:iron_ore",
    "oreganized:lead_ore",
    "minecraft:gold_ore",
    "caverns_and_chasms:silver_ore",
    "caverns_and_chasms:spinel_ore",
    "minecraft:lapis_ore",
    "minecraft:diamond_ore",
    "minecraft:redstone_ore",
    "minecraft:emerald_ore",
    "caverns_and_chasms:turquoise_ore",
    "create:zinc_ore",
    "minecraft:raw_iron_block",
    "minecraft:raw_copper_block",
    "oreganized:raw_lead_block",
    "caverns_and_chasms:raw_silver_block",
    "etcetera:raw_bismuth_block",
    "minecraft:raw_gold_block",
    "caverns_and_chasms:raw_tin_block",
    "create:raw_zinc_block"    ], "nether_gold_ore")
