DebugUtil.startScript("loot/dd_also_bad/remove_fleshes_and_polyp"); 
    

import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.resource.ResourceLocation;

val stupidstuff = [
    "dungeonsdelight:drops/drops_gritty_flesh",
    "dungeonsdelight:drops/drops_brined_flesh",
    "dungeonsdelight:misc/mining_sculk_polyp_from_calibrated_sculk_sensor",
    "dungeonsdelight:misc/mining_stained_scrap_from_spawner",
    "dungeonsdelight:misc/mining_sculk_polyp_from_sculk",
    "dungeonsdelight:misc/mining_sculk_polyp_from_sculk_vein",
    "dungeonsdelight:misc/mining_sculk_polyp_from_sculk_catalyst",
    "dungeonsdelight:misc/cutting_sculk_tart",
    "dungeonsdelight:misc/mining_stained_scrap_from_rotten_spawner",
    "dungeonsdelight:misc/mining_sculk_polyp_from_sculk_shrieker",
    "dungeonsdelight:misc/mining_sculk_polyp_from_sculk_sensor" 
]; 

for i in stupidstuff {
    loot.modifiers.removeByName(i);
}


DebugUtil.endScript("loot/dd_also_bad/remove_fleshes_and_polyp"); 