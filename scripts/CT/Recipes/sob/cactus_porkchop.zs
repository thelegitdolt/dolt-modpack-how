DebugUtil.startScript("recipes/sob/cactus_porkchop"); 
    
<item:sob:cactus_porkchop>.food = <item:sob:cactus_porkchop>.food.removeEffect(<mobeffect:sob:spite>);
RUtil.cook.removeByName("sob:cooking/cactus_porkchop");
craftingTable.addShapeless("porkers_choppers_sobbers", <item:sob:cactus_porkchop>, [
    <item:minecraft:cactus>, <item:farmersdelight:sandy_shrub>, <item:minecraft:cooked_porkchop>, <tag:items:forge:vegetables>,  <item:minecraft:bowl>
]);

DebugUtil.endScript("recipes/sob/cactus_porkchop"); 