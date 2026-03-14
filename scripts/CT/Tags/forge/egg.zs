#loader tags

TLUtil.startScript("Tags/forge/egg"); 
    
val eggs = [
    "alexscaves:tremorzilla_egg",
    "alexscaves:atlatitan_egg",
    "alexscaves:relicheirus_egg",
    "alexscaves:tremorsaurus_egg",
    "alexscaves:grottoceratops_egg",
    "alexscaves:vallumraptor_egg",
    "alexscaves:subterranodon_egg",
    "minecraft:turtle_egg"

];
for egg in eggs {
    <tag:items:forge:eggs>.removeId(<resource:${egg}>);
}

TLUtil.endScript("Tags/forge/egg"); 