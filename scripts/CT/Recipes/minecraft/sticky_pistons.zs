DebugUtil.startScript("/recipes/minecraft/sticky_pistons/"); 
    

<tag:items:forge:slimeballs>.add(<item:minecraft:honey_bottle>);

craftingTable.removeByName("minecraft:sticky_piston");
craftingTable.addShapeless("sticky_pistons_vanilla", <item:minecraft:sticky_piston>, [<item:minecraft:piston>, <tag:items:forge:slimeballs>]);




DebugUtil.endScript("/recipes/minecraft/sticky_pistons"); 