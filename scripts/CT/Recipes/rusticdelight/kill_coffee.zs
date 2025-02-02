DebugUtil.startScript("Recipes/rusticdelight/kill_coffee"); 
    
val coffes = ["rusticdelight:milk_coffee",
"rusticdelight:dark_coffee",
"rusticdelight:coffee_beans",
"rusticdelight:coffee",
"rusticdelight:chocolate_coffee",
"rusticdelight:roasted_coffee_beans",
"rusticdelight:wild_coffee",
"rusticdelight:coffee_braised_beef",
"rusticdelight:golden_coffee_beans",
"rusticdelight:honey_coffee"
];

HUtil.hideAll(coffes);
RUtil.removeAll(coffes);

val sex = [
    "rusticdelight:milk_coffee",
"rusticdelight:dark_coffee",
"rusticdelight:coffee",
"rusticdelight:chocolate_coffee",
"rusticdelight:coffee_braised_beef",
"rusticdelight:honey_coffee"
];

for i in sex{
    RUtil.cook.removeByName(i);
}

DebugUtil.endScript("Recipes/rusticdelight/kill_coffee"); 