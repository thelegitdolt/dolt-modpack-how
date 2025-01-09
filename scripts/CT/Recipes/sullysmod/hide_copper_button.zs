DebugUtil.startScript("/Recipes/sullysmod/hide_copper_button.zs/"); 
    

val coppers = [
"sullysmod:exposed_copper_button",
"sullysmod:waxed_weathered_copper_button",
"sullysmod:waxed_oxidized_copper_button",
"sullysmod:weathered_copper_button",
"sullysmod:waxed_copper_button",
"sullysmod:oxidized_copper_button",
"sullysmod:waxed_exposed_copper_button",
"sullysmod:copper_button"
] as string[];

RUtil.removeAll(coppers);
HUtil.hideAll(coppers);


DebugUtil.endScript("/Recipes/sullysmod/hide_copper_button.zs"); 