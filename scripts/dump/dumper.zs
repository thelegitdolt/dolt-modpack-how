import crafttweaker.api.BracketDumpers;
import crafttweaker.api.item.IItemStack;


for item in BracketDumpers.getItemBracketDump() {
    val theItem = item as IItemStack; 
    if (<tag:items:minecraft:planks>.contains(theItem)) {
        println(item); 
    }
}

# link to dumper doc
# https://docs.blamejared.com/1.19/en/vanilla/api/BracketDumpers