DebugUtil.startScript("loot/ND_bad/hoglin_no_leather_when_killed_with_knife"); 
    

import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.LootContext;
import crafttweaker.api.util.InteractionHand;
import crafttweaker.api.entity.LivingEntity;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.resource.ResourceLocation;

<entitytype:minecraft:hoglin>.addLootModifier("hoglin_no_leather_when_killed_with_knife", (stacks, context) => {
    if (context.directKillerEntity is LivingEntity) {
        val killer = (context.directKillerEntity as Entity) as LivingEntity; 

        if !(killer.getItemInHand(<constant:minecraft:interactionhand:main_hand>).asIItemStack().definition in <tag:items:farmersdelight:tools/knives>) {
            return stacks; 
        }

        while (<item:minecraft:leather> in stacks) {
            stacks.remove(<item:minecraft:leather>);
        }  
    } 
    return stacks; 
});



DebugUtil.endScript("loot/ND_bad/hoglin_no_leather_when_killed_with_knife"); 