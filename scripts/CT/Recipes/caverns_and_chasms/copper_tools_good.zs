DebugUtil.startScript("recipes/caverns_and_chasms/copper_tools_good"); 

import crafttweaker.api.item.IItemStack;

val stick = <item:minecraft:stick>;

function sex_copperToolsGood(a as string, recipe as function(name as string, i as IItemStack, j as IItemStack, k as IItemStack) as void) as void {
    craftingTable.removeByName("caverns_and_chasms:" + a);
    CUtil.copperRecipe(a, recipe, "caverns_and_chasms:" + a, "copper_ingot", "caverns_and_chasms:chiseled_copper");
}

sex_copperToolsGood("copper_pickaxe", (name, pick, ing, block) => {
    craftingTable.addShaped(name, pick, [
        [ing, block, ing], [RUtil.air, stick, RUtil.air], [RUtil.air, stick, RUtil.air]
    ]);
});
sex_copperToolsGood("copper_axe", (name, pick, ing, block) => {
    craftingTable.addShaped(name, pick, [
        [ing, block], [ing, stick], [RUtil.air, stick]
    ]);
});
sex_copperToolsGood("copper_shovel", (name, pick, ing, block) => {
    craftingTable.addShaped(name, pick, [
        [block], [stick], [stick]
    ]);
});
sex_copperToolsGood("copper_sword", (name, pick, ing, block) => {
    craftingTable.addShaped(name, pick, [
        [block], [ing], [stick]
    ]);
});
sex_copperToolsGood("copper_hoe", (name, pick, ing, block) => {
    craftingTable.addShaped(name, pick, [
        [ing, block], [RUtil.air, stick], [RUtil.air, stick]
    ]);
});

sex_copperToolsGood("copper_helmet", (name, pick, ing, block) => {
    craftingTable.addShaped(name, pick, [
        [ing, block, ing], [ing, RUtil.air, ing]
    ]);
});
sex_copperToolsGood("copper_chestplate", (name, pick, ing, block) => {
    craftingTable.addShaped(name, pick, [
        [ing, RUtil.air, ing], [ing, block, ing], [ing, ing, ing]
    ]);
});
sex_copperToolsGood("copper_leggings", (name, pick, ing, block) => {
    craftingTable.addShaped(name, pick, [
        [ing, block, ing], [ing, RUtil.air, ing], [ing, RUtil.air, ing]
    ]);
});
sex_copperToolsGood("copper_boots", (name, pick, ing, block) => {
    craftingTable.addShaped(name, pick, [
        [ing, RUtil.air, ing], [block, RUtil.air, block]
    ]);
});



DebugUtil.endScript("recipes/caverns_and_chasms/copper_tools_good"); 