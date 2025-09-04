drop_self = """{
  "type": "minecraft:block",
  "pools": [
    {
      "bonus_rolls": 0.0,
      "conditions": [
        {
          "condition": "minecraft:survives_explosion"
        }
      ],
      "entries": [
        {
          "type": "minecraft:item",
          "name": "%id:%name"
        }
      ],
      "rolls": 1.0
    }
  ],
  "random_sequence": "%id:blocks/%name"
}"""

from paths import *
import os

def get_path_loot_table(modid: str, name: str) -> str:
    return f'{test_modpack}/{data}/LootTable_glass/data/{modid}/loot_tables/blocks/{name}.json'


def get_loot_table(modid: str, name: str) -> str:
    return drop_self.replace('%id', modid).replace('%name', name)


def generateDropSelfLootTables(modid: str, name: str) -> None:
    path = get_path_loot_table(modid, name)

    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as file:
        file.write(get_loot_table(modid, name))

    print(f"generated value for {modid}:{name}")


def generateForAll(ls: list[str]) -> None:
    for value in ls:
        modid, name = value.split(':')
        generateDropSelfLootTables(modid, name)


if __name__ == '__main__':
    generateForAll(["windswept:chestnut_bookshelf",
"windswept:holly_bookshelf",
"windswept:pine_bookshelf",
"dolt_mod_how:pewen_bookshelf",
"dolt_mod_how:chiseled_pewen_bookshelf",
"dolt_mod_how:thornwood_bookshelf",
"dolt_mod_how:chiseled_thornwood_bookshelf"])
