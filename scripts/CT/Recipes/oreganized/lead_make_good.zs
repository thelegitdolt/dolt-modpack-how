DebugUtil.startScript("recipes/oreganized/lead_make_good"); 
    
craftingTable.removeByName("oreganized:cut_lead");
stoneCutter.removeByName("oreganized:stonecutting/cut_lead");
stoneCutter.removeByName("oreganized:stonecutting/lead_bricks");
stoneCutter.removeByName("oreganized:stonecutting/lead_pillar");
RUtil.twoByTwo("lead_plating_real", <item:oreganized:lead_ingot>, <item:oreganized:cut_lead>, 4);
 
DebugUtil.endScript("recipes/oreganized/lead_make_good"); 