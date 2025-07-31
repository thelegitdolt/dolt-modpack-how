DebugUtil.startScript("loot/dd_also_bad/remove_fleshes"); 
    

import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.resource.ResourceLocation;

val stupidstuff = [
    "dungeonsdelight:drops/drops_gritty_flesh",
    "dungeonsdelight:drops/drops_brined_flesh"
]; 

for i in stupidstuff {
    loot.modifiers.removeByName(i);
}


DebugUtil.endScript("loot/dd_also_bad/remove_fleshes"); 