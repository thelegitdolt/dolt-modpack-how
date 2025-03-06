DebugUtil.startScript("recipes/misc/enchanted_books_hide"); 

import mods.jeitweaker.Jei;    

for enchantment in game.enchantments {
    for i in 1 .. enchantment.getMaxLevel() - 1 {
        val book = <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i, id: 
            enchantment.registryName}]});
    }
} 

Jei.hideIngredient(<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4, id: "minecraft:fire_protection"}]}));

DebugUtil.endScript("recipes/misc/enchanted_books_hide"); 