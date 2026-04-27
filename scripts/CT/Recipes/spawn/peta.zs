DebugUtil.startScript("recipes/spawn/peta"); 
    
RUtil.cook.removeByName("spawn:cooking/crab_boil_block");
RUtil.cook.addRecipe("cooking_crab_boil_ethical", <item:spawn:crab_boil_block>, [
    <item:quark:crab_leg>, <item:quark:crab_leg>, <item:farmersdelight:onion>, <item:minecraft:potato>, <item:minecraft:potato>, <item:farmersdelight:bacon>
],  <constant:farmersdelight:cooking_pot_recipe_book_tab:meals>, <item:minecraft:bowl>, 1, 300);

DebugUtil.endScript("recipes/spawn/peta"); 