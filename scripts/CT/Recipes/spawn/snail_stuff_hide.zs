DebugUtil.startScript("/Recipes/spawn/snail_stuff_hide.zs/"); 
    

val snails = [
    "spawn:mucus_block",
    "spawn:mucus",
    "spawn:ghostly_mucus_block",
    "spawn:escargot",
    "spawn:snail_shell",
    "spawn:snail_shell_tile_stairs",
    "spawn:snail_shell_tiles",
    "spawn:big_snail_shell",
    "spawn:snail_shell_tile_slab",
    "spawn:potted_sweet_berries"
]; 

HUtil.hideAll(snails); 
for i in snails {
    craftingTable.remove(<item:${i}>); 
}
RUtil.cut.remove(<item:abnormals_delight:adzuki_cake_slice>);

RUtil.cut.addRecipe("are_you_happy_poulpo", <item:minecraft:sunflower>, [<item:spawn:sunflower_seeds> * 2], <tag:items:forge:tools/knives>);

DebugUtil.endScript("/Recipes/spawn/snail_stuff_hide.zs"); 