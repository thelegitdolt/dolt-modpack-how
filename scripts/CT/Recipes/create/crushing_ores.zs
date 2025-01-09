DebugUtil.startScript("recipes/create/crushing_ores"); 
    
 <recipetype:create:crushing>.addRecipe("crushing/galena_iron_ore", 
    [<item:create:crushed_raw_iron> * 2 % 100.0, <item:create:crushed_raw_iron> % 25.0, <item:create:experience_nugget> % 75.0, <item:alexscaves:galena> % 12.5], 
     <item:alexscaves:galena_iron_ore>, 350);

<recipetype:create:crushing>.removeByName("create:crushing/nether_gold_ore"); 

 <recipetype:create:crushing>.addRecipe("crushing/gold_ore_good", 
    [<item:minecraft:gold_nugget> * 4 % 100.0, <item:minecraft:gold_nugget> % 25.0, <item:create:experience_nugget> % 75.0, <item:minecraft:netherrack> % 12.5], 
     <item:alexscaves:galena_iron_ore>, 350);



 <recipetype:create:crushing>.addRecipe("crushing/radrock_uranium_ore", 
    [<item:alexscaves:uranium> * 2 % 100.0, <item:alexscaves:uranium> % 25.0, <item:create:experience_nugget> % 75.0, <item:alexscaves:radrock> % 12.5], 
     <item:alexscaves:radrock_uranium_ore>, 350);




DebugUtil.endScript("recipes/create/crushing_ores"); 