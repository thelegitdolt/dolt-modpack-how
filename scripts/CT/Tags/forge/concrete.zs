#loader tags

TLUtil.startScript("Tags/forge/concrete"); 
    
for item in TLUtil.dyeDepotColors {
    <tag:items:forge:concrete>.addId(<resource:dye_depot:${item}_concrete>);
}

<tag:items:forge:concrete>.addId(<resource:clayworks:concrete>);


for item in TLUtil.dyeDepotColors {
    <tag:items:forge:concrete_powders>.addId(<resource:dye_depot:${item}_concrete_powder>);
}

<tag:items:forge:concrete_powders>.addId(<resource:clayworks:concrete_powder>);


TLUtil.endScript("Tags/forge/concrete"); 