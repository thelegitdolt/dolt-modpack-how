DebugUtil.startScript("recipes/misc/bricks_bake_fast"); 

function remove(modid as string, thing as string, bakingModId as string = "clayworks") as void {
    furnace.removeByName(modid + ":" + thing);
    Kiln.removeByName(bakingModId + ":" + thing + "_from_baking");
}

function removeBakingModID(modid as string, thing as string) as void {
    remove(modid, thing, modid); 
}

remove("minecraft", "brick");
remove("minecraft", "nether_brick");

Kiln.addFurnaceAndKiln("clay_brick_based", <item:minecraft:clay_ball>, <item:minecraft:brick>, 0.3, "blocks", 100); 
Kiln.addFurnaceAndKiln("nether_brick_based", <item:minecraft:netherrack>, <item:minecraft:nether_brick>, 0.1, "blocks", 100); 

DebugUtil.endScript("recipes/misc/bricks_bake_fast"); 