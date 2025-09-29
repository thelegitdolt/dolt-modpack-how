DebugUtil.startScript("recipes/create/goodbye_cart_assembler_and_tree_fertilizer"); 
    

val cart = <item:create:cart_assembler>;
val tree = <item:create:tree_fertilizer>;

craftingTable.remove(cart);
HUtil.hide(cart);

craftingTable.remove(tree);
HUtil.hide(tree);

DebugUtil.endScript("recipes/create/goodbye_cart_assembler_and_tree_fertilizer"); 