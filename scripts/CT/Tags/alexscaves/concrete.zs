#loader tags

TLUtil.startScript("Tags/alexscaves/concrete"); 
    
for item in TLUtil.dyeDepotColors {
    <tag:items:alexscaves:concrete>.addId(<resource:dye_depot:${item}_concrete>);
}

<tag:items:alexscaves:concrete>.addId(<resource:clayworks:concrete>);


TLUtil.endScript("Tags/alexscaves/concrete"); 