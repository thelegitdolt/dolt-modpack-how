DebugUtil.startScript("recipes/minecraft/bye_upgrade_templates"); 
    
craftingTable.removeByName("oreganized:electrum_upgrade_smithing_template");
craftingTable.removeByName("minecraft:netherite_upgrade_smithing_template");

HUtil.hide(<item:minecraft:netherite_upgrade_smithing_template>);
HUtil.hide(<item:oreganized:electrum_upgrade_smithing_template>);

DebugUtil.endScript("recipes/minecraft/bye_upgrade_templates"); 