DebugUtil.startScript("properties/stack_size"); 
    

<item:minecraft:potion>.setMaxStackSize(16);
<item:alexscaves:quarry_smasher>.setMaxStackSize(64);


# MINECARTS
<item:supplementaries:dispenser_minecart>.setMaxStackSize(64);
<item:minecraft:hopper_minecart>.setMaxStackSize(64);
<item:etched:jukebox_minecart>.setMaxStackSize(64);
<item:minecraft:tnt_minecart>.setMaxStackSize(64);
<item:caverns_and_chasms:tmt_minecart>.setMaxStackSize(64);
<item:minecraft:command_block_minecart>.setMaxStackSize(64);
<item:minecraft:chest_minecart>.setMaxStackSize(64);
<item:oreganized:shrapnel_bomb_minecart>.setMaxStackSize(64);
<item:nirvana:thc_minecart>.setMaxStackSize(64);
<item:minecraft:furnace_minecart>.setMaxStackSize(64);
<item:minecraft:minecart>.setMaxStackSize(64);



# BEDS
for col in RUtil.colors {
    <item:minecraft:${col}_bed>.setMaxStackSize(64);
}

for col in RUtil.dyeDepotColors {
    <item:dye_depot:${col}_bed>.setMaxStackSize(64);
}

# CAKES
<item:minecraft:cake>.setMaxStackSize(64);
<item:neapolitan:chocolate_cake>.setMaxStackSize(64);
<item:neapolitan:strawberry_cake>.setMaxStackSize(64);
<item:neapolitan:vanilla_cake>.setMaxStackSize(64);
<item:neapolitan:banana_cake>.setMaxStackSize(64);
<item:neapolitan:adzuki_cake>.setMaxStackSize(64);
<item:neapolitan:mint_cake>.setMaxStackSize(64);
<item:farmersrespite:coffee_cake>.setMaxStackSize(64);
<item:minecraft:cake>.setMaxStackSize(64);

<item:brewinandchewin:scarlet_cheese_wheel>.setMaxStackSize(64);
<item:brewinandchewin:unripe_scarlet_cheese_wheel>.setMaxStackSize(64);
<item:brewinandchewin:flaxen_cheese_wheel>.setMaxStackSize(64);
<item:dungeonsdelight:monster_cake>.setMaxStackSize(64);


# for col in RUtil.colors {
#    <item:endergetic:${col}_bolloom_balloon>.setMaxStackSize(64);
# }

#ATLAS
<item:map_atlases:atlas>.setMaxStackSize(1);

#PROJECTILES
<item:mynethersdelight:strider_rock>.setMaxStackSize(64);
<item:mynethersdelight:strider_egg>.setMaxStackSize(64);

# MISC
<item:mynethersdelight:zoglin_trophy>.setMaxStackSize(64);
<item:mynethersdelight:waxed_hoglin_trophy>.setMaxStackSize(64);
<item:mynethersdelight:hoglin_trophy>.setMaxStackSize(64);









DebugUtil.endScript("properties/stack_size"); 