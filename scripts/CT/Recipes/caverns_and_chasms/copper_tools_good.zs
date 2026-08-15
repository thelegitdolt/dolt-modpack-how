DebugUtil.startScript("recipes/caverns_and_chasms/copper_tools_good"); 

import crafttweaker.api.item.IItemStack;

val stick = <item:minecraft:stick>;
val ing = <item:create:copper_sheet>;



val pickaxe = <item:caverns_and_chasms:copper_pickaxe>;
    craftingTable.addShaped("john_copper_copper_pickaxe_good", pickaxe, [
        [ing, ing, ing], [RUtil.air, stick, RUtil.air], [RUtil.air, stick, RUtil.air]
    ]);


val axe = <item:caverns_and_chasms:copper_axe>;
    craftingTable.addShaped("john_copper_copper_axe_good", axe, [
        [ing, ing], [ing, stick], [RUtil.air, stick]
    ]);


val shovel = <item:caverns_and_chasms:copper_shovel>;
    craftingTable.addShaped("john_copper_copper_shovel_good", shovel, [
        [ing], [stick], [stick]
    ]);


val sword = <item:caverns_and_chasms:copper_sword>;
    craftingTable.addShaped("john_copper_copper_sword_good", sword, [
        [ing], [ing], [stick]
    ]);


val hoe = <item:caverns_and_chasms:copper_hoe>;
    craftingTable.addShaped("john_copper_copper_hoe_good", hoe, [
        [ing, ing], [RUtil.air, stick], [RUtil.air, stick]
    ]);



val helmet = <item:caverns_and_chasms:copper_helmet>;
    craftingTable.addShaped("john_copper_copper_helmet_good", helmet, [
        [ing, ing, ing], [ing, RUtil.air, ing]
    ]);


val chestplate = <item:caverns_and_chasms:copper_chestplate>;
    craftingTable.addShaped("john_copper_copper_chestplate_good", chestplate, [
        [ing, RUtil.air, ing], [ing, ing, ing], [ing, ing, ing]
    ]);


val leggings = <item:caverns_and_chasms:copper_leggings>;
    craftingTable.addShaped("john_copper_copper_leggings_good", leggings, [
        [ing, ing, ing], [ing, RUtil.air, ing], [ing, RUtil.air, ing]
    ]);


val boots = <item:caverns_and_chasms:copper_boots>;
    craftingTable.addShaped("john_copper_copper_boots_good", boots, [
        [ing, RUtil.air, ing], [ing, RUtil.air, ing]
    ]);

for i in CUtil.coppers {
    craftingTable.removeByName("caverns_and_chasms:" + i + "copper_pickaxe");
    craftingTable.removeByName("caverns_and_chasms:" + i + "copper_axe");
    craftingTable.removeByName("caverns_and_chasms:" + i + "copper_shovel");
    craftingTable.removeByName("caverns_and_chasms:" + i + "copper_sword");
    craftingTable.removeByName("caverns_and_chasms:" + i + "copper_hoe");
    craftingTable.removeByName("caverns_and_chasms:" + i + "copper_helmet");
    craftingTable.removeByName("caverns_and_chasms:" + i + "copper_chestplate");
    craftingTable.removeByName("caverns_and_chasms:" + i + "copper_leggings");
    craftingTable.removeByName("caverns_and_chasms:" + i + "copper_boots");
}



DebugUtil.endScript("recipes/caverns_and_chasms/copper_tools_good"); 