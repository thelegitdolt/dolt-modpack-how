#priority 1000

import crafttweaker.api.BracketDumpers;
import crafttweaker.api.item.IItemStack;



import crafttweaker.api.game.Game;

function main() as void {
    println("==================== BRACKET DUMPER START ====================="); 
    
    println("==================== BRACKET DUMPER END ====================="); 
}


function dumpAllInTag(tag as string) as void {
    println("==================== BRACKET DUMPER START ====================="); 
    var tagger = <tagmanager:blocks>.tag(tag);
    for block in game.blocks {
        if (tagger.contains(block)) {
            println(block.registryName);
        }
    }
    println("==================== BRACKET DUMPER END ====================="); 
}

function dumpAllContainString(charSequence as string) as void {
    println("==================== BRACKET DUMPER START ====================="); 

    for block in game.blocks {
        val a = block.registryName; 
        if (charSequence in a.toString()) {
            println(block.registryName);
        }
    }
    println("==================== BRACKET DUMPER END ====================="); 
}


# link to dumper doc
# https://docs.blamejared.com/1.20.1/en/vanilla/api/BracketDumpers/
# https://docs.blamejared.com/1.20/en/vanilla/api/game/Game/#properties
