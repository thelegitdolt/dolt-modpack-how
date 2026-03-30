#loader tags

TLUtil.startScript("tags/minecraft/paintings/placeable"); 


val a = [<resource:resonance:finite_time>,
<resource:resonance:gradient_horizont>,
<resource:resonance:cut_up_sections>,
<resource:resonance:enchanted_instrumentals_and_whispers>,
<resource:resonance:vibes>,
<resource:resonance:pale_meditations>,
<resource:resonance:achievement>,
<resource:resonance:lynx>,
<resource:resonance:glass_prism>,
<resource:resonance:vista_of_chaos>,
<resource:resonance:reflections>,
<resource:resonance:red_twilight>,
<resource:resonance:plume_valley>,
<resource:resonance:optimized>,
<resource:resonance:magic_peaks>,
<resource:resonance:empty_hiding_world>,
<resource:resonance:nematophy>,
<resource:resonance:nostalgi_gaius>,
<resource:resonance:one_hundred_mornings>,
<resource:resonance:dated_new_aesthetic>,
<resource:resonance:in_the_worlde>,
<resource:resonance:how_to_see_through_walls>,
<resource:resonance:new_twilight>,
<resource:resonance:19999>,
<resource:resonance:yes_da_da_da>];

for i in a {
    <tag:painting_variant:minecraft:placeable>.removeId(i);
}

TLUtil.endScript("tags/minecraft/paintings/placeable"); 