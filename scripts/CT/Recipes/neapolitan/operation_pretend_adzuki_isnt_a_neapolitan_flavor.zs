DebugUtil.startScript("/Recipes/neapolitan/operation_pretend_adzuki_isnt_a_neapolitan_flavor.zs/"); 
    

val adzuki_foods = [
    "abnormals_delight:adzuki_cake_slice",
    "neapolitan:adzuki_cake",
    "neapolitan:adzuki_ice_cream",
    "neapolitan:adzuki_ice_cream_block",
    "neapolitan:adzuki_milkshake",
    "abnormals_delight:adzuki_cake_slice"
];

HUtil.hideAll(adzuki_foods);

for ad in adzuki_foods {
    craftingTable.remove(<item:${ad}>);
}

RUtil.cut.remove(<item:abnormals_delight:adzuki_cake_slice>);


DebugUtil.endScript("/Recipes/neapolitan/operation_pretend_adzuki_isnt_a_neapolitan_flavor.zs"); 