DebugUtil.startScript("recipes/suppies/cage"); 

val scrap = <item:dungeonsdelight:stained_scrap>;
val slate = <item:netherexp:pale_soul_slate>;
val tear = <item:minecraft:ghast_tear>;

craftingTable.removeByName("supplementaries:cage");
craftingTable.addShaped("cage_badass", <item:supplementaries:cage>, [
    [scrap, scrap, scrap],
    [scrap, tear, scrap],
    [slate, slate, slate]
]);



DebugUtil.endScript("recipes/suppies/cage"); 