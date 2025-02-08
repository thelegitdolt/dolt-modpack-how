DebugUtil.startScript("recipes/misc/nugget"); 
    

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.resource.ResourceLocation;

function nuggie_four_create(material as string, nug as IItemStack, ing as IItemStack, nugget_recipe as string, ingot_recipe as string) as void{

    craftingTable.removeByName(nugget_recipe);
    craftingTable.removeByName(ingot_recipe);

    craftingTable.addShapeless(material + "_nugget_based", nug * 4, [ing]);
    craftingTable.addShapeless(material + "_ingot_from_nuggies_based", ing, [nug, nug, nug, nug]);
}

function make_nuggie_four(material as string, nug as IItemStack, ing as IItemStack, nugget_recipe as string="default") as void{
    if (nugget_recipe == "default") {
        nugget_recipe = nug.registryName.getNamespace() + ":" + ing.registryName.getPath() + "_from_nuggets"; 
    }

    craftingTable.removeByName(nug.registryName);
    craftingTable.removeByName(nugget_recipe);
    

    craftingTable.addShapeless(material + "_nugget_based", nug * 4, [ing]);
    craftingTable.addShapeless(material + "_ingot_from_nuggies_based", ing, [nug, nug, nug, nug]);
}

make_nuggie_four("silver", <item:caverns_and_chasms:silver_nugget>, <item:caverns_and_chasms:silver_ingot>);
make_nuggie_four("necromium", <item:caverns_and_chasms:necromium_nugget>, <item:caverns_and_chasms:necromium_ingot>);

make_nuggie_four("gold", <item:minecraft:gold_nugget>, <item:minecraft:gold_ingot>);
make_nuggie_four("iron", <item:minecraft:iron_nugget>, <item:minecraft:iron_ingot>);
make_nuggie_four("copper", <item:caverns_and_chasms:copper_nugget>, <item:minecraft:copper_ingot>);
make_nuggie_four("netherite", <item:caverns_and_chasms:netherite_nugget>, <item:minecraft:netherite_ingot>);

make_nuggie_four("lead", <item:oreganized:lead_nugget>, <item:oreganized:lead_ingot>);
make_nuggie_four("electrum", <item:oreganized:electrum_nugget>, <item:oreganized:electrum_ingot>);


nuggie_four_create("uranium", <item:alexscaves:uranium_shard>, <item:alexscaves:uranium>, 
    "alexscaves:uranium_shard_from_uranium", "alexscaves:uranium_from_shard");
nuggie_four_create("zinc", <item:create:zinc_nugget>, <item:create:zinc_ingot>, 
    "create:crafting/materials/zinc_nugget_from_decompacting", "create:crafting/materials/brass_ingot_from_compacting");
nuggie_four_create("brass", <item:create:brass_nugget>, <item:create:brass_ingot>, 
    "create:crafting/materials/brass_nugget_from_decompacting", "create:crafting/materials/zinc_ingot_from_compacting");



function lanterns_okay(modid as string, lantern as string, torch as IIngredient) as void{
    craftingTable.removeByName(modid + ":" + lantern + "lantern");

    craftingTable.addShaped(lantern + "lantern_based", <item:${modid + ":" + lantern + "lantern"
    }>, [
        [
            <tag:items:forge:nuggets/iron>
        ], 
        [torch], 
        [
            <tag:items:forge:nuggets/iron>
        ]
    ]);
}

function cheapen_gold_food(food as string, gold as string) as void {
    craftingTable.removeByName(gold); 

    var x as usize = gold.indexOf(":") + 1;
    var y = gold.length;

    craftingTable.addShaped("cheap_" + gold[x .. y] + "_lol", <item:${gold}>, [
        [RUtil.air, <item:minecraft:gold_nugget>, RUtil.air],
        [<item:minecraft:gold_nugget>, <item:${food}>, <item:minecraft:gold_nugget>],
        [RUtil.air, <item:minecraft:gold_nugget>, RUtil.air],
    ]); 
}


lanterns_okay("minecraft", "", <item:minecraft:torch>);
lanterns_okay("minecraft", "soul_", <item:minecraft:soul_torch>);
lanterns_okay("endergetic", "ender_", <item:endergetic:ender_torch>);
lanterns_okay("caverns_and_chasms", "cupric_", <item:caverns_and_chasms:cupric_torch>);


cheapen_gold_food("minecraft:carrot", "minecraft:golden_carrot"); 
cheapen_gold_food("minecraft:melon_slice", "minecraft:glistering_melon_slice"); 
cheapen_gold_food("atmospheric:passion_fruit", "atmospheric:shimmering_passion_fruit"); 

DebugUtil.endScript("recipes/misc/nugget"); 