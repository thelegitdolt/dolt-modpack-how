DebugUtil.startScript("/Recipes/quark/remove_chiseled_mud.zs/"); 
    

craftingTable.remove(<item:quark:carved_mud_bricks>);
stoneCutter.remove(<item:quark:carved_mud_bricks>);

HUtil.hideAll(["quark:carved_mud_bricks"] as string[]);


DebugUtil.endScript("/Recipes/quark/remove_chiseled_mud.zs"); 