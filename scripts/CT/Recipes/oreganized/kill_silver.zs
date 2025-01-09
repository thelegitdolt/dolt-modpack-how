DebugUtil.startScript("/Recipes/oreganized/kill_silver.zs/"); 
    

import mods.jeitweaker.Jei;

val things = [
    "oreganized:silver_ingot",
    "oreganized:raw_silver",
    "oreganized:silver_nugget",
    "oreganized:silver_ore",
    "oreganized:deepslate_silver_ore",
    "oreganized:raw_silver_block",
    "oreganized:silver_block",
    "oreganized:silver_mirror"
] as string[];

HUtil.hideAll(things);
RUtil.removeAll(things); 

furnace.remove(<item:oreganized:silver_ingot>); 
blastFurnace.remove(<item:oreganized:silver_ingot>); 

RUtil.addFurnaceAndBlastFurnaceRecipe("crushed_silver_ore_to_ingot", <item:create:crushed_raw_silver>, <item:caverns_and_chasms:silver_ingot>, 0.1); 

<tag:items:forge:ingots/silver>.remove(<item:oreganized:silver_ingot>); 
<tag:items:forge:nuggets/silver>.remove(<item:oreganized:silver_nugget>); 
<tag:items:forge:storage_blocks/silver>.remove(<item:oreganized:silver_block>); 

<tag:items:forge:ores/silver>.remove(<item:oreganized:silver_ore>);
<tag:items:forge:ores/silver>.remove(<item:oreganized:deepslate_silver_ore>);

<tag:blocks:forge:ores/silver>.remove(<block:oreganized:silver_ore>);
<tag:blocks:forge:ores/silver>.remove(<block:oreganized:deepslate_silver_ore>);


DebugUtil.endScript("/Recipes/oreganized/kill_silver.zs"); 