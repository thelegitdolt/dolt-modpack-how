DebugUtil.startScript("Tags/forge/stripped_logs"); 
    
val stripped_logs = [
    "atmospheric:stripped_laurel_log",
    "sniffed_out:stripped_vessel_stem",
    "upgrade_aquatic:stripped_driftwood_log",
    "upgrade_aquatic:stripped_river_log",
    "endergetic:stripped_poise_stem",
    "sullysmod:stripped_petrified_log",
    "netherexp:stripped_claret_stem",
    "autumnity:stripped_maple_log",
    "autumnity:sappy_maple_log",
    "caverns_and_chasms:stripped_azalea_log"
];

for log in stripped_logs {
    <tag:items:forge:stripped_logs>.add(<item:${log}>);
}

val stripped_woods = [
    "atmospheric:stripped_laurel_wood",
    "sniffed_out:stripped_vessel_cuticle",
    "upgrade_aquatic:stripped_driftwood",
    "upgrade_aquatic:stripped_river_wood",
    "endergetic:stripped_poise_wood",
    "sullysmod:stripped_petrified_wood",
    "netherexp:stripped_claret_hyphae",
    "autumnity:stripped_maple_wood",
    "autumnity:sappy_maple_wood",
    "caverns_and_chasms:stripped_azalea_wood"
];

for wood in stripped_woods {
    <tag:items:forge:stripped_wood>.add(<item:${wood}>);
}
    



DebugUtil.endScript("Tags/forge/stripped_logs"); 