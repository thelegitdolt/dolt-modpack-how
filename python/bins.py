import re
from paths import test_modpack, server
import shutil
import bisect
import os
from functools import reduce
import random

mod_folder= f"{test_modpack}/mods"
server_mod_folder = f"{server}/mods"
is_addon = re.compile(r'^\[.*?ADDON.*?\]', re.IGNORECASE)
is_lib = re.compile(r'^\{LIB\}', re.IGNORECASE)

def move_folder(folder: str, attempt: int) -> None:
    return f"{folder}/temp{attempt}"


def moveFiles(dir: str, filenames: list[str], dest: str):
    """
        dir: a directory
        filename: a list of filenames relative to the directory
        [f'{dir}/{file}' for file in filename] will be targeted
        dest: the place where those files will be moved to. Dest is a directory. 
        The new file name wil be 
        f'{dir}/{dest}/{file}' for file in name

        if such a file do not exist we will raise an exception
    """
    for file in filenames: 
        abs_file_path = f'{dir}/{file}'
        abs_dest_path = f'{dir}/{dest}/{file}'
        os.makedirs(f'{dir}/{dest}', exist_ok=True)
        # print(abs_file_path, abs_dest_path)
        shutil.move(abs_file_path, abs_dest_path)
        print("Moved", file)


def foreach(iterable, consumer):
    for i in iterable: 
        consumer(i)

def verify_have_same_files(folder1, folder2, throw=True):
    """
        Takes two paths that lead to directories and finds if those directories have any 
        disjoint files. 

        We don't want disjoint files because otherwise it's weird. 
        I could have implemented this with sets easily but it's like 20 lines. Whatever
    """
    folder2files = sorted(os.listdir(folder2))
    missing_files = list()
    for name in os.listdir(folder1):
        index = bisect.bisect_left(folder2files, name)
        if name != folder2files[index]:
            missing_files.append(name)
        else: 
            folder2files.remove(name)
    if folder2files or missing_files:
        # throws things
        if throw:
            print(f"{folder1} missing files: ")
            foreach(folder2files, lambda e: print(e, end=' '))
            print()
            print(f"{folder2} missing files: ")
            foreach(missing_files, lambda e: print(e, end=' '))
            print()
            raise ValueError("Two Folders do not have the the same files")
    
    return folder2files, missing_files

def flatten(dir_path: str) -> None:
    """
        Move all files in a folder out of the folder, back into the directory it is in.
        Dangerous, maybe?
    """
    parent = dir_path[:dir_path.rfind('/')]

    for file in os.listdir(dir_path):
        abs_path = f'{dir_path}/{file}'
        newfile = f'{parent}/{file}'
        shutil.move(abs_path, newfile)
    os.rmdir(dir_path)

def nextAttemptNum(folder_path):
    i = 0
    while os.path.exists(folder_path + str(i)):
        i += 1
    return i

def find_blacklist(files: list[str], dir) -> list[str]:
    regex = r'[\s\-_]*?'
    blacklist = list()
    for file in files:
        pattern = re.compile(reduce(lambda a, b: f'{a}{regex}{b}', 
                                    file.split('_')), re.IGNORECASE)
        
        for mod in os.listdir(dir):
            if pattern.search(mod):
                blacklist.append(mod)
    return blacklist

class BSI: 
    def __init__(self, folder1path=mod_folder, folder2path=server_mod_folder, blacklist=None):
        if blacklist is None:
            blacklist = []

        self.blacklist = find_blacklist(blacklist, folder1path)
        print("Created blacklist for BSI object:", self.blacklist)
        if folder1path is None:
            raise ValueError("Folder 1 can't be none")
        
        self.folder1path = folder1path
        self.folder2path = folder2path

        # todo: auto move openloader
        # todo: specify mods that can't be moved 
        if folder2path is not None:
            verify_have_same_files(self.folder1path, self.folder2path)
    
    def init(self):
        """
            Places all mods tagged [ADDON] to a new temp folder
        """
        def do(folder):
            if folder is not None:
                moveFiles(folder, [file for file in os.listdir(folder) if is_addon.match(file)], "binsearch_addons")
        do(self.folder1path)
        do(self.folder2path)

    def execute(self):
        available_mods = [file for file in os.listdir(self.folder1path) if "{LIB}" not in file and file not in self.blacklist]
        removed_mods = random.sample(available_mods, len(available_mods) // 2)
        
        moveFiles(self.folder1path, removed_mods, "pass_%d" % nextAttemptNum(f"{self.folder1path}/pass_"))
        if self.folder2path is not None:
            moveFiles(self.folder2path, removed_mods, "pass_%d" % nextAttemptNum(f"{self.folder2path}/pass_"))
        
        return self
    
    def endall(self):
        for file in os.listdir(self.folder1path):
            abs_path = f'{self.folder1path}/{file}'
            if os.path.isdir(abs_path):
                self.end_folder(file)

    def end_folder(self, folder):
        flatten(self.folder1path + "/" + folder)
        if self.folder2path is not None:
            flatten(self.folder2path + "/" + folder)

    @staticmethod
    def init_execute():
        tree = BSI.make_default()
        tree.init()
        tree.execute()
        return tree
    
if __name__ == "__main__":
    a = re.compile(r'caverns[\s\-_]*?and[\s\-_]*?chasms', re.IGNORECASE)
    print(a.search('[CONTENT] caverns_and_chasms-1.20.1-2.0.0.jar'))