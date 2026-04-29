DebugUtil.startScript("Recipes/farmers_delight/goodbye_scavenging_recipee"); 
    
for i in WoodListTwo.create("%s_planks").build() {
    RUtil.cut.remove(<item:${i}>);
}
RUtil.cut.removeByName("farmersdelight:cutting/bamboo_basket");
RUtil.cut.removeByName("farmersdelight:cutting/wooden_basket");

RUtil.cut.removeByRegex("farmersdelight:salvaging/.*minecart");
RUtil.cut.removeByRegex("farmersdelight:salvaging/.*chest_boat");

DebugUtil.endScript("Recipes/farmers_delight/goodbye_scavenging_recipes"); 