DebugUtil.startScript("loot/dd_also_bad/remove_fleshes_and_polyp"); 
    

import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.resource.ResourceLocation;

val stupidstuff = [
    "farmersdelight:scavenging_shulker_shell",
    "farmersdelight:add_loot_end_city_treasure"
]; 

for i in stupidstuff {
    loot.modifiers.removeByName(i);
}


DebugUtil.endScript("loot/dd_also_bad/remove_fleshes_and_polyp"); 