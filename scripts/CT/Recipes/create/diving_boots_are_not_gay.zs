DebugUtil.startScript("recipes/create/diving_boots_are_not_gay"); 
    
val a = [ "create:crafting/appliances/netherite_diving_helmet_from_netherite",
    "create:crafting/appliances/netherite_backtank_from_netherite",
    "create:crafting/appliances/netherite_diving_boots_from_netherite"
];

for i in a {
    smithing.removeByName(i);
}

DebugUtil.endScript("recipes/create/diving_boots_are_not_gay"); 