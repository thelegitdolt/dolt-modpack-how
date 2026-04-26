#priority 4

DebugUtil.startScript("recipes/misc/bookshelves_good"); 

var thing = WoodGroup.create("wormwood", "claret", "petrified")
    .add("book", "%s_bookshelf")
    .add("plank", "%s_planks")
    .forceOverride("book", "oak", SUtil.tryParseRL("bookshelf"));

var thing2 = WoodGroup.create("wormwood", "desecrated", "claret", "petrified")
    .add("chiseled", "chiseled_%s_bookshelf")
    .add("plank", "%s_planks")
    .add("slab", "%s_slab")
    .forceOverride("chiseled", "oak", SUtil.tryParseRL("chiseled_bookshelf"));

val book = <item:minecraft:book>;
val allBookies = thing.build();
val chiseledBookies = thing2.build();

for i in 0 .. thing2.length() {
    val p = chiseledBookies["plank"][i];
    val c = chiseledBookies["chiseled"][i];
    val s = chiseledBookies["slab"][i];

    val plank = <item:${p}>;
    val chiseled = <item:${c}>;
    val slab = <item:${s}>;
    
    craftingTable.remove(chiseled);
    craftingTable.addShaped(c.toString().replace(":", "_") + "_based", chiseled * 3, [
        [plank, plank, plank], [slab, slab, slab], [plank, plank, plank]
    ]);
}

for i in 0 .. thing.length() {
    val p = allBookies["plank"][i];
    val b = allBookies["book"][i];

    val plank = <item:${p}>;
    val booker = <item:${b}>;
    
    craftingTable.remove(booker);
    craftingTable.addShaped(b.toString().replace(":", "_") + "_based", booker * 3, [
        [plank, plank, plank], [book, book, book], [plank, plank, plank]
    ]);
}



DebugUtil.endScript("recipes/misc/bookshelves_good"); 