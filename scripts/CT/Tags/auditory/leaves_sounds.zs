DebugUtil.startScript("/Tags/auditory/leaves_sounds.zs/"); 
    


<tag:blocks:auditory:leaf_sounds>.add(<tag:blocks:minecraft:leaves>);
<tag:blocks:auditory:leaf_sounds>.add(<tag:blocks:woodworks:leaf_piles>);
<tag:blocks:auditory:leaf_sounds>.add(<tag:blocks:minecraft:saplings>);


var leaves = [
    "environmental:pink_hanging_wisteria_leaves",
"environmental:blue_hanging_wisteria_leaves",
"environmental:purple_hanging_wisteria_leaves",
"environmental:white_hanging_wisteria_leaves",
"environmental:hanging_willow_leaves"

] as string[];

for leaf in leaves {
    <tag:blocks:auditory:leaf_sounds>.add(<block:${leaf}>);
}


DebugUtil.endScript("/Tags/auditory/leaves_sounds.zs"); 