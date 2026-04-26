#priority 4

DebugUtil.startScript("recipes/misc/bookshelves_good"); 

var thing = WoodGroup.create("wormwood")
    .add("book", "%s_bookshelf")
    .add("chiseled", "chiseled_%s_bookshelf")
    .add("plank", "%s_planks")
    .add("slab", "%s_slab")
    .forceOverride("book", "oak", SUtil.tryParseRL("bookshelf"))
    .forceOverride("book", "oak", SUtil.tryParseRL("chiseled_bookshelf"));

val book = <item:minecraft:book>;
val allBookies = thing.build(); 

for i in 0 .. thing.length() {
    val p = allBookies["plank"][i];
    val b = allBookies["book"][i];
    val c = allBookies["chiseled"][i];
    val s = allBookies["slab"][i];

    val plank = <item:${p}>;
    val booker = <item:${b}>;
    val chiseled = <item:${c}>;
    val slab = <item:${s}>;
    
    craftingTable.remove(booker);
    craftingTable.addShaped(b.toString().replace(":", "_") + "_based", booker * 3, [
        [plank, plank, plank], [book, book, book], [plank, plank, plank]
    ]);
    craftingTable.remove(chiseled);
    craftingTable.addShaped(c.toString().replace(":", "_") + "_based", chiseled * 3, [
        [plank, plank, plank], [slab, slab, slab], [plank, plank, plank]
    ]);
}



DebugUtil.endScript("recipes/misc/bookshelves_good"); 