DebugUtil.startScript("recipes/windswept/gingerbread_stuff"); 

val a = [
    "alexscaves:gingerbread_block",
    "alexscaves:gingerbarrel",
    "alexscaves:confection_oven",
    "alexscaves:alex_meal"
];

val b = [
    "windswept:gingerbread_block",
    "windswept:glazed_gingerbread_block",
    "windswept:glazed_gingerbread_brick_slab",
    "windswept:glazed_gingerbread_brick_wall",
    "windswept:gingerbread_brick_wall",
    "windswept:glazed_gingerbread_bricks",
    "windswept:gingerbread_trapdoor",
    "windswept:gingerbread_door",
    "windswept:gingerbread_brick_slab",
    "windswept:gingerbread_brick_stairs",
    "windswept:gingerbread_bricks",
    "alexscaves:gingerbread_crumbs",
    "windswept:glazed_gingerbread_brick_stairs"
];

RUtil.removeAll(b);
for c in b{
<recipetype:create:item_application>.remove(<item:${c}>);}


RUtil.replaceAll(<item:alexscaves:gingerbread_crumbs>, <item:windswept:gingerbread_cookie>, a);

DebugUtil.endScript("recipes/windswept/gingerbread_stuff"); 