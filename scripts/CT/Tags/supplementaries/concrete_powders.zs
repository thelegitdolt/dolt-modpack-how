#loader tags

TLUtil.startScript("tags/supplementaries/concrete_powders"); 
    

for item in TLUtil.dyeDepotColors {
    <tag:items:supplementaries:concrete_powders>.addId(<resource:dye_depot:${item}_concrete_powder>);
}

<tag:items:supplementaries:concrete_powders>.addId(<resource:clayworks:concrete_powder>);


TLUtil.endScript("tags/supplementaries/concrete_powders"); 