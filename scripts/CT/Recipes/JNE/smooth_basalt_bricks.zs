DebugUtil.startScript("recipes/JNE/smooth_basalt_bricks"); 

craftingTable.removeByName("netherexp:polished_basalt_bricks");
RUtil.twoByTwo("smooth_basalt_bricks_real", <item:minecraft:smooth_basalt>, <item:netherexp:polished_basalt_bricks>, 4);

val hi = [
    "netherexp:stonecutting/from_basalt/polished_basalt_brick_wall",
    "netherexp:stonecutting/from_basalt/polished_basalt_brick_slab",
    "netherexp:stonecutting/from_basalt/polished_basalt_bricks",
    "netherexp:stonecutting/from_basalt/polished_basalt_brick_stairs",
    "netherexp:stonecutting/from_polished_basalt/polished_basalt_brick_wall",
    "netherexp:stonecutting/from_polished_basalt/polished_basalt_brick_slab",
    "netherexp:stonecutting/from_polished_basalt/polished_basalt_bricks",
    "netherexp:stonecutting/from_polished_basalt/polished_basalt_brick_stairs"
];
for i in hi { stoneCutter.removeByName(i); }

for i in ["_wall", "_stairs", "_slab", "s"] {
    val item = <item:netherexp:polished_basalt_brick${i}>;
    stoneCutter.addRecipe("stonecutting/from_smooth_basalt/polished_basalt_brick" + i, item, <item:minecraft:smooth_basalt>);
}

DebugUtil.endScript("recipes/JNE/smooth_basalt_bricks"); 