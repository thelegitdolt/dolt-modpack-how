DebugUtil.startScript("/Tags/auditory/clay_brick_sounds.zs/"); 
    

val coral_block = [
"spawn:wax_coral_block",
"spawn:thorn_coral_block",
"spawn:spike_coral_block",
"spawn:heart_coral_block",
"spawn:reed_coral_block",
"upgrade_aquatic:petal_coral_block",
"upgrade_aquatic:branch_coral_block",
"upgrade_aquatic:acan_coral_block",
"upgrade_aquatic:finger_coral_block",
"upgrade_aquatic:rock_coral_block",
"upgrade_aquatic:pillow_coral_block",
"upgrade_aquatic:silk_coral_block",
"upgrade_aquatic:moss_coral_block",
"upgrade_aquatic:star_coral_block",


    "minecraft:tube_coral_block",
    "minecraft:horn_coral_block",
    "minecraft:brain_coral_block",
    "minecraft:bubble_coral_block",
    "minecraft:fire_coral_block"];
val coral = [
    "minecraft:horn_coral",
    "minecraft:fire_coral",
    "minecraft:bubble_coral",
    "minecraft:tube_coral",
    "minecraft:brain_coral",
"spawn:reed_coral",
"spawn:wax_coral",
"spawn:thorn_coral",
"spawn:spike_coral",
"spawn:heart_coral",
"upgrade_aquatic:acan_coral",
"upgrade_aquatic:finger_coral",
"upgrade_aquatic:rock_coral",
"upgrade_aquatic:branch_coral",
"upgrade_aquatic:petal_coral",
"upgrade_aquatic:moss_coral",
"upgrade_aquatic:star_coral",
"upgrade_aquatic:silk_coral",
"upgrade_aquatic:pillow_coral",
"upgrade_aquatic:chrome_coral"];

for c in coral {
    <tag:items:dolt_modpack_how:corals>.add(<item:${c}>); 
}
for c in coral_block {
    <tag:items:dolt_modpack_how:coral_blocks>.add(<item:${c}>); 

}

<tag:items:dye_depot:smelts_into_coral_dye>.add(<tag:items:dolt_modpack_how:corals>); 
<tag:items:dye_depot:smelts_into_coral_dye>.add(<tag:items:dolt_modpack_how:coral_blocks>); 


DebugUtil.endScript("/Tags/auditory/clay_brick_sounds.zs"); 