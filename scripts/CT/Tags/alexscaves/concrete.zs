DebugUtil.startScript("Tags/alexscaves/concrete"); 
    
for item in RUtil.dyeDepotColors {
    <tag:items:alexscaves:concrete>.add(<item:dye_depot:${item}_concrete>);
}

<tag:items:alexscaves:concrete>.add(<item:clayworks:concrete>);




DebugUtil.endScript("Tags/alexscaves/concrete"); 