DebugUtil.startScript("recipes/create/murder_overlap"); 
    

var list = [
    "create:builders_tea",
    "create:honeyed_apple",
    "create:sweet_roll",
    "create:chocolate_glazed_berries",
    "create:bar_of_chocolate"
];
HUtil.hideAll(list);
for i in list {
    <recipetype:create:filling>.remove(<item:${i}>);
}

<recipetype:create:compacting>.removeByName("create:compacting/chocolate");

<recipetype:create:mixing>.removeByName("create:mixing/chocolate");
<recipetype:create:mixing>.removeByName("create:mixing/chocolate_melting");
<recipetype:create:mixing>.removeByName("create:mixing/tea");

HUtil.hideFluid("create:honey");
HUtil.hideFluid("create:chocolate");

var fruity_ahh_buckets = [
    "create:chocolate_bucket",
    "create:honey_bucket"
];
HUtil.hideAll(fruity_ahh_buckets);


DebugUtil.endScript("recipes/create/murder_overlap"); 