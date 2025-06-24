DebugUtil.startScript("Tags/caverns_and_chasms/cupric_fire_base_blocks"); 

val coppers = [
    "create:fluid_tank",
    "create:copper_scaffolding",
    "create:copper_casing",
    "supplementaries:cog_block",
    "create:hose_pulley"
];

for i in coppers {
    <tag:blocks:caverns_and_chasms:cupric_fire_base_blocks>.add(<block:${i}>);
}
    

DebugUtil.endScript("Tags/caverns_and_chasms/cupric_fire_base_blocks"); 