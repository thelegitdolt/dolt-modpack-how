DebugUtil.startScript("recipes/nethers_delight/minor_recipe_changes"); 

craftingTable.removeByName("mypersonaldelight:crafting/tear_popsicle"); 
craftingTable.addShaped("tear_poppers_good", <item:mynethersdelight:tear_popsicle> * 4, 
[[<item:minecraft:ghast_tear>], 
[<tag:items:forge:rods/wooden>]]);


craftingTable.removeByName("mynethersdelight:crafting/hotcream_bucket");
RUtil.cook.removeByName("mynethersdelight:cooking/chilidog");

craftingTable.removeByName("mynethersdelight:crafting/breakfast_sampler");
craftingTable.addShapeless("crafting/breakfast_sampler_good_sex", <item:mynethersdelight:breakfast_sampler>, 
    [<item:mynethersdelight:roasted_sausage>, <item:mynethersdelight:roasted_sausage>, 
    <item:minecraft:honey_bottle> | <item:autumnity:syrup_bottle>, 
    <tag:items:forge:cooked_eggs>, <tag:items:forge:cooked_eggs>, <tag:items:forge:bread>, <item:minecraft:bowl>]);

craftingTable.removeByName("mynethersdelight:crafting/striderloaf");
craftingTable.addShapeless("striderloaf_sex", 
<item:mynethersdelight:striderloaf>, [
    <item:mynethersdelight:strider_slice>, <item:mynethersdelight:strider_slice>, <item:mynethersdelight:strider_slice>,
    <tag:items:forge:bread>, <item:mynethersdelight:strider_egg>, <tag:items:mynethersdelight:hot_spice>, <item:minecraft:bowl>]);

RUtil.addFurnaceAndSmokerRecipe("beep_beep_microwave_striderloaf", <item:mynethersdelight:cold_striderloaf>, <item:mynethersdelight:striderloaf>, 0.1);
RUtil.addFurnaceAndSmokerRecipe("plate_striderloaf_heating", <item:mynethersdelight:plate_of_cold_striderloaf>, <item:mynethersdelight:plate_of_striderloaf>, 0.1);


DebugUtil.endScript("recipes/nethers_delight/minor_recipe_changes"); 