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

val book = <item:minecraft:book>;

for bookshelf, planks in stuff {
    val p = <item:${planks}>;
    val b = <item:${bookshelf}>;
    craftingTable.remove(b);
    
    craftingTable.addShapeless(bookshelf.toString().replace(":", "_") + "_based", b, [
        p, p, book, book
    ]);
}



DebugUtil.endScript("recipes/misc/bookshelves_good"); 