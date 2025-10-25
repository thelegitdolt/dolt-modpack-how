DebugUtil.startScript("recipes/windswept/bye_wooden_bucket"); 

val a = [
    "windswept:wooden_chocolate_bucket",
    "windswept:wooden_bucket",
    "windswept:wooden_water_bucket",
    "windswept:wooden_milk_bucket",
    "windswept:wooden_powder_snow_bucket",
    "windswept:wooden_honey_bucket"
];
craftingTable.remove(<item:windswept:wooden_bucket>);
TUtil.removeItems(a);

DebugUtil.endScript("recipes/windswept/bye_wooden_bucket"); 