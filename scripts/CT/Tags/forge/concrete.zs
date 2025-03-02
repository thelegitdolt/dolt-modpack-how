DebugUtil.startScript("Tags/forge/concrete"); 
    
for item in RUtil.dyeDepotColors {
    <tag:items:forge:concrete>.add(<item:dye_depot:${item}_concrete>);
}

<tag:items:forge:concrete>.add(<item:clayworks:concrete>);


for item in RUtil.dyeDepotColors {
    <tag:items:forge:concrete_powders>.add(<item:dye_depot:${item}_concrete_powder>);
}

<tag:items:forge:concrete_powders>.add(<item:clayworks:concrete_powder>);


DebugUtil.endScript("Tags/forge/concrete"); 