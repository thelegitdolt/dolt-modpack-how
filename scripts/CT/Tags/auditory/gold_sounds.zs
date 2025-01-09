DebugUtil.startScript("/Tags/auditory/gold_sounds.zs/"); 
    

var gold_sounds = [
    "minecraft:bell",

    "caverns_and_chasms:golden_bars",
    "caverns_and_chasms:lava_lamp",

    "savage_and_ravage:blast_proof_plates",
    "savage_and_ravage:blast_proof_stairs",
    "savage_and_ravage:blast_proof_slab",

    "caverns_and_chasms:sanguine_block",
    "caverns_and_chasms:fortified_sanguine_tiles",
    "caverns_and_chasms:fortified_sanguine_tile_stairs",
    "caverns_and_chasms:sanguine_tiles",
    "caverns_and_chasms:sanguine_tile_stairs",
    "caverns_and_chasms:fortified_sanguine_tile_slab",
    "caverns_and_chasms:fortified_sanguine_tile_wall",
    "caverns_and_chasms:sanguine_tile_slab",
    "caverns_and_chasms:sanguine_tile_wall",


    "caverns_and_chasms:silver_block",
    "caverns_and_chasms:silver_bars",
    "caverns_and_chasms:medium_weighted_pressure_plate"
    

] as string[];

for gold in gold_sounds{
    <tag:blocks:auditory:gold_sounds>.add(<block:${gold}>);
}


<tag:blocks:auditory:gold_sounds>.add(<tag:blocks:caverns_and_chasms:braziers>);



DebugUtil.endScript("/Tags/auditory/gold_sounds.zs"); 