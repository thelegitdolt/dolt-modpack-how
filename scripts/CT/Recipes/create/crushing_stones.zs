DebugUtil.startScript("recipes/create/crushing_stones"); 
    

<recipetype:create:milling>.removeByName("create:milling/granite");

<recipetype:create:milling>.addRecipe("granite_crush_good", [
    <item:minecraft:red_sand> % 25, <item:caverns_and_chasms:copper_nugget> % 25
], <item:minecraft:granite>, 200);

<recipetype:create:crushing>.addRecipe("shale_crush", 
[<item:dye_depot:slate_dye> % 25, <item:caverns_and_chasms:silver_nugget> % 10], 
<item:quark:shale>, 200);

<recipetype:create:crushing>.addRecipe("jasper_crush", 
    [<item:minecraft:gold_nugget> % 10, <item:atmospheric:arid_sand> % 5], 
    <item:quark:jasper>, 200);

<recipetype:create:crushing>.addRecipe("cassiterite_crush", 
    [<item:caverns_and_chasms:tin_nugget> % 15, <item:minecraft:blackstone> % 10], 
    <item:caverns_and_chasms:cassiterite>, 200);

<recipetype:create:crushing>.addRecipe("sugilite_crush", 
    [<item:caverns_and_chasms:spinel> % 10, <item:minecraft:quartz> % 10], 
    <item:caverns_and_chasms:sugilite>, 200);

<recipetype:create:crushing>.addRecipe("radrock_crush", 
    [<item:alexscaves:uranium_shard> % 2, <item:minecraft:tuff> % 10], 
    <item:alexscaves:radrock>, 200);

<recipetype:create:crushing>.addRecipe("galena_crush", 
    [<item:minecraft:iron_nugget> % 5, <item:minecraft:tuff> % 10], 
    <item:alexscaves:galena>, 200);

<recipetype:create:milling>.addRecipe("abyssmarine_crush_good", [
    <item:alexscaves:muck> % 25, <item:minecraft:prismarine_shard> % 5
], <item:alexscaves:abyssmarine>, 200);

<recipetype:create:milling>.addRecipe("guanostone", [
    <item:minecraft:dirt> % 25, <item:alexscaves:guano> % 5
], <item:alexscaves:guanostone>, 200);

<recipetype:create:crushing>.addRecipe("dolerite_crush", 
    [<item:minecraft:iron_nugget> % 10, <item:oreganized:lead_nugget> % 10], 
    <item:atmospheric:dolerite>, 200);

# dolerite, 


DebugUtil.endScript("recipes/create/crushing_stones"); 