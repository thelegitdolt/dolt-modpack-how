DebugUtil.startScript("recipes/environmental/banner_patterns_not_stupid"); 

val pap = <item:minecraft:paper>;
craftingTable.addShapeless("lumberer_bp_good", <item:environmental:lumberer_banner_pattern>, [
    pap, <tag:items:environmental:pine_logs>
]);
craftingTable.addShapeless("helper_bp_good", <item:environmental:helper_banner_pattern>, [
    pap, <item:environmental:pine_sapling>
]);

DebugUtil.endScript("recipes/environmental/banner_patterns_not_stupid"); 