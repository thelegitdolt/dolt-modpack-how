DebugUtil.startScript("recipes/suppies/fix_awning"); 


for i in RUtil.colors {
    var tag = <tagmanager:items>.tag("minecraft:" + i + "_carpet"); 
    tag.add(<item:minecraft:${i}_carpet>); 
}


DebugUtil.endScript("recipes/suppies/fix_awning"); 