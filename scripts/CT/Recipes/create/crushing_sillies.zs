DebugUtil.startScript("recipes/create/crushing_sillies"); 
    

var list = [
    "create:crushing/compat/quark/moss_block",
    "create:crushing/veridium_recycling",
    "create:crushing/ochrum_recycling",
    "create:crushing/crimsite",
    "create:crushing/tuff_recycling",
    "create:crushing/crimsite_recycling",
    "create:crushing/raw_uranium",
    "create:crushing/asurine_recycling",
    "create:crushing/asurine",
    "create:crushing/ochrum",
    "create:crushing/veridium"
];


for i in list {
    <recipetype:create:crushing>.removeByName(i);
}

<recipetype:create:crushing>.addRecipe("tuff_cc_copper", 
[<item:minecraft:flint> % 25, <item:minecraft:gold_nugget> % 5, <item:create:zinc_nugget> % 5, <item:caverns_and_chasms:copper_nugget> % 5, <item:minecraft:iron_nugget> % 10], 
<item:minecraft:tuff>, 200);

<recipetype:create:crushing>.addRecipe("warped_wart_get", 
    [<item:netherexp:warped_wart> % 25], <item:minecraft:warped_wart_block>, 250);

<recipetype:create:crushing>.addRecipe("cotton_to_string_and_seeds", 
    [<item:minecraft:string>, <item:minecraft:string> * 2 % 25, <item:etcetera:cotton_seeds> % 25], <item:etcetera:cotton_flower>, 250);





DebugUtil.endScript("recipes/create/crushing_sillies"); 