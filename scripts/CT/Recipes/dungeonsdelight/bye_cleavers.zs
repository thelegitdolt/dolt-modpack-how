DebugUtil.startScript("recipes/dungeonsdelight/goodbye_meals_with_weird_fleshes"); 

val a = [
    "dungeonsdelight:stained_cleaver",
    "dungeonsdelight:stained_knife",
    "dungeonsdelight:golden_cleaver",
    "dungeonsdelight:netherite_cleaver",
    "dungeonsdelight:flint_cleaver",
    "dungeonsdelight:iron_cleaver",
    "dungeonsdelight:diamond_cleaver"
];

RUtil.removeAll(a);
HUtil.hideAll(a);
recipes.removeByName("minecraft:netherite_cleaver_smithing");

DebugUtil.endScript("recipes/dungeonsdelight/goodbye_meals_with_weird_fleshes"); 