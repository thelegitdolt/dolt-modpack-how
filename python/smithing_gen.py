from paths import test_modpack, data

def id(mod_id, name):
    return f"{test_modpack}{data}/recipes_nomoreupgradetemplates/data/{mod_id}/recipes/{name}.json"

def also_id(mod_id):
    return f"{test_modpack}{data}/recipes_nomoreupgradetemplates/data/{mod_id}/recipes"


import os

def write(name, ing, item, result):
    thing = id(name.split(":")[0], name.split(":")[1])
    os.makedirs(also_id(name.split(":")[0]), exist_ok=True)
    with open(thing, 'w') as file:
        file.write(
"""
{
  "type": "minecraft:smithing_transform",
  "addition": {
    "item": "&&&"
  },
  "base": {
    "item": "***"
  },
  "result": {
    "item": "$$$"
  },
  "template": []
}
""".replace("***", ing).replace("&&&", item).replace("$$$", result)
        )
        print("wrote file at: ", name)



def main():
    i = ["backtank"]
    for c in i:
      b = f"create:copper_backtank"
      a = f"create:netherite_backtank"
      write(f"create:crafting/appliances/netherite_backtank", b, "minecraft:netherite_ingot", a)

main()
