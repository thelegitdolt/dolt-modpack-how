DebugUtil.startScript("recipes/windswept/bye_goats"); 


val a = [
    "windswept:goat",
    "windswept:cooked_goat",
    "windswept_delights:goat_shanks",
    "windswept_delights:cooked_goat_shanks",
    "windswept:goat_stew"
];

RUtil.removeAll(a);
HUtil.hideAll(a);
TUtil.removeItems(a);

RUtil.cook.removeByName("windswept_delights:cooking/goat_stew");
RUtil.cut.removeByName("windswept_delights:cutting/goat_shanks");
RUtil.cut.removeByName("windswept_delights:cutting/cooked_goat_shanks");

DebugUtil.endScript("recipes/windswept/bye_goats"); 