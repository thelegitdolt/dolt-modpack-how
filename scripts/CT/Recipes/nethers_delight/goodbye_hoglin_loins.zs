DebugUtil.startScript("recipes/nethers_delight/goodbye_hoglin_loins"); 


import crafttweaker.api.recipe.IRecipeManager;


craftingTable.remove(<item:mynethersdelight:blue_tenderloin_steak>); 
HUtil.hide(<item:mynethersdelight:blue_tenderloin_steak>); 


val toRemoveCrafting = [
    "mynethersdelight:blue_tenderloin_steak",
    "mynethersdelight:hotdog",
    "mynethersdelight:burnt_roll"
]; 
RUtil.removeAll(toRemoveCrafting); 
HUtil.hideAll(toRemoveCrafting);

val toRemoveCooking = [
    "mynethersdelight:sausage_and_potatoes", 
    "mynethersdelight:burnt_roll"
];
RUtil.removeAllOf(toRemoveCooking, RUtil.cook); 
HUtil.hideAll(toRemoveCooking);


val toRemoveCutting = [
    "mynethersdelight:hoglin_sausage"
];
RUtil.removeAllOf(toRemoveCutting, RUtil.cut); 
HUtil.hideAll(toRemoveCutting);


val toRemoveSmoking = [
    "mynethersdelight:roasted_sausage",
    "mynethersdelight:cooked_loin" 
];
RUtil.removeAllOf(toRemoveCooking, smoker); 
RUtil.removeAllOf(toRemoveCooking, furnace); 
RUtil.removeAllOf(toRemoveCooking, campfire); 
HUtil.hideAll(toRemoveSmoking);


val toRemoveJEI = [
    "mynethersdelight:hoglin_loin" 
];
HUtil.hideAll(toRemoveJEI); 
TUtil.removeItems(toRemoveJEI); 

DebugUtil.endScript("recipes/nethers_delight/goodbye_hoglin_loins"); 