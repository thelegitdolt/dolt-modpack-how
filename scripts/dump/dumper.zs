import crafttweaker.api.BracketDumpers;
import crafttweaker.api.item.IItemStack;

function main() as void {
    println("BRACKET DUMPER START"); 
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
}



println("BRACKET DUMPER END"); 
# link to dumper doc
# https://docs.blamejared.com/1.19/en/vanilla/api/BracketDumpers