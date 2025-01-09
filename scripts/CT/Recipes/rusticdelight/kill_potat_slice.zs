DebugUtil.startScript("Recipes/rusticdelight/kill_potat_slice"); 
    

RUtil.cut.removeByName("rusticdelight:cutting/potato_slices"); 
RUtil.cut.removeByName("rusticdelight:cutting/baked_potato_slices"); 

val item = <item:rusticdelight:potato_slices>; 
val cooked = <item:rusticdelight:baked_potato_slices>; 

<tag:items:forge:vegetables/potato>.remove(item);
<tag:items:forge:vegetables>.remove(item);

HUtil.hide(item);
HUtil.hide(cooked); 

DebugUtil.endScript("Recipes/rusticdelight/kill_potat_slice"); 