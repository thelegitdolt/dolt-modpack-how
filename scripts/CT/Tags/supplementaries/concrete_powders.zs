DebugUtil.startScript("tags/supplementaries/concrete_powders"); 
    

for item in RUtil.dyeDepotColors {
    <tag:items:supplementaries:concrete_powders>.add(<item:dye_depot:${item}_concrete_powder>);
}

<tag:items:supplementaries:concrete_powders>.add(<item:clayworks:concrete_powder>);


DebugUtil.endScript("tags/supplementaries/concrete_powders"); 