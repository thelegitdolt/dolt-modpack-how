#loader tags

TLUtil.startScript("Tags/alexscaves/remote_detonator_activates"); 
    

var tnts = [
	"savage_and_ravage:spore_bomb", 
	"caverns_and_chasms:tmt", 
	"nirvana:thc", 
	"oreganized:shrapnel_bomb"
] as string[];

for ice in tnts {
    <tag:blocks:alexscaves:remote_detonator_activates>.addId(<resource:${ice}>);
}


TLUtil.endScript("Tags/alexscaves/remote_detonator_activates"); 