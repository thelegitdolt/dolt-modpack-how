DebugUtil.startScript("recipes/create/alloys_in_super_heated_basin"); 
    
import mods.create.MixingManager;


RUtil.mix.removeByName("oreganized:mixing/electrum_ingot"); 
RUtil.mix.addRecipe("electrum_good", 
                                   <constant:create:heat_condition:superheated>,
                                   [<item:oreganized:electrum_ingot>], 
                                   [<item:minecraft:gold_ingot> * 5, <item:caverns_and_chasms:silver_ingot> * 5, <item:create:brass_ingot>, <item:etcetera:bismuth_ingot>],
                                   [<fluid:create:potion>.withTag({Bottle: "REGULAR", Potion: "minecraft:swiftness"}) * 250],
                                   500);

RUtil.mix.addRecipe("netherite_good", 
                                   <constant:create:heat_condition:superheated>,
                                   [<item:minecraft:netherite_ingot>], 
                                   [<item:minecraft:netherite_scrap> * 3, <item:minecraft:gold_ingot> * 3],
                                   [<fluid:minecraft:lava> * 1000],
                                   500);
RUtil.mix.addRecipe("necromium_good", 
                                   <constant:create:heat_condition:superheated>,
                                   [<item:caverns_and_chasms:necromium_ingot>], 
                                   [<item:minecraft:netherite_scrap> * 3, <item:caverns_and_chasms:silver_ingot> * 3],
                                   [<fluid:minecraft:lava> * 1000],
                                   500);

RUtil.mix.addRecipe("netherite_plating_good", 
                                   <constant:create:heat_condition:heated>,
                                   [<item:netherexp:netherite_plating> * 64], 
                                   [<item:minecraft:gold_ingot>, <item:netherexp:stridite> * 2, <item:minecraft:netherite_scrap>],
                                   [<fluid:minecraft:lava> * 250],
                                   500);

RUtil.mix.addRecipe("necromium_plating_good", 
                                   <constant:create:heat_condition:heated>,
                                   [<item:netherexp:necromium_plating> * 64], 
                                   [<item:caverns_and_chasms:silver_ingot>, <item:netherexp:stridite> * 2, <item:minecraft:netherite_scrap>],
                                   [<fluid:minecraft:lava> * 250],
                                   500);

RUtil.mix.addRecipe("red_neodynium", 
                                   <constant:create:heat_condition:heated>,
                                   [<item:alexscaves:scarlet_neodymium_ingot>], 
                                   [<item:minecraft:iron_ingot> * 3, <item:alexscaves:raw_scarlet_neodymium> * 2],
                                   [],
                                   400);
RUtil.mix.addRecipe("azure_neodynium", 
                                   <constant:create:heat_condition:heated>,
                                   [<item:alexscaves:azure_neodymium_ingot>], 
                                   [<item:minecraft:iron_ingot> * 3, <item:alexscaves:raw_azure_neodymium> * 2],
                                   [],
                                   400);

RUtil.mix.addRecipe("polymer_plate", 
                                   <constant:create:heat_condition:heated>,
                                   [<item:alexscaves:polymer_plate> * 4], 
                                   [<item:minecraft:iron_ingot>, <item:alexscaves:toxic_paste>, <item:alexscaves:sulfur_dust>],
                                   [],
                                   400);

craftingTable.removeByName("alexscaves:azure_neodymium_ingot");
craftingTable.removeByName("alexscaves:scarlet_neodymium_ingot"); 
craftingTable.removeByName("alexscaves:polymer_plate"); 

craftingTable.removeByName("minecraft:netherite_ingot");
craftingTable.removeByName("caverns_and_chasms:necromium_ingot");

craftingTable.removeByName("netherexp:netherite_plating");
craftingTable.removeByName("netherexp:necromium_plating");


DebugUtil.endScript("recipes/create/alloys_in_super_heated_basin"); 