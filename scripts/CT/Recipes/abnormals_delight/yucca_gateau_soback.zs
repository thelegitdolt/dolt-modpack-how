DebugUtil.startScript("recipes/abnormals_delight/yucca_geateau_soback"); 

val slice = <item:abnormals_delight:yucca_gateau_slice>;

<recipetype:create:mechanical_crafting>.addRecipe("yucca_gateau_from_slices", <item:atmospheric:yucca_gateau>, 
[[slice, slice, slice, slice, slice], [slice, slice, slice, slice, slice]]);

DebugUtil.endScript("recipes/abnormals_delight/yucca_geateau_soback"); 