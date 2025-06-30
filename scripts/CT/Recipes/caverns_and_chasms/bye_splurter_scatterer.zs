DebugUtil.startScript("recipes/caverns_and_chasms/bye_splurter_scatterer"); 
    

val sexers = [
  "caverns_and_chasms:splurter", "caverns_and_chasms:scatterer"
];
for i in sexers {
  craftingTable.removeByName(i);
}
HUtil.hideAll(sexers);


DebugUtil.endScript("recipes/caverns_and_chasms/bye_splurter_scatterer"); 