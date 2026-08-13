DebugUtil.startScript("properties/attributes/electelectrum_and_goldrum"); 

import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.entity.equipment.EquipmentSlot;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.entity.attribute.Attribute;

function add_speed_stuff(a as IItemStack, num as double, slot as EquipmentSlot) as void {
    val att = <attribute:minecraft:generic.movement_speed>; 
    a.addGlobalAttributeModifier(att, "Electrum Speed", num, AttributeOperation.MULTIPLY_BASE, [slot]);
}

function swap_speed_stuff(a as IItemStack, num as double, slot as EquipmentSlot) as void {
    val att = <attribute:minecraft:generic.movement_speed>; 
    a.removeGlobalAttribute(att, [slot]);
    a.addGlobalAttributeModifier(att, "Electrum Speed", num, AttributeOperation.MULTIPLY_BASE, [slot]);
}

swap_speed_stuff(<item:oreganized:electrum_helmet>, 0.1, <constant:minecraft:equipmentslot:head>);
swap_speed_stuff(<item:oreganized:electrum_chestplate>, 0.15, <constant:minecraft:equipmentslot:chest>);
swap_speed_stuff(<item:oreganized:electrum_leggings>, 0.15, <constant:minecraft:equipmentslot:legs>);
swap_speed_stuff(<item:oreganized:electrum_boots>, 0.1, <constant:minecraft:equipmentslot:feet>);

add_speed_stuff(<item:minecraft:golden_helmet>, 0.1, <constant:minecraft:equipmentslot:head>);
add_speed_stuff(<item:minecraft:golden_chestplate>, 0.15, <constant:minecraft:equipmentslot:chest>);
add_speed_stuff(<item:minecraft:golden_leggings>, 0.15, <constant:minecraft:equipmentslot:legs>);
add_speed_stuff(<item:minecraft:golden_boots>, 0.1, <constant:minecraft:equipmentslot:feet>);


DebugUtil.endScript("properties/attributes/electrum_and_gold"); 