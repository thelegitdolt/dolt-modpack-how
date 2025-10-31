DebugUtil.startScript("/Recipes/suppies/stone_tiles_hide"); 
    

val stuff = [
    "supplementaries:blackstone_tile_slab",
    "supplementaries:blackstone_tile",
    "supplementaries:blackstone_tile_stairs",

    "supplementaries:stone_tile",
    "supplementaries:stone_tile_stairs",
    "supplementaries:stone_tile_slab",
    "supplementaries:stone_tile_wall"

] as string[];

HUtil.hideAll(stuff);

stoneCutter.removeByInput(<item:supplementaries:blackstone_tile>);
craftingTable.removeByInput(<item:supplementaries:blackstone_tile>);
stoneCutter.removeByInput(<item:supplementaries:stone_tile>);
craftingTable.removeByInput(<item:supplementaries:stone_tile>);






DebugUtil.endScript("/Recipes/suppies/stone_tiles_hide"); 