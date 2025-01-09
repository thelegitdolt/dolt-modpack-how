DebugUtil.startScript("/Recipes/suppies/blackstone_tiles_hide.zs/"); 
    

val stuff = [
    "supplementaries:blackstone_tile_slab",
"supplementaries:blackstone_tile",
"supplementaries:blackstone_tile_stairs"
] as string[];


HUtil.hideAll(stuff);


stoneCutter.removeByInput(<item:supplementaries:blackstone_tile>);
craftingTable.removeByInput(<item:supplementaries:blackstone_tile>);





DebugUtil.endScript("/Recipes/suppies/blackstone_tiles_hide.zs"); 