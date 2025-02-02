DebugUtil.startScript("properties/attributes/gingerbread"); 

import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.entity.equipment.EquipmentSlot;
    
<item:alexscaves:gingerbread_chestplate>.removeGlobalAttribute(<attribute:minecraft:generic.movement_speed>, 
    [<constant:minecraft:equipmentslot:chest>]);

<item:alexscaves:gingerbread_leggings>.removeGlobalAttribute(<attribute:minecraft:generic.movement_speed>, 
    [<constant:minecraft:equipmentslot:legs>]); 

<item:alexscaves:gingerbread_helmet>.removeGlobalAttribute(<attribute:minecraft:generic.movement_speed>, 
    [<constant:minecraft:equipmentslot:head>]);

<item:alexscaves:gingerbread_boots>.removeGlobalAttribute(<attribute:minecraft:generic.movement_speed>, 
    [<constant:minecraft:equipmentslot:feet>]); 

DebugUtil.endScript("properties/attributes/gingerbread"); 