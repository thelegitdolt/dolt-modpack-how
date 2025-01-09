DebugUtil.startScript("/Tags/auditory/prismarine_sounds.zs/"); 
    

var prismarines = [
"upgrade_aquatic:prismarine_coral_shower",
"upgrade_aquatic:elder_prismarine_coral_shower",
"upgrade_aquatic:prismarine_coral",
"upgrade_aquatic:elder_prismarine_coral",
"upgrade_aquatic:prismarine_coral_fan",
"upgrade_aquatic:elder_prismarine_coral_fan",
"upgrade_aquatic:prismarine_rod_bundle",
"upgrade_aquatic:luminous_prismarine",
"upgrade_aquatic:luminous_prismarine_stairs",
"upgrade_aquatic:luminous_prismarine_slab",
"minecraft:sea_lantern"

] as string[];

for thing in prismarines {
    <tag:blocks:auditory:prismarine_sounds>.add(<block:${thing}>);
}



DebugUtil.endScript("/Tags/auditory/prismarine_sounds.zs"); 