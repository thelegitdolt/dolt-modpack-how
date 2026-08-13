DebugUtil.startScript("properties/attributes/copper"); 

import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.entity.equipment.EquipmentSlot;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.entity.attribute.Attribute;


function copper_replaceAttackSpeed(item as IItemStack, value as double) as void {
    val attribute = <attribute:minecraft:generic.attack_speed>;
    item.removeGlobalAttribute(attribute, [<constant:minecraft:equipmentslot:mainhand>]);
    item.addGlobalAttributeModifier(attribute, attribute.registryName.getPath(), value, <constant:minecraft:attribute/operation:addition>, [<constant:minecraft:equipmentslot:mainhand>]);
}

function copper_replaceAttackDamage(item as IItemStack, value as double) as void {
    val attribute = <attribute:minecraft:generic.attack_damage>;
    item.removeGlobalAttribute(attribute, [<constant:minecraft:equipmentslot:mainhand>]);
    item.addGlobalAttributeModifier(attribute, attribute.registryName.getPath(), value, <constant:minecraft:attribute/operation:addition>, [<constant:minecraft:equipmentslot:mainhand>]);
}

function copper_replaceArmor(item as IItemStack, value as double, slot as EquipmentSlot) as void {
    val attribute = <attribute:minecraft:generic.armor>;
    item.removeGlobalAttribute(attribute, [slot]);
    item.addGlobalAttributeModifier(attribute, attribute.registryName.getPath(), value, <constant:minecraft:attribute/operation:addition>, [slot]);
}



for i in CUtil.coppers {
    <item:caverns_and_chasms:${i}copper_chestplate>.removeGlobalAttribute(<attribute:minecraft:generic.knockback_resistance>, [
        <constant:minecraft:equipmentslot:chest>
    ]);
    <item:caverns_and_chasms:${i}copper_helmet>.removeGlobalAttribute(<attribute:minecraft:generic.knockback_resistance>, [
        <constant:minecraft:equipmentslot:head>
    ]);
    <item:caverns_and_chasms:${i}copper_boots>.removeGlobalAttribute(<attribute:minecraft:generic.knockback_resistance>, [
        <constant:minecraft:equipmentslot:feet>
    ]);
    <item:caverns_and_chasms:${i}copper_leggings>.removeGlobalAttribute(<attribute:minecraft:generic.knockback_resistance>, [
        <constant:minecraft:equipmentslot:legs>
    ]);

    <item:caverns_and_chasms:${i}copper_chestplate>.removeGlobalAttribute(<attribute:minecraft:generic.movement_speed>, [
        <constant:minecraft:equipmentslot:chest>
    ]);
    <item:caverns_and_chasms:${i}copper_helmet>.removeGlobalAttribute(<attribute:minecraft:generic.movement_speed>, [
        <constant:minecraft:equipmentslot:head>
    ]);
    <item:caverns_and_chasms:${i}copper_boots>.removeGlobalAttribute(<attribute:minecraft:generic.movement_speed>, [
        <constant:minecraft:equipmentslot:feet>
    ]);
    <item:caverns_and_chasms:${i}copper_leggings>.removeGlobalAttribute(<attribute:minecraft:generic.movement_speed>, [
        <constant:minecraft:equipmentslot:legs>
    ]);

    copper_replaceAttackDamage(<item:caverns_and_chasms:${i}copper_sword>, 5);
    copper_replaceAttackDamage(<item:caverns_and_chasms:${i}copper_shovel>, 3.5);
    copper_replaceAttackDamage(<item:caverns_and_chasms:${i}copper_pickaxe>, 3);
    copper_replaceAttackDamage(<item:caverns_and_chasms:${i}copper_hoe>, 0);
    copper_replaceAttackSpeed(<item:caverns_and_chasms:${i}copper_hoe>, -1);
    copper_replaceAttackSpeed(<item:caverns_and_chasms:${i}copper_axe>, -3.1);

    copper_replaceArmor(<item:caverns_and_chasms:${i}copper_helmet>, 2, <constant:minecraft:equipmentslot:head>);
    copper_replaceArmor(<item:caverns_and_chasms:${i}copper_boots>, 2, <constant:minecraft:equipmentslot:feet>);
    print("SEX PLEASE NOTICE ME HI SEX");
}





DebugUtil.endScript("properties/attributes/copper"); 