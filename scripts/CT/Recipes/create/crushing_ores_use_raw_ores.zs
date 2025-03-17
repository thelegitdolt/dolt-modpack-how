DebugUtil.startScript("recipes/create/crushing_ores_use_raw_ores"); 

val a = ["create:crushed_raw_zinc",
"create:crushed_raw_iron",
"create:crushed_raw_copper",
"create:crushed_raw_silver",
"create:crushed_raw_lead",
"create:crushed_raw_gold",
"create:crushed_raw_tin"
];
HUtil.hideAll(a);

<recipetype:create:crushing>.removeByName("create:crushing/raw_tin_block");
<recipetype:create:crushing>.removeByName("create:crushing/raw_tin"); 


<recipetype:create:crushing>.addRecipe("crushing/glance", [<item:oreganized:raw_lead> % 80.0, <item:oreganized:lead_nugget> % 80.0], <item:oreganized:glance>, 250);
<recipetype:create:crushing>.addRecipe("crushing/glance_recycling", [<item:oreganized:raw_lead> % 80.0, <item:oreganized:lead_nugget> % 80.0], <tag:items:oreganized:stone_types/glance>, 250);

<recipetype:create:crushing>.addRecipe("crushing_with_raw_ores/lead_ore", [<item:oreganized:raw_lead> * 2 % 100.0, <item:oreganized:raw_lead> % 50.0, <item:create:experience_nugget> % 75.0, <item:minecraft:cobblestone>], <item:oreganized:lead_ore>, 400);
<recipetype:create:crushing>.addRecipe("crushing_with_raw_ores/lead_ore_dep", [<item:oreganized:raw_lead> * 2 % 100.0, <item:oreganized:raw_lead> % 50.0, <item:create:experience_nugget> % 75.0, <item:minecraft:cobbled_deepslate>], <item:oreganized:deepslate_lead_ore>, 400);



<recipetype:create:crushing>.addRecipe("crushing_with_raw_ores/deepslate_iron_ore", [<item:minecraft:raw_iron> * 2 % 100.0, <item:minecraft:raw_iron> % 25.0, <item:create:experience_nugget> % 75.0, <item:minecraft:cobbled_deepslate> % 12.5], <item:minecraft:deepslate_iron_ore>, 350);
<recipetype:create:crushing>.addRecipe("crushing_with_raw_ores/iron_ore", [<item:minecraft:raw_iron> % 100.0, <item:minecraft:raw_iron> % 75.0, <item:create:experience_nugget> % 75.0, <item:minecraft:cobblestone> % 12.5], <item:minecraft:iron_ore>, 250);

<recipetype:create:crushing>.addRecipe("crushing_with_raw_ores/deepslate_gold_ore", [<item:minecraft:raw_gold> * 2 % 100.0, <item:minecraft:raw_gold> % 25.0, <item:create:experience_nugget> * 2 % 75.0, <item:minecraft:cobbled_deepslate> % 12.5], <item:minecraft:deepslate_gold_ore>, 350);
<recipetype:create:crushing>.addRecipe("crushing_with_raw_ores/gold_ore", [<item:minecraft:raw_gold> % 100.0, <item:minecraft:raw_gold> % 75.0, <item:create:experience_nugget> * 2 % 75.0, <item:minecraft:cobblestone> % 12.5], <item:minecraft:gold_ore>, 250);

<recipetype:create:crushing>.addRecipe("crushing_with_raw_ores/copper_ore", [<item:minecraft:raw_copper> * 5 % 100.0, <item:minecraft:raw_copper> % 25.0, <item:create:experience_nugget> % 75.0, <item:minecraft:cobblestone> % 12.5], <item:minecraft:copper_ore>, 250);
<recipetype:create:crushing>.addRecipe("crushing_with_raw_ores/deepslate_copper_ore", [<item:minecraft:raw_copper> * 7 % 100.0, <item:minecraft:raw_copper> % 25.0, <item:create:experience_nugget> % 75.0, <item:minecraft:cobbled_deepslate> % 12.5], <item:minecraft:deepslate_copper_ore>, 350);

