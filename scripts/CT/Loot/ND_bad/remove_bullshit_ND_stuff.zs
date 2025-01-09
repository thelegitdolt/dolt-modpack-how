DebugUtil.startScript("loot/ND_bad/remove_bullshit_ND_stuff"); 
    

import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.resource.ResourceLocation;

val stupidstuff = [
    "mynethersdelight:scavenging_ghasta",
    "mynethersdelight:scavenging_extra_ghasta0",
    "mynethersdelight:scavenging_extra_ghasta1",
    "mynethersdelight:scavenging_onion_from_ghast",
    "mynethersdelight:add_loot_piglin_bartering",
    "mynethersdelight:add_loot_bastion_hoglin_stable",
    "mynethersdelight:add_loot_bastion_treasure"
]; 

for i in stupidstuff {
    loot.modifiers.removeByName(i);
}


DebugUtil.endScript("loot/ND_bad/remove_bullshit_ND_stuff"); 