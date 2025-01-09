DebugUtil.startScript("/Tags/auditory/gourd_sounds.zs/"); 
    

var gourds = [
    "farmersdelight:stuffed_pumpkin_block",
    "autumnity:soul_jack_o_lantern",
    "autumnity:ender_jack_o_lantern",
    "autumnity:large_ender_jack_o_lantern_slice",
    "autumnity:large_cupric_jack_o_lantern_slice",
    "autumnity:redstone_jack_o_lantern",
    "autumnity:cupric_jack_o_lantern",
    "autumnity:large_pumpkin_slice",
    "autumnity:large_jack_o_lantern_slice",
    "autumnity:carved_large_pumpkin_slice",
    "autumnity:large_redstone_jack_o_lantern_slice",
    "neapolitan:banana_bundle",
    "atmospheric:yucca_bundle",
    "autumnity:large_soul_jack_o_lantern_slice"

] as string[];

for gourd in gourds{
    <tag:blocks:auditory:gourd_sounds>.add(<block:${gourd}>);
}




DebugUtil.endScript("/Tags/auditory/gourd_sounds.zs"); 