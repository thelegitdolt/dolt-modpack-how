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

import json
from collections import defaultdict

def lol(path, writePath):
    a = defaultdict(list)
    with open(writePath, 'w') as writeTo:
        unscrew(path, writeTo, a)
    return a

def unscrew(path, writeTo, go_for):
    for subpath in os.listdir(path):
        absolute_path = f"{path}/{subpath}"
        if os.path.isdir(absolute_path):
            unscrew(absolute_path, writeTo, go_for)
        elif subpath.endswith("json"):
            with open(absolute_path, 'r') as file:
                a = json.load(file)
                try:
                    real = absolute_path.replace("/Users/andrewyin/Desktop/Minecraft/Dolt Modpack How/config/openloader/resources/auditory 2/assets/", "").replace("/polytone/block_modifiers/", ":").replace(".json", "")
                    go_for[a['sound_type']].append(real)
                    writeTo.write(f"{a['sound_type']}: {real}\n")
                except KeyError:
                    pass
                


if __name__ == '__main__':
    print(lol("/Users/andrewyin/Desktop/Minecraft/Dolt Modpack How/config/openloader/resources/auditory 2/assets", "/Users/andrewyin/Desktop/ancient_leaves.json"))
