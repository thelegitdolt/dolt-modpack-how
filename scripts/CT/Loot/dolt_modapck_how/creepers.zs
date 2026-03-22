DebugUtil.startScript("loot/dolt_modapck_how/dolt_modapck_how"); 

import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.LootContext;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.data.MapData;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.ingredient.IIngredient;

val creepers = [
    "creeper", 
    "deeper", 
    "peeper", 
    "reefer"
];

loot.modifiers.register("creepers_do_charged_and_stuff", 
    LootConditions.none(), (stacks, ctx) => {
        if (ctx.thisEntity == null || ctx.killerEntity == null) return stacks; 
        val name = ctx.thisEntity.type.registryName.getPath();

        if (!(name in creepers) || !(ctx.killerEntity.type.isIn(<tag:entity_types:minecraft:skeletons>))) {
            return stacks; 
        }

        stacks.removeIf((itemstackers) => {
            return itemstackers in <tag:items:minecraft:music_discs>; 
        });

        if ("powered" in ctx.thisEntity.data && ctx.thisEntity.data["powered"].asBool()) {
           stacks.add(<item:${RUtil.getRandomItemInTag("dolt_modpack_how:charged_" + name + "_drop_music_discs", ctx.random)}>);
        } else {
          stacks.add(<item:${RUtil.getRandomItemInTag("dolt_modpack_how:" + name + "_drop_music_discs", ctx.random)}>);
        }
        return stacks; 
    }
);


DebugUtil.endScript("loot/ND_bad/dolt_modapck_how"); 