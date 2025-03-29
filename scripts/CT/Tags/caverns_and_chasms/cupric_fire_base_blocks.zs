DebugUtil.startScript("Tags/caverns_and_chasms/cupric_fire_base_blocks"); 

val coppers = [
    "create:fluid_tank",
    "create:copper_scaffolding",
    "create:copper_casing",
    "supplementaries:cog_block",
    "create:hose_pulley",
    "alloyed:waxed_oxidized_bronze_block",
    "alloyed:waxed_weathered_bronze_block",
    "alloyed:exposed_bronze_block",
    "alloyed:bronze_block",
    "alloyed:waxed_exposed_bronze_block",
    "alloyed:weathered_bronze_block",
    "alloyed:oxidized_bronze_block",
    "alloyed:waxed_bronze_block"
];

for i in coppers {
    <tag:blocks:caverns_and_chasms:cupric_fire_base_blocks>.add(<block:${i}>);
}
    

DebugUtil.endScript("Tags/caverns_and_chasms/cupric_fire_base_blocks"); 