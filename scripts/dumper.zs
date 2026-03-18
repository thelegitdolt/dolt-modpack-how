#priority 1000

import crafttweaker.api.BracketDumpers;
import crafttweaker.api.item.IItemStack;



import crafttweaker.api.game.Game;




function dumpAllInTag(tag as string) as void {
    println("==================== SEX SEX SEX 1 ====================="); 
    var tagger = <tagmanager:blocks>.tag(tag);
    for block in game.blocks {
        if (tagger.contains(block)) {
            println(block.registryName);
        }
    }
    println("==================== SUPER SEX LOL ====================="); 
}

function itemTag(tag as string) as void {
    println("==================== SEX SEX SEX item tag ====================="); 
    var tagger = <tagmanager:items>.tag(tag);
    for item in game.items {
        if (tagger.contains(item)) {
            println(item.registryName);
        }
    }
    println("==================== SUPER SEX LOL ====================="); 
}

function dumpAllContainString(charSequence as string) as void {
    println("==================== SEX SEX SEX string regex idk  ====================="); 

    for block in game.blocks {
        val a = block.registryName; 
        if (charSequence in a.toString()) {
            println(block.registryName);
        }
    }
    println("==================== SUPER SEX LOL ====================="); 
}


# link to dumper doc
# https://docs.blamejared.com/1.20.1/en/vanilla/api/BracketDumpers/
# https://docs.blamejared.com/1.20/en/vanilla/api/game/Game/#properties
