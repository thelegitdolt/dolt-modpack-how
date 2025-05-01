DebugUtil.startScript("properties/attributes/netherite_diving_stuff"); 

import crafttweaker.api.entity.attribute.Attribute;
import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.entity.equipment.EquipmentSlot;
import crafttweaker.api.item.IItemStack;


replaceAttribute(<item:create:netherite_backtank>, <attribute:minecraft:generic.armor>, 5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
replaceAttribute(<item:create:netherite_backtank>, <attribute:minecraft:generic.armor_toughness>, 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);

replaceAttribute(<item:create:netherite_diving_helmet>, <attribute:minecraft:generic.armor>, 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
replaceAttribute(<item:create:netherite_diving_helmet>, <attribute:minecraft:generic.armor_toughness>, 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

replaceAttribute(<item:create:netherite_diving_boots>, <attribute:minecraft:generic.armor>, 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
replaceAttribute(<item:create:netherite_diving_boots>, <attribute:minecraft:generic.armor_toughness>, 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);

function replaceAttribute(item as IItemStack, attribute as Attribute, value as double, op as AttributeOperation, slots as EquipmentSlot[]) as void {
    item.removeGlobalAttribute(attribute, slots);
    item.addGlobalAttributeModifier(attribute, attribute.registryName.getPath(), value, op, slots);
}

DebugUtil.endScript("properties/attributes/netherite_diving_stuff"); 