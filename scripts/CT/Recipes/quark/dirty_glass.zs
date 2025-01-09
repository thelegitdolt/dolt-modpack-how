DebugUtil.startScript("recipes/quark/dirty_glass"); 
    

import crafttweaker.api.recipe.FurnaceRecipeManager;

furnace.addRecipe("dirty_glass_from_soul_sand", <item:quark:dirty_glass>, <item:minecraft:soul_sand>, 0.1, 200);

craftingTable.addShaped("dirty_pane", <item:quark:dirty_glass_pane> * 16, [
    [
         <item:quark:dirty_glass>,  <item:quark:dirty_glass>,  <item:quark:dirty_glass>
    ],
    [
         <item:quark:dirty_glass>,  <item:quark:dirty_glass>,  <item:quark:dirty_glass>
    ]
]);
 


DebugUtil.endScript("recipes/quark/dirty_glass"); 