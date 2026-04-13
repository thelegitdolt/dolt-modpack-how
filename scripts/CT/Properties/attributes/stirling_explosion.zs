DebugUtil.startScript("properties/attributes/stirling_explosion"); 

import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.entity.equipment.EquipmentSlot;
    
doArmor(<item:galosphere:sterling_helmet>, <constant:minecraft:equipmentslot:head>, 0.25);
doArmor(<item:galosphere:sterling_leggings>, <constant:minecraft:equipmentslot:legs>, 0.30);
doArmor(<item:galosphere:sterling_chestplate>, <constant:minecraft:equipmentslot:chest>, 0.25);
doArmor(<item:galosphere:sterling_boots>, <constant:minecraft:equipmentslot:feet>, 0.2);

function doArmor(item as IItemStack, slot as EquipmentSlot, value as float) as void {
    item.removeGlobalAttribute(<attribute:galosphere:illager_resistance>, [slot]);
    item.addGlobalAttributeModifier(<attribute:savage_and_ravage:explosive_damage_reduction>, "stirling_blast_res", 
        value, AttributeOperation.ADDITION, [slot]);
}


DebugUtil.endScript("properties/attributes/stirling_explosion"); 