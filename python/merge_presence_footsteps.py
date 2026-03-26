import os
from os import path as pth
import json
import paths

root_paths = f"{paths.textures}/presenceFootsteps"
publish_path = f"{root_paths}/__publish/assets/presencefootsteps/config/"
types = [
   "blockmap",  "locomotionmap", "primitivemap", "golemmap"
]

def collect_files(path, filename):
  found = []
  for folder in os.listdir(path):
    if folder == '__publish': 
       continue
    
    traversing_path = f'{path}/{folder}/assets/presencefootsteps/config/{filename}.json'
    if pth.exists(traversing_path):
       found.append(traversing_path)
  return found

def merge_files(filenames: list[str]):
    a = dict()
    for name in filenames:
      with open(name, 'r') as json_file:
         contents = json.load(json_file)
         a = a | contents
    return json.dumps(a)

def write_to_real(map_type: str, contents):
    with open(f"{publish_path}/{map_type}.json", 'w') as file:
       file.write(contents)

def run():
   for type in types:
      write_to_real(type, merge_files(collect_files(root_paths, type)))

   


if __name__ == '__main__':
    run()
  