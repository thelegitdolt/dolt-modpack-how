import os
from typing import Callable

"""
    
"""
def deepFindWithContent(path: str, pred: Callable[[str, str], bool]):
    for name in os.listdir(path):
        absolute_path: str = path + '/' + name

        if os.path.isdir(absolute_path):
            yield from deepFindWithContent(absolute_path, pred)
        else:
            with open(absolute_path, 'r') as file:
                try:
                    contents: str = file.read()
                except UnicodeDecodeError:
                    continue

            if pred(absolute_path, contents):
                yield absolute_path

def deepFind(path: str, pred: Callable[[str], bool]):
    for name in os.listdir(path):
        absolute_path: str = path + '/' + name

        if os.path.isdir(absolute_path):
            yield from deepFind(absolute_path, pred)

        elif pred(absolute_path):
            yield absolute_path

if __name__ == '__main__':
    print(list(deepFindWithContent("/Users/andrewyin/Desktop/Minecraft/Dolt Modpack How/scripts",
                        lambda path, content: "ancient_tome" in content)))
