DebugUtil.startScript("recipes/oreganized/lead_make_good"); 
    
craftingTable.removeByName("oreganized:cut_lead");
stoneCutter.removeByName("oreganized:stonecutting/cut_lead");
stoneCutter.removeByName("oreganized:stonecutting/lead_bricks");
stoneCutter.removeByName("oreganized:stonecutting/lead_pillar");
RUtil.twoByTwo("lead_plating_real", <item:oreganized:lead_ingot>, <item:oreganized:cut_lead>, 4);
 
craftingTable.removeByName("oreganized:lead_trapdoor");
RUtil.withPattern("crafting/lead_trapdoor_good", <item:oreganized:lead_trapdoor> * 2, <item:oreganized:cut_lead>, (a) => [[a, a, a], [a, a, a]]);

craftingTable.removeByName("oreganized:lead_door");
RUtil.withPattern("lead_door_good", <item:oreganized:lead_door> * 3, <item:oreganized:cut_lead>, (a) => [[a, a], [a, a], [a, a]]);

DebugUtil.endScript("recipes/oreganized/lead_make_good"); 