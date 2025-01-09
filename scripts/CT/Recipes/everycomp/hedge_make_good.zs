DebugUtil.startScript("/Recipes/everycomp/hedge_make_good.zs/"); 
    

var hedges = [
    "everycomp:q/environmental/purple_wisteria_hedge",
    "everycomp:q/autumnity/yellow_maple_hedge",
    "everycomp:q/autumnity/red_maple_hedge",
    "everycomp:q/environmental/blue_wisteria_hedge",
    "everycomp:q/atmospheric/dry_laurel_hedge",
    "everycomp:q/atmospheric/currant_hedge",
    "everycomp:q/environmental/cheerful_plum_hedge",
    "everycomp:q/environmental/moody_plum_hedge",
    "everycomp:q/atmospheric/flowering_morado_hedge",
    "everycomp:q/environmental/white_wisteria_hedge",
    "everycomp:q/atmospheric/green_aspen_hedge",
    "everycomp:q/environmental/pink_wisteria_hedge",
    "everycomp:q/autumnity/orange_maple_hedge"
] as string[]; 

for i in hedges {
    craftingTable.removeByName(i);
}

function hedge(hedge_modid as string, hedge_type as string, log as string, leaf as string) as void {
    val woodtag = <tagmanager:items>.tag(<resource:${log}s>); 
    val hedgeItem = <item:everycomp:q/${hedge_modid}/${hedge_type}>; 
    val name = "fixed_" + hedge_modid + "_" + hedge_type + "_recipe";
    craftingTable.addShaped(name, 
        hedgeItem, [
            [<item:${leaf}>], 
            [woodtag]
    ]); 
}

craftingTable.addShaped("fixed_atmospheric_currant_hedge", 
        <item:everycomp:q/atmospheric/currant_hedge>, [
            [<item:atmospheric:currant_leaves>], 
            [<item:atmospheric:currant_stalk>]
]); 


hedge("environmental", "purple_wisteria_hedge", "environmental:wisteria_log", "environmental:purple_wisteria_leaves");
hedge("autumnity", "yellow_maple_hedge", "autumnity:maple_log", "autumnity:yellow_maple_leaves");
hedge("autumnity", "red_maple_hedge", "autumnity:maple_log", "autumnity:red_maple_leaves");
hedge("environmental", "blue_wisteria_hedge", "environmental:wisteria_log", "environmental:blue_wisteria_leaves");
hedge("atmospheric", "dry_laurel_hedge", "atmospheric:laurel_log", "atmospheric:dry_laurel_leaves");
hedge("environmental", "cheerful_plum_hedge", "environmental:plum_log", "environmental:cheerful_plum_leaves");
hedge("environmental", "moody_plum_hedge", "environmental:plum_log", "environmental:moody_plum_leaves");
hedge("atmospheric", "flowering_morado_hedge", "atmospheric:morado_log", "atmospheric:flowering_morado_leaves");
hedge("environmental", "white_wisteria_hedge", "environmental:wisteria_log", "environmental:white_wisteria_leaves");
hedge("atmospheric", "green_aspen_hedge", "atmospheric:aspen_log", "atmospheric:green_aspen_leaves");
hedge("environmental", "pink_wisteria_hedge", "environmental:wisteria_log", "environmental:pink_wisteria_leaves");
hedge("autumnity", "orange_maple_hedge", "autumnity:maple_log", "autumnity:orange_maple_leaves");



DebugUtil.endScript("/Recipes/everycomp/hedge_make_good.zs"); 