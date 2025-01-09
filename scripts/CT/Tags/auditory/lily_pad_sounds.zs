DebugUtil.startScript("/Tags/auditory/lily_pad_sounds.zs/"); 
    

var lilypad = [
    "environmental:large_lily_pad",
    "environmental:giant_lily_pad"
] as string[];

for lily in lilypad{
    <tag:blocks:auditory:lily_pad_sounds>.add(<block:${lily}>);
}



DebugUtil.endScript("/Tags/auditory/lily_pad_sounds.zs"); 