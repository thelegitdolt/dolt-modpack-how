DebugUtil.startScript("recipes/misc/enchanted_books_hide"); 

import mods.jeitweaker.Jei;    

for enchantment in game.enchantments {
    for i in 1 .. enchantment.getMaxLevel() - 1 {
        val book = <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i, id: 
            enchantment.registryName}]});
    }
} 


DebugUtil.endScript("recipes/misc/enchanted_books_hide"); 