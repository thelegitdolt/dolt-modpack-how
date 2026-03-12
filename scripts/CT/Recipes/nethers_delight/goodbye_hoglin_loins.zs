DebugUtil.startScript("recipes/nethers_delight/goodbye_hoglin_loins"); 


import crafttweaker.api.recipe.IRecipeManager;


craftingTable.remove(<item:mynethersdelight:blue_tenderloin_steak>); 
HUtil.hide(<item:mynethersdelight:blue_tenderloin_steak>); 


val toRemoveCrafting = [
    "mynethersdelight:blue_tenderloin_steak"
]; 
RUtil.removeAll(toRemoveCrafting); 
HUtil.hideAll(toRemoveCrafting);





val toRemoveSmoking = [
    "mynethersdelight:cooked_loin" 
];
HUtil.hideAll(toRemoveSmoking);


val toRemoveJEI = [
    "mynethersdelight:hoglin_loin" 
];
HUtil.hideAll(toRemoveJEI); 
TUtil.removeItems(toRemoveJEI); 

DebugUtil.endScript("recipes/nethers_delight/goodbye_hoglin_loins"); 