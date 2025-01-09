DebugUtil.startScript("/Recipes/sullysmod/hide_raw_jade.zs/"); 
    

val jadies = ["sullysmod:rough_jade",
"sullysmod:rough_jade_brick_slab",
"sullysmod:rough_jade_brick_stairs",
"sullysmod:rough_jade_block",
"sullysmod:rough_jade_bricks"] as string[];

RUtil.removeAll(jadies);
HUtil.hideAll(jadies);





DebugUtil.endScript("/Recipes/sullysmod/hide_raw_jade.zs"); 