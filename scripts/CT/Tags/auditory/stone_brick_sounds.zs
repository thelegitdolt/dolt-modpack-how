DebugUtil.startScript("/Tags/auditory/stone_brick_sounds.zs/"); 
    

import crafttweaker.api.BracketDumpers;

val stone_bricks = [
"upgrade_aquatic:kelpy_stone_brick_wall",
"upgrade_aquatic:kelpy_stone_bricks",
"upgrade_aquatic:kelpy_stone_brick_slab",
"caverns_and_chasms:cobblestone_bricks",
"caverns_and_chasms:mossy_cobblestone_brick_stairs",
"caverns_and_chasms:mossy_cobblestone_tiles",
"caverns_and_chasms:cobblestone_tile_wall",
"caverns_and_chasms:mossy_cobblestone_tile_wall",
"caverns_and_chasms:mossy_cobblestone_tile_stairs",
"caverns_and_chasms:mossy_cobblestone_brick_slab",
"caverns_and_chasms:cobblestone_tiles",
"caverns_and_chasms:mossy_cobblestone_tile_slab",
"caverns_and_chasms:cobblestone_brick_wall",
"caverns_and_chasms:cobblestone_tile_stairs",
"caverns_and_chasms:mossy_cobblestone_bricks",
"caverns_and_chasms:cobblestone_tile_slab",
"caverns_and_chasms:mossy_cobblestone_brick_wall",
"caverns_and_chasms:cobblestone_brick_slab",
"caverns_and_chasms:cobblestone_brick_stairs"

] as string[];

for thing in stone_bricks {
    <tag:blocks:auditory:stone_brick_sounds>.add(<block:${thing}>);
    
}





DebugUtil.endScript("/Tags/auditory/stone_brick_sounds.zs"); 