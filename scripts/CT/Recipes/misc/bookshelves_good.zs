DebugUtil.startScript("recipes/misc/bookshelves_good"); 
    
val stuff = WoodUtil.asPair(
    WoodList.create("woodworks", (wood) => wood + "_bookshelf")
        .moddedEC().filter("oak", "rotten", "wormwood").specialModid(["pewen", "thornwood"], "dolt_mod_how").build(),
    WoodList.create("minecraft", (wood) => wood + "_planks")
        .moddedOriginal().filter("oak", "rotten", "wormwood").build()
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

craftingTable.remove(<item:minecraft:bookshelf>);
craftingTable.addShapeless("oak_bookshelf_based", <item:minecraft:bookshelf>, [
        <item:minecraft:oak_planks>, <item:minecraft:oak_planks>, book, book
]);

DebugUtil.endScript("recipes/misc/bookshelves_good"); 