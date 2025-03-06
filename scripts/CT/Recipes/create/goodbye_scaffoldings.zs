DebugUtil.startScript("recipes/create/goodbye_scaffoldings"); 

val list = [
    "create:brass_scaffolding_from_ingots_brass_stonecutting",
    "create:andesite_scaffolding_from_andesite_alloy_stonecutting",
    "create:copper_scaffolding_from_ingots_copper_stonecutting"
];

HUtil.hideAll(["create:brass_scaffolding",
"create:andesite_scaffolding",
"create:copper_scaffolding"]);



for i in list {
    stoneCutter.removeByName(i);
}




DebugUtil.endScript("recipes/create/goodbye_scaffoldings"); 