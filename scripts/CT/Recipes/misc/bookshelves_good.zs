DebugUtil.startScript("recipes/misc/bookshelves_good"); 
    
val stuff = WoodUtil.asPair(
    WoodList.create("woodworks", (wood) => wood + "_bookshelf")
        .moddedEC().filter("rotten", "wormwood")
        .specialModid(["pewen", "thornwood"], "dolt_mod_how")
        .specialModid(["oak"], "minecraft")
        .specialFunc(["oak"], (wood) => "bookshelf").build(),
    WoodList.create("minecraft", (wood) => wood + "_planks")
        .moddedOriginal()
        .filter("rotten", "wormwood").build()
);

val chiseled = WoodList.create("woodworks", (wood) => "chiseled_" + wood + "_bookshelf")
        .moddedEC().filter("rotten", "wormwood")
        .specialModid(["pewen", "thornwood"], "dolt_mod_how")
        .specialModid(["oak"], "minecraft")
        .specialFunc(["oak"], (wood) => "chiseled_bookshelf").build();
val plankers = WoodList.create("minecraft", (wood) => wood + "_planks")
        .moddedOriginal()
        .filter("rotten", "wormwood").build(); 
val slabbers = WoodList.create("minecraft", (wood) => wood + "_slab")
        .moddedOriginal()
        .filter("rotten", "wormwood").build(); 

val book = <item:minecraft:book>;

for bookshelf, planks in stuff {
    val p = <item:${planks}>;
    val b = <item:${bookshelf}>;
    craftingTable.remove(b);
    
    craftingTable.addShaped(bookshelf.toString().replace(":", "_") + "_based", b * 3, [
        [p, p, p], [book, book, book], [p, p, p]
    ]);
}

for i in 0 .. slabbers.length {
    val chis = <item:${chiseled[i]}>;
    val p = <item:${plankers[i]}>;
    val slab = <item:${slabbers[i]}>;

    craftingTable.remove(chis);
    craftingTable.addShaped(chiseled[i].toString().replace(":", "_") + "_based", chis * 3, [
        [p, p, p], [slab, slab, slab], [p, p, p]
    ]);
}



DebugUtil.endScript("recipes/misc/bookshelves_good"); 