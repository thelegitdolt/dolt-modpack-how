DebugUtil.startScript("tags/caverns_and_chasms/bejeweled_apple_cannot_inflict"); 
    

val antidotes = [
    "netherexp:speed_immunity",
    "netherexp:slowness_immunity",
    "netherexp:strength_immunity",
    "netherexp:jump_boost_immunity",
    "netherexp:regeneration_immunity",
    "netherexp:fire_resistance_immunity",
    "netherexp:water_breathing_immunity",
    "netherexp:invisibility_immunity",
    "netherexp:weakness_immunity",
    "netherexp:poison_immunity",
    "netherexp:resistance_immunity",
    "netherexp:absorption_immunity",
    "netherexp:haste_immunity",
    "netherexp:mining_fatigue_immunity",
    "netherexp:darkness_immunity",
    "netherexp:levitation_immunity",
    "netherexp:hunger_immunity",
    "netherexp:wither_immunity",
    "netherexp:luck_immunity",
    "netherexp:unluck_immunity"
]; 

for i in antidotes {
    <tag:mob_effect:caverns_and_chasms:bejeweled_apple_cannot_inflict>.add(<mobeffect:${i}>);
}

<tag:mob_effect:caverns_and_chasms:bejeweled_apple_cannot_inflict>.add(<mobeffect:neapolitan:harmony>);
<tag:mob_effect:caverns_and_chasms:bejeweled_apple_cannot_inflict>.add(<mobeffect:species:gut_feeling>);


DebugUtil.endScript("tags/caverns_and_chasms/bejeweled_apple_cannot_inflict"); 