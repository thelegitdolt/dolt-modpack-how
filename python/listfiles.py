import os

import paths


OKGREEN = '\033[92m'
WARNING = '\033[93m'

if __name__ == '__main__':
    dir = f"{paths.test_modpack}/mods"
    original_files = []
    with open(paths.mod_file, 'r') as file:
        for i in file.read().split("\n"):
            if ".jar" in i:
                original_files.append(i)
    new_files = []

    with open(paths.mod_file, 'w') as f:
        for i in sorted(os.listdir(dir)):
            if ".jar" in i:
                if i not in original_files:
                    new_files.append(i)
                else:
                    original_files.remove(i)
                f.write(i + "\n")

    for i in original_files:
        print(f"{WARNING}removed {i}")
    for i in new_files:
        print(f"{OKGREEN}added {i}")