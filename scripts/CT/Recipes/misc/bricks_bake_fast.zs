DebugUtil.startScript("recipes/misc/bricks_bake_fast"); 

function remove(modid as string, thing as string, bakingModId as string = "clayworks") as void {
    furnace.removeByName(modid + ":" + thing);
    Kiln.removeByName(bakingModId + ":" + thing + "_from_baking");
}

function removeCompat(modid as string, thing as string) as void {
    remove(modid, thing, modid); 
}

remove("minecraft", "brick");
remove("minecraft", "nether_brick");
removeCompat("endergetic", "eumus_brick");

furnace.removeByName("architects_palette:smelting/algal_brick_from_algal_blend_smelting");
furnace.removeByName("architects_palette:smelting/wardstone_brick_from_wardstone_blend_smelting");

Kiln.addFurnaceAndKiln("clay_brick_based", <item:minecraft:clay_ball>, <item:minecraft:brick>, 0.3, "blocks", 100); 
Kiln.addFurnaceAndKiln("nether_brick_based", <item:minecraft:netherrack>, <item:minecraft:nether_brick>, 0.1, "blocks", 100); 
Kiln.addFurnaceAndKiln("eumus_brick_based", <item:endergetic:eumus>, <item:endergetic:eumus_brick>, 0.3, "blocks", 100);

Kiln.addFurnaceAndKiln("algal_brick_based", <item:architects_palette:algal_blend>, <item:architects_palette:algal_brick>, 0.3, "blocks", 100);
Kiln.addFurnaceAndKiln("wardstone_brick_based", <item:architects_palette:wardstone_blend>, <item:architects_palette:wardstone_brick>, 0.3, "blocks", 100);


DebugUtil.endScript("recipes/misc/bricks_bake_fast"); 