<recipetype:create:crushing>.addRecipe("crushing_with_raw_ores/deepslate_zinc_ore", [<item:create:raw_zinc> * 2 % 100.0, <item:create:raw_zinc> % 25.0, <item:create:experience_nugget> % 75.0, <item:minecraft:cobbled_deepslate> % 12.5], <item:create:deepslate_zinc_ore>, 350);
<recipetype:create:crushing>.addRecipe("crushing_with_raw_ores/zinc_ore", [<item:create:raw_zinc> % 100.0, <item:create:raw_zinc> % 75.0, <item:create:experience_nugget> % 75.0, <item:minecraft:cobblestone> % 12.5], <item:create:zinc_ore>, 250);


<recipetype:create:crushing>.addRecipe("crushing_with_raw_ores/silver_ore", 
[<item:caverns_and_chasms:raw_silver> % 100.0, <item:caverns_and_chasms:raw_silver> % 75.0, <item:create:experience_nugget> % 75.0], <item:caverns_and_chasms:silver_ore>, 400);
<recipetype:create:crushing>.addRecipe("crushing_with_raw_ores/silver_ore_dep", 
[<item:caverns_and_chasms:raw_silver> % 100.0, <item:caverns_and_chasms:raw_silver> % 75.0, <item:create:experience_nugget> % 75.0], <item:caverns_and_chasms:deepslate_silver_ore>, 400);
<recipetype:create:crushing>.addRecipe("crushing/silver_ore_good", 
[<item:caverns_and_chasms:silver_nugget> * 4 % 100.0, <item:caverns_and_chasms:silver_nugget> % 25.0, <item:create:experience_nugget> % 75.0, <item:minecraft:soul_soil> % 12.5], 
<item:minecraft:nether_gold_ore>, 350);


<recipetype:create:crushing>.removeByName("oreganized:create/crushing/glance");
<recipetype:create:crushing>.removeByName("oreganized:create/crushing/glance_recycling");
<recipetype:create:crushing>.removeByName("create:crushing/lead_ore");
<recipetype:create:crushing>.removeByName("create:crushing/raw_lead");
<recipetype:create:crushing>.removeByName("create:crushing/raw_lead_block");
<recipetype:create:crushing>.removeByName("create:crushing/deepslate_iron_ore");
<recipetype:create:crushing>.removeByName("create:crushing/iron_ore");
<recipetype:create:crushing>.removeByName("create:crushing/raw_iron");
<recipetype:create:crushing>.removeByName("create:crushing/raw_iron_block");
<recipetype:create:crushing>.removeByName("create:crushing/deepslate_gold_ore");
<recipetype:create:crushing>.removeByName("create:crushing/gold_ore");
<recipetype:create:crushing>.removeByName("create:crushing/raw_gold");
<recipetype:create:crushing>.removeByName("create:crushing/raw_gold_block");
<recipetype:create:crushing>.removeByName("create:crushing/copper_ore");
<recipetype:create:crushing>.removeByName("create:crushing/deepslate_copper_ore");
<recipetype:create:crushing>.removeByName("create:crushing/raw_copper");
<recipetype:create:crushing>.removeByName("create:crushing/raw_copper_block");
<recipetype:create:crushing>.removeByName("create:crushing/deepslate_zinc_ore");
<recipetype:create:crushing>.removeByName("create:crushing/raw_zinc");
<recipetype:create:crushing>.removeByName("create:crushing/raw_zinc_block");
<recipetype:create:crushing>.removeByName("create:crushing/zinc_ore");
<recipetype:create:crushing>.removeByName("create:crushing/raw_silver");
<recipetype:create:crushing>.removeByName("create:crushing/raw_silver_block");
<recipetype:create:crushing>.removeByName("create:crushing/silver_ore");


DebugUtil.endScript("recipes/create/crushing_ores_use_raw_ores"); 