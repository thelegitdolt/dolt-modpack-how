DebugUtil.startScript("recipes/suppies/cannonball"); 
    
val lead = <item:oreganized:lead_ingot>;

craftingTable.removeByName("supplementaries:cannonball_2");
craftingTable.addShaped("cannon_ball_based_balls_lol", <item:supplementaries:cannonball> * 4, [
    [RUtil.air, lead, RUtil.air],
    [lead, RUtil.air, lead],
    [RUtil.air, lead, RUtil.air]
]);

DebugUtil.endScript("recipes/suppies/cannonball"); 