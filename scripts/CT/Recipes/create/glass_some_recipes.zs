DebugUtil.startScript("recipes/create/glass_some_recipes"); 
    
val glass = <item:minecraft:glass>;
val framed = <item:create:framed_glass>; 
val tiled = <item:create:tiled_glass>; 

craftingTable.addShaped("framed_glass_based", framed * 2, [
    [glass],
    [glass] 
]);

craftingTable.addShaped("tiled_glass_based", tiled * 2, [
    [framed],
    [framed] 
]);

craftingTable.addShaped("er_glass_based", glass * 2, [
    [tiled],
    [tiled] 
]);

val hori_glass = <item:create:horizontal_framed_glass>; 
val pane = <item:create:horizontal_framed_glass_pane>; 
stoneCutter.remove(hori_glass);
<tag:items:forge:glass>.remove(hori_glass);
HUtil.hide(hori_glass); 

stoneCutter.remove(pane);
craftingTable.remove(pane); 
HUtil.hide(hori_glass); 

DebugUtil.endScript("recipes/create/glass_some_recipes"); 