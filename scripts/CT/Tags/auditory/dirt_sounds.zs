DebugUtil.startScript("/Tags/auditory/dirt_sounds.zs/"); 
    

val dirts = [
    "neapolitan:adzuki_soil",
    "environmental:buried_truffle",
    "environmental:podzol_path",
    "environmental:mycelium_path",
    "minecraft:podzol",
    "minecraft:farmland",
    "minecraft:dirt_path",
    "farmersdelight:rich_soil",
    "farmersdelight:rich_soil_farmland"
] as string[];


for thing in dirts {
    <tag:blocks:auditory:dirt_sounds>.add(<block:${thing}>);
}



DebugUtil.endScript("/Tags/auditory/dirt_sounds.zs"); 