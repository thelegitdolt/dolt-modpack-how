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

<recipetype:create:crushing>.addRecipe("radrock_crush", 
    [<item:alexscaves:uranium_shard> % 2, <item:minecraft:tuff> % 10], 
    <item:alexscaves:radrock>, 200);

<recipetype:create:crushing>.addRecipe("galena_crush", 
    [<item:minecraft:iron_nugget> % 5, <item:minecraft:tuff> % 10], 
    <item:alexscaves:galena>, 200);

# dolerite, 


DebugUtil.endScript("recipes/create/crushing_stones"); 