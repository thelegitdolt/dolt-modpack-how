DebugUtil.startScript("properties/stack_size"); 
    

<item:minecraft:potion>.setMaxStackSize(16);
<item:alexscaves:quarry_smasher>.setMaxStackSize(100);


# MINECARTS
<item:supplementaries:dispenser_minecart>.setMaxStackSize(100);
<item:minecraft:hopper_minecart>.setMaxStackSize(100);
<item:etched:jukebox_minecart>.setMaxStackSize(100);
<item:minecraft:tnt_minecart>.setMaxStackSize(100);
<item:caverns_and_chasms:tmt_minecart>.setMaxStackSize(100);
<item:minecraft:command_block_minecart>.setMaxStackSize(100);
<item:minecraft:chest_minecart>.setMaxStackSize(100);
<item:oreganized:shrapnel_bomb_minecart>.setMaxStackSize(100);
<item:nirvana:thc_minecart>.setMaxStackSize(100);
<item:minecraft:furnace_minecart>.setMaxStackSize(100);
<item:minecraft:minecart>.setMaxStackSize(100);



# BEDS
for col in RUtil.colors {
    <item:minecraft:${col}_bed>.setMaxStackSize(100);
}

for col in RUtil.dyeDepotColors {
    <item:dye_depot:${col}_bed>.setMaxStackSize(100);
}

# CAKES
<item:minecraft:cake>.setMaxStackSize(100);
<item:species:birtday_cake>.setMaxStackSize(100);
<item:neapolitan:chocolate_cake>.setMaxStackSize(100);
<item:neapolitan:strawberry_cake>.setMaxStackSize(100);
<item:neapolitan:vanilla_cake>.setMaxStackSize(100);
<item:neapolitan:banana_cake>.setMaxStackSize(100);
<item:neapolitan:adzuki_cake>.setMaxStackSize(100);
<item:neapolitan:mint_cake>.setMaxStackSize(100);
<item:farmersrespite:coffee_cake>.setMaxStackSize(100);

<item:brewinandchewin:scarlet_cheese_wheel>.setMaxStackSize(100);
<item:brewinandchewin:unripe_scarlet_cheese_wheel>.setMaxStackSize(100);
<item:brewinandchewin:flaxen_cheese_wheel>.setMaxStackSize(100);
<item:dungeonsdelight:monster_cake>.setMaxStackSize(100);

<item:farmersdelight:shepherds_pie_block>.setMaxStackSize(100);
<item:farmersdelight:roast_chicken_block>.setMaxStackSize(100);
<item:farmersdelight:honey_glazed_ham_block>.setMaxStackSize(100);
<item:farmersdelight:stuffed_pumpkin_block>.setMaxStackSize(100);
<item:farmersdelight:rice_roll_medley_block>.setMaxStackSize(100);
<item:brewinandchewin:fiery_fondue_pot>.setMaxStackSize(100);
<item:brewinandchewin:pizza>.setMaxStackSize(100);


# for col in RUtil.colors {
#    <item:endergetic:${col}_bolloom_balloon>.setMaxStackSize(100);
# }

#ATLAS
<item:map_atlases:atlas>.setMaxStackSize(1);

#PROJECTILES
<item:mynethersdelight:strider_rock>.setMaxStackSize(100);
<item:mynethersdelight:strider_egg>.setMaxStackSize(100);

# MISC
<item:mynethersdelight:zoglin_trophy>.setMaxStackSize(100);
<item:mynethersdelight:waxed_hoglin_trophy>.setMaxStackSize(100);
<item:mynethersdelight:hoglin_trophy>.setMaxStackSize(100);









DebugUtil.endScript("properties/stack_size"); 