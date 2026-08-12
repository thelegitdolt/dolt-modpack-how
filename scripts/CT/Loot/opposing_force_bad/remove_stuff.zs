DebugUtil.startScript("loot/opposing_force_bad/remove_stuff"); 

import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.resource.ResourceLocation;

val stupidstuff = [
    "opposing_force:add_loot_abandoned_mineshaft",
    "opposing_force:add_loot_simple_dungeon",
    "opposing_force:add_loot_ancient_city"
]; 

for i in stupidstuff {
    loot.modifiers.removeByName(i);
}

DebugUtil.endScript("loot/opposing_force_bad/remove_stuff"); 