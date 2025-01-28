DebugUtil.startScript("/Loot/blocks/woodworks/bookshelf_become_good.zs/"); 
    

import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.resource.ResourceLocation;


function bookshelfDropSelf(wood as ResourceLocation) as void {
    val bookshelf = <block:${wood.toString()}>;

    bookshelf.addLootModifier("remove_" + wood.getPath() + "_books", 
        CommonLootModifiers.remove(<item:minecraft:book>));

    bookshelf.addNoSilkTouchLootModifier("add_non_silk_touch_drops_for_" + wood.getPath(), 
        CommonLootModifiers.add(<item:${wood.toString()}>));
}


function chiseledBookshelf(wood as ResourceLocation) as void {
    val bookshelf = <block:${wood.toString()}>;

    bookshelf.addNoSilkTouchLootModifier("add_non_silk_touch_drops_for_" + wood.getPath(), 
        CommonLootModifiers.add(<item:${wood.toString()}>));
}


var bookshelves = WoodList.create(Constants.WOODWORKS, (str) => str + "_bookshelf").moddedNP().build(); 

for wood in bookshelves {
    if (wood.getPath() != "oak_bookshelf") {
        bookshelfDropSelf(wood);
    }
}

var chiseled_stuff = WoodList.create(Constants.WOODWORKS, (str) => "chiseled_" + str + "_bookshelf").moddedNP().build();

for wood in chiseled_stuff {
    if (wood.getPath() != "chiseled_oak_bookshelf") {
        chiseledBookshelf(wood);
    }
}

bookshelfDropSelf(new ResourceLocation("minecraft", "bookshelf"));
chiseledBookshelf(new ResourceLocation("minecraft", "chiseled_bookshelf"));



DebugUtil.endScript("/Loot/blocks/woodworks/bookshelf_become_good.zs"); 