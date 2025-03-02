import os

import paths

if __name__ == '__main__':
    dir = f"{paths.test_modpack}/mods"
    with open(paths.mod_file, 'w') as f:
        for i in os.listdir(dir):
            f.write(i + "\n")




