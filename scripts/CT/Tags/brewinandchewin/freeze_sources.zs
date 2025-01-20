DebugUtil.startScript("tags/brewinandchewin/freeze_sources"); 
    

var creams = [
	"neapolitan:vanilla_ice_cream_block",
	"neapolitan:strawberry_ice_cream_block",
	"neapolitan:chocolate_ice_cream_block",
	"neapolitan:mint_ice_cream_block",
	"neapolitan:banana_ice_cream_block",
] as string[];

for ice in creams{
    <tag:blocks:brewinandchewin:freeze_sources>.add(<block:${ice}>);
}


DebugUtil.endScript("tags/brewinandchewin/freeze_sources"); 