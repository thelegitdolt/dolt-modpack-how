DebugUtil.startScript("tags/brewinandchewin/freeze_sources"); 
    

var creams = [
	"neapolitan:vanilla_ice_cream_block",
	"neapolitan:strawberry_ice_cream_block",
	"neapolitan:chocolate_ice_cream_block",

"architects_palette:chiseled_packed_ice",
"architects_palette:polished_packed_ice",
"oreganized:grooved_blue_ice",
"architects_palette:polished_packed_ice_vertical_slab",
"architects_palette:polished_packed_ice_wall",
"oreganized:grooved_ice",
"oreganized:grooved_packed_ice",
"architects_palette:polished_packed_ice_slab",
"architects_palette:packed_ice_pillar",
"architects_palette:polished_packed_ice_stairs",


	"neapolitan:mint_ice_cream_block",
	"neapolitan:banana_ice_cream_block",

	"netherexp:ectoplasm"
] as string[];

for ice in creams{
    <tag:blocks:brewinandchewin:freeze_sources>.add(<block:${ice}>);
}


DebugUtil.endScript("tags/brewinandchewin/freeze_sources"); 