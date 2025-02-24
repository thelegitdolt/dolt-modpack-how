DebugUtil.startScript("recipes/create/crushing_ores"); 
    
 <recipetype:create:crushing>.addRecipe("crushing/galena_iron_ore", 
    [<item:minecraft:raw_iron> * 2 % 100.0, <item:minecraft:raw_iron> % 25.0, <item:create:experience_nugget> % 75.0, <item:alexscaves:galena> % 12.5], 
     <item:alexscaves:galena_iron_ore>, 350);

<recipetype:create:crushing>.removeByName("create:crushing/nether_gold_ore"); 
 <recipetype:create:crushing>.addRecipe("crushing/nether_gold_ore_good", 
    [<item:minecraft:gold_nugget> * 4 % 100.0, <item:minecraft:gold_nugget> % 25.0, <item:create:experience_nugget> % 75.0, <item:minecraft:netherrack> % 12.5], 
     <item:minecraft:nether_gold_ore>, 350);




 <recipetype:create:crushing>.addRecipe("crushing/radrock_uranium_ore", 
    [<item:alexscaves:uranium> * 2 % 100.0, <item:alexscaves:uranium> % 25.0, <item:create:experience_nugget> % 75.0, <item:alexscaves:radrock> % 12.5], 
     <item:alexscaves:radrock_uranium_ore>, 350);

 <recipetype:create:crushing>.addRecipe("crushing/nether_bismuth_ore", 
    [<item:etcetera:raw_bismuth> * 2 % 100.0, <item:etcetera:raw_bismuth> % 25.0, <item:create:experience_nugget> % 75.0, <item:minecraft:netherrack> % 12.5], 
     <item:etcetera:nether_bismuth_ore>, 350);

 <recipetype:create:crushing>.addRecipe("crushing/coprolith_coal", 
    [<item:minecraft:coal> * 2 % 100.0, <item:minecraft:coal> % 25.0, <item:create:experience_nugget> % 75.0, <item:alexscaves:coprolith> % 12.5], 
     <item:alexscaves:coprolith_coal_ore>, 350);
 <recipetype:create:crushing>.addRecipe("crushing/guanostone_redstone", 
    [<item:minecraft:redstone> * 6 % 100.0, <item:minecraft:redstone> % 50.0, <item:create:experience_nugget> % 75.0, <item:alexscaves:guanostone> % 12.5], 
     <item:alexscaves:guanostone_redstone_ore>, 350);

addCrushRecipe("spinel", "caverns_and_chasms", "spinel", 4, "spinel");
addCrushRecipe("jade", "sullysmod", "jade", 5, "jade");




function addCrushRecipe(name as string, modid as string, raw as string, count as int, ore as string) as void{
   <recipetype:create:crushing>.addRecipe("crushing/" + name, [
      <item:${modid}:${raw}> * count, <item:${modid}:${raw}> % 50.0, <item:create:experience_nugget> % 75.0, <item:minecraft:cobblestone>
   ],  
   <item:${modid}:${ore}_ore>, 350);

   <recipetype:create:crushing>.addRecipe("crushing/" + name + "_dep", [
      <item:${modid}:${raw}> * count, <item:${modid}:${raw}> % 50.0, <item:create:experience_nugget> % 75.0, <item:minecraft:cobbled_deepslate>
   ], 
   <item:${modid}:deepslate_${ore}_ore>, 350);
}

DebugUtil.endScript("recipes/create/crushing_ores"); 