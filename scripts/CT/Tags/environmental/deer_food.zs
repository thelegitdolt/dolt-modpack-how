#loader tags

TLUtil.startScript("tag/environmental/deer"); 

val a = ["farmersdelight:tomato", "spawn:dates"];
for i in a {
    <tag:items:environmental:deer_tame_items>.addId(<resource:${i}>);
    <tag:items:environmental:deer_tempt_items>.addId(<resource:${i}>);
}


TLUtil.endScript("tag/environmental/deer"); 