DebugUtil.startScript("recipes/create/goodbye_copper_tiles"); 
    

var list = [
   "create:exposed_copper_shingles",
"create:copper_shingles",
"create:exposed_copper_shingle_slab",
"create:weathered_copper_shingle_slab",
"create:copper_shingle_slab",
"create:waxed_weathered_copper_shingles",
"create:waxed_exposed_copper_shingles",
"create:oxidized_copper_shingles",
"create:weathered_copper_shingles",
"create:oxidized_copper_shingle_slab",
"create:copper_shingle_stairs",
"create:exposed_copper_shingle_stairs",
"create:weathered_copper_shingle_stairs",
"create:waxed_oxidized_copper_shingles",
"create:waxed_copper_shingle_slab",
"create:oxidized_copper_shingle_stairs",
"create:waxed_exposed_copper_shingle_stairs",
"create:waxed_oxidized_copper_shingle_slab",
"create:waxed_oxidized_copper_shingle_stairs",
"create:waxed_weathered_copper_shingle_slab",
"create:waxed_copper_shingles",
"create:waxed_exposed_copper_shingle_slab",
"create:waxed_weathered_copper_shingle_stairs",
"create:waxed_copper_shingle_stairs",
"create:exposed_copper_tiles",
"create:copper_tiles",
"create:weathered_copper_tiles",
"create:oxidized_copper_tiles",
"create:copper_tile_stairs",
"create:waxed_weathered_copper_tile_stairs",
"create:waxed_exposed_copper_tile_slab",
"create:waxed_exposed_copper_tile_stairs",
"create:waxed_weathered_copper_tile_slab",
"create:waxed_oxidized_copper_tile_slab",
"create:waxed_oxidized_copper_tile_stairs",
"create:waxed_copper_tile_stairs",
"create:waxed_copper_tile_slab",
"create:waxed_oxidized_copper_tiles",
"create:waxed_weathered_copper_tiles",
"create:waxed_exposed_copper_tiles",
"create:exposed_copper_tile_stairs",
"create:weathered_copper_tile_stairs",
"create:oxidized_copper_tile_stairs",
"create:waxed_copper_tiles",
"create:oxidized_copper_tile_slab",
"create:weathered_copper_tile_slab",
"create:exposed_copper_tile_slab",
"create:copper_tile_slab",
];

HUtil.hideAll(list);
RUtil.removeAll(list);
for i in list {
    stoneCutter.remove(<item:${i}>);
}



DebugUtil.endScript("recipes/create/goodbye_copper_tiles"); 