import os
from typing import Callable

from paths import data
from paths import test_modpack


def fapply(path: str, func: Callable[[str, str], str]):
    with open(path, 'r') as file:
        contents = file.read()
    contents = func(path, contents)
    with open(path, 'w') as file:
        file.write(contents)

"""
    A function that takes a folder, than iterates through all files within them recursively. 
    It will look at their contents and apply a function Func with parameters taking in a file's path and contents, to it
    Writing the resulting output into the file, overwriting its previous contents. 
"""
def foreach_in_dir_deep(path: str, func: Callable[[str, str], str]) -> None:
    for i in os.listdir(path):
        actual_path = f"{path}/{i}"

        if os.path.isdir(actual_path):
            foreach_in_dir_deep(actual_path, func)
            continue
        elif i.startswith('.'):
            continue

        try:
            fapply(actual_path, func)
        except FileNotFoundError:
            continue

def identity(path, contents):
    return contents.replace("250", "333").replace("1000", "999").replace("500", "333")

if __name__ == "__main__":
    foreach_in_dir_deep(f"{test_modpack}/{data}/Recipes/data/brewinandchewin/recipes/fermenting", identity)