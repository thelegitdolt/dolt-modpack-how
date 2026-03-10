DebugUtil.startScript("recipes/create/murder_overlap"); 
    
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