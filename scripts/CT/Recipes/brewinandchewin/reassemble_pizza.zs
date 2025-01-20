DebugUtil.startScript("recipes/brewinandchewin/reassemble_pizza"); 
    

val pizza = <item:brewinandchewin:pizza_slice>;

craftingTable.addShapeless("pizza_from_slices", <item:brewinandchewin:pizza>, [pizza, pizza, pizza, pizza]);


DebugUtil.endScript("recipes/brewinandchewin/reassemble_pizza"); 