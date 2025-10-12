DebugUtil.startScript("recipes/suppies/bye_things"); 

val a = [
    "supplementaries:fire_pit",
    "supplementaries:cage",
    "supplementaries:flower_box",
    "supplementaries:lumisene_bucket",
    "supplementaries:lumisene_bottle"
];

RUtil.removeAll(a);
HUtil.hideAll(a);
TUtil.removeItems(a);

DebugUtil.endScript("recipes/suppies/bye_things"); 