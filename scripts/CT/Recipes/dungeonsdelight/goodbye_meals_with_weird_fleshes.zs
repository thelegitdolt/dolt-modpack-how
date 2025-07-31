DebugUtil.startScript("recipes/dungeonsdelight/goodbye_meals_with_weird_fleshes"); 

recipes.removeByName("dungeonsdelight:monster_cooking/misc/soaked_skewer");
recipes.removeByName("dungeonsdelight:monster_cooking/meals/salt_soaked_stew");

val list = [
    "dungeonsdelight:soaked_skewer",
    "dungeonsdelight:salt_soaked_stew",
    "dungeonsdelight:brined_flesh",
    "dungeonsdelight:gritty_flesh"
];

RUtil.cut.removeByName("farmersdelight:cutting/gritty_flesh");
RUtil.cut.removeByName("farmersdelight:cutting/brined_flesh");

HUtil.hideAll(
    list
);

<tag:items:dungeonsdelight:fleshes>.remove(
    <item:dungeonsdelight:brined_flesh>,
    <item:dungeonsdelight:gritty_flesh>
);

DebugUtil.endScript("recipes/dungeonsdelight/goodbye_meals_with_weird_fleshes"); 