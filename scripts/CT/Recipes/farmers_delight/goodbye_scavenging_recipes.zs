DebugUtil.startScript("Recipes/farmers_delight/goodbye_scavenging_recipee"); 
    
for i in WoodListTwo.create("%s_planks").build() {
    RUtil.cut.remove(<item:${i}>);
}

DebugUtil.endScript("Recipes/farmers_delight/goodbye_scavenging_recipes"); 