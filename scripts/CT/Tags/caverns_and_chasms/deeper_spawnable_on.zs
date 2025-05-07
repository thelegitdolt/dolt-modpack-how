DebugUtil.startScript("tags/caverns_and_chasms/deeper_spawnable_on"); 
    

val alexscaves_stones = [
    "alexscaves:limestone",
    "alexscaves:radrock",
    "alexscaves:galena",
    "alexscaves:coprolith",
    "alexscaves:abyssmarine",
    "alexscaves:guanostone"
]; 

for i in alexscaves_stones {
    <tag:blocks:caverns_and_chasms:deeper_spawnable_on>.add(<block:${i}>);
}



DebugUtil.endScript("tags/caverns_and_chasms/deeper_spawnable_on"); 