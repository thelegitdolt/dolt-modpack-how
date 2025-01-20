DebugUtil.startScript("properties/attributes"); 

import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.entity.equipment.EquipmentSlot;
    
<item:oreganized:electrum_chestplate>.removeGlobalAttribute(<attribute:minecraft:generic.movement_speed>, 
    [<constant:minecraft:equipmentslot:chest>]); 
<item:oreganized:electrum_chestplate>.addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, 
    "Electrum speed", 0.1, AttributeOperation.MULTIPLY_BASE, 
    [<constant:minecraft:equipmentslot:chest>]);


<item:oreganized:electrum_leggings>.removeGlobalAttribute(<attribute:minecraft:generic.movement_speed>, 
    [<constant:minecraft:equipmentslot:legs>]); 
<item:oreganized:electrum_leggings>.addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, 
    "Electrum speed", 0.1, AttributeOperation.MULTIPLY_BASE, 
    [<constant:minecraft:equipmentslot:legs>]);

DebugUtil.endScript("properties/attributes"); 