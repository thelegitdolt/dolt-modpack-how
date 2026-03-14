#loader tags

TLUtil.startScript("Tags/forge/fishes"); 
    
val fishies = [
    "spawn:tuna_chunk"
];


for fish in fishies {
    <tag:items:forge:raw_fishes>.addId(<resource:${fish}>);
}
    
val baked_fishies = [
    "spawn:cooked_tuna_chunk"
];

for fishers in baked_fishies {
    <tag:items:forge:cooked_fishes>.addId(<resource:${fishers}>);
}



TLUtil.endScript("Tags/forge/fishes"); 