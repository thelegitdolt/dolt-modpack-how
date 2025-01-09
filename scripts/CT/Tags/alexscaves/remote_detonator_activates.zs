DebugUtil.startScript("Tags/alexscaves/remote_detonator_activates"); 
    

var tnts = [
	"savage_and_ravage:spore_bomb", 
	"caverns_and_chasms:tmt", 
	"oreganized:shrapnel_bomb"
] as string[];

for ice in tnts{
    <tag:blocks:alexscaves:remote_detonator_activates>.add(<block:${ice}>);
}


DebugUtil.endScript("Tags/alexscaves/remote_detonator_activates"); 