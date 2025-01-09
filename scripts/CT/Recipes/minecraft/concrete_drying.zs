DebugUtil.startScript("recipes/minecraft/concrete_drying"); 
    
function concrete(modid as string, color as string) as void {
    val concrete = <item:${modid}:${color}_concrete>; 
    val powder = <item:${modid}:${color}_concrete_powder>;
    craftingTable.addShapeless(color + "_concrete_washing", concrete * 8, [
        <tag:items:forge:buckets/water>, powder, powder, powder, powder, powder, powder, powder, powder
    ]);  
} 

for i in RUtil.colors {
    concrete("minecraft", i); 
}

for i in RUtil.dyeDepotColors {
    concrete("dye_depot", i); 
}

DebugUtil.endScript("recipes/minecraft/concrete_drying"); 