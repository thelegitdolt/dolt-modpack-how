DebugUtil.startScript("recipes/species/silver_bereager_stuff/"); 
    
craftingTable.removeByName("species:crankbow");
craftingTable.addShaped("crankbow_based", <item:species:crankbow>, [
    [<item:caverns_and_chasms:silver_ingot>, <item:species:werefang>, <item:caverns_and_chasms:silver_ingot>], 
    [<item:species:werefang>, <item:minecraft:crossbow>, <item:species:werefang>], 
    [<item:caverns_and_chasms:silver_ingot>, <item:species:werefang>, <item:caverns_and_chasms:silver_ingot>]]);

craftingTable.removeByName("species:cranktrap");
craftingTable.addShaped("cranktrap_based", <item:species:cranktrap> * 2, [
    [<item:species:werefang>, <item:species:werefang>, <item:species:werefang>], 
    [<item:caverns_and_chasms:silver_ingot>, <item:caverns_and_chasms:silver_ingot>, <item:caverns_and_chasms:silver_ingot>], 
    [<item:species:werefang>, <item:species:werefang>, <item:species:werefang>]]);


DebugUtil.endScript("recipes/species/silver_bereager_stuff"); 