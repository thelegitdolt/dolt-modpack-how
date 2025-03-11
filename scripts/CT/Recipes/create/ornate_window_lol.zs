DebugUtil.startScript("recipes/create/ornate_window_lol"); 
    

craftingTable.removeByName("create:ornate_iron_window");

craftingTable.addShapeless("ornate_window_good", <item:create:ornate_iron_window> * 2,
[<tag:items:forge:glass/colorless>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>]);


DebugUtil.endScript("recipes/create/ornate_window_lol"); 