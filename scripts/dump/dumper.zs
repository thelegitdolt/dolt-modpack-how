#priority 1000

import crafttweaker.api.BracketDumpers;
import crafttweaker.api.item.IItemStack;



import crafttweaker.api.game.Game;

function main() as void {
    println("==================== BRACKET DUMPER START ====================="); 
    for item in BracketDumpers.getItemBracketDump() {
        var x as int = item.indexOf(">."); 
        if (x > -1) {
            continue; 
        }
        
        val theItem = <item:${item[6 .. item.length - 1]}>; 

        if (<tag:items:minecraft:planks>.contains(theItem)) {
            println(item); 
        }
    }
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

dumpAllInTag("oreganized:crystal_glass_panes");

# link to dumper doc
# https://docs.blamejared.com/1.20.1/en/vanilla/api/BracketDumpers/
# https://docs.blamejared.com/1.20/en/vanilla/api/game/Game/#properties
