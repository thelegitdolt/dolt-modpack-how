DebugUtil.startScript("/Recipes/quark/hide/bricks.zs/"); 
    

import mods.jeitweaker.Jei;

val things = ["quark:blue_nether_bricks",
"quark:blue_nether_bricks_stairs",
"quark:blue_nether_bricks_slab",
"quark:blue_nether_bricks_wall"
] as string[];

HUtil.hideAll(things);


DebugUtil.endScript("/Recipes/quark/hide/bricks.zs"); 