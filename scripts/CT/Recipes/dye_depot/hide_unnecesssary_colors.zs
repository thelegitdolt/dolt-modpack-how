DebugUtil.startScript("recipes/dye_depot/hide_unnecessary_colors"); 
    
val compat_shingles = [
    "dye_the_world:amber_shingles",
    "dye_the_world:aqua_shingles",
    "dye_the_world:ginger_shingles",
    "dye_the_world:beige_shingles",
    "dye_the_world:maroon_shingles",
    "dye_the_world:indigo_shingles",
    "dye_the_world:mint_shingles",
    "dye_the_world:coral_shingles",
    "dye_the_world:forest_shingles",
    "dye_the_world:navy_shingles",
    "dye_the_world:olive_shingles",
    "dye_the_world:verdant_shingles",
    "dye_the_world:rose_shingles",
    "dye_the_world:teal_shingles",
    "dye_the_world:tan_shingles",
    "dye_the_world:slate_shingles",
    "dye_the_world:teal_shard",
    "dye_the_world:navy_shard",
    "dye_the_world:mint_shard",
    "dye_the_world:tan_shard",
    "dye_the_world:coral_shard",
    "dye_the_world:forest_shard",
    "dye_the_world:ginger_shard",
    "dye_the_world:olive_shard",
    "dye_the_world:verdant_shard",
    "dye_the_world:rose_shard",
    "dye_the_world:indigo_shard",
    "dye_the_world:aqua_shard",
    "dye_the_world:amber_shard",
    "dye_the_world:beige_shard",
    "dye_the_world:maroon_shard",
    "dye_the_world:slate_shard"
]; 

HUtil.hideAll(compat_shingles);

# oops indigo dye is unobtainable 
# nor is navy
DebugUtil.endScript("recipes/dye_depot/hide_unnecessary_colors"); 