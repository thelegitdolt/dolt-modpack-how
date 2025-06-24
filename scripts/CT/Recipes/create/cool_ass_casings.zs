DebugUtil.startScript("recipes/create/cool_ass_casings"); 


for i, item in {"andesite" : "create:andesite_alloy", "copper" : "minecraft:copper_ingot", "brass" : "create:brass_ingot"} {
    val theItem = <item:${item}>;

    <recipetype:create:item_application>.removeByName("create:item_application/" + i + "_casing_from_log");
    <recipetype:create:item_application>.removeByName("create:item_application/" + i + "_casing_from_wood");

    <recipetype:create:item_application>.addRecipe("based_" + i + "_casing_apply_lol", 
        [<item:create:${i}_casing> % 100.0], 
        <tag:items:minecraft:planks>, theItem);
}


DebugUtil.endScript("recipes/create/cool_ass_casings"); 
