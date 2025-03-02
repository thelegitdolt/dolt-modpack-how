import searcher

import os.path
import re

from paths import desktop

pattern: str = "r.([-0-9]+).([-0-9]+).mca$"

def findCordsFromFilename(path: str):
    a = re.search(pattern, path)
    return a.group(1), a.group(2)

def deepFindAllThatMatch(path: str):
    return searcher.deepFind(path, lambda a: bool(re.search(pattern, a)))


def culler(threshold: int):
    to_cull: list[str] = list(deepFindAllThatMatch(f"{desktop}/amgous sus impostor"))

    counter: int = 0
    for cull in to_cull:
        x, y = findCordsFromFilename(cull)

        if abs(x) > threshold or abs(y) > threshold:
            counter += 1
            os.remove(cull)

    print("Removed", counter, "files")

if __name__ == "__main__":
    culler(3)
