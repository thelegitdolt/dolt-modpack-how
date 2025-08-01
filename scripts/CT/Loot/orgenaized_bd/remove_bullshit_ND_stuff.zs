DebugUtil.startScript("loot/orgenaized_bd/bye_orgeanized_removedstuff"); 
    

import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.resource.ResourceLocation;

val stupidstuff = [
    "oreganized:scribe_in_ancient_cities",
    "oreganized:electrum_upgrade_smithing_template"
]; 

for i in stupidstuff {
    loot.modifiers.removeByName(i);
}


DebugUtil.endScript("loot/orgenaized_bd/bye_orgeanized_removedstuff"); 