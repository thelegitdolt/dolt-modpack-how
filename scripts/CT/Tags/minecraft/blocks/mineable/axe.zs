#loader tags

TLUtil.startScript("/Tags/minecraft/blocks/mineable/axe.zs/"); 
    

var stuff = [

] as string[];


for s in stuff {
    <tag:blocks:minecraft:mineable/axe>.addId(<resource:${s}>);
}



TLUtil.endScript("/Tags/minecraft/blocks/mineable/axe.zs"); 