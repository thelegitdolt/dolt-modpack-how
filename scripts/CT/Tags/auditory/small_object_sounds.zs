DebugUtil.startScript("/Tags/auditory/small_object_sounds.zs/"); 
    

val small_objects = [
    
] as string[];

for item in <tag:blocks:auditory:small_object_sounds> {
    if "torch" in item.registryName.getPath() {
        <tag:blocks:auditory:small_object_sounds>.remove(item);
    }
}

for thing in small_objects {
    <tag:blocks:auditory:small_object_sounds>.add(<block:${thing}>);
}



DebugUtil.endScript("/Tags/auditory/small_object_sounds.zs"); 