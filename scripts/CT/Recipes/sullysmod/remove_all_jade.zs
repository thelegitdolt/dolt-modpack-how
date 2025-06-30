DebugUtil.startScript("recipes/sullysmod/remove_all_jade"); 
    

val jadies = ["sullysmod:rough_jade",
"sullysmod:rough_jade_brick_slab",
"sullysmod:rough_jade_brick_stairs",
"sullysmod:rough_jade_block",
"sullysmod:rough_jade_brick_wall",
"sullysmod:jade_brick_wall",
"sullysmod:jade_shield",
"sullysmod:jade_horse_armor",
"sullysmod:jade_ore",
"sullysmod:jade_pillar",
"sullysmod:chiseled_jade",
"sullysmod:deepslate_jade_ore",
"sullysmod:jade",
"sullysmod:jade_totem",
"sullysmod:jade_brick_slab",
"sullysmod:jade_brick_stairs",
"sullysmod:jade_bricks",
"sullysmod:jade_block",
"sullysmod:jade_upgrade_smithing_template",
"sullysmod:rough_jade_bricks"
] as string[];

RUtil.removeAll(jadies);
HUtil.hideAll(jadies);

smithing.removeByName("sullysmod:smithing/jade_shield");

DebugUtil.endScript("/Recipes/sullysmod/remove_all_jade"); 