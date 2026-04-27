#loader tags

TLUtil.startScript("tag/environmental/deer"); 

val a = ["farmersdelight:tomato", "spawn:dates"];
for i in a {
    <tag:items:environmental:deer_food>.addId(<resource:${i}>);
}


TLUtil.endScript("tag/environmental/deer"); 