DebugUtil.startScript("recipes/create/murder_op_stuff"); 
    

var list = [
    "create:mechanical_saw", 
    "create:mechanical_harvester",
    "create:mechanical_roller"
];
HUtil.hideAll(list);

for i in list {
    craftingTable.remove(<item:${i}>);
}



DebugUtil.endScript("recipes/create/murder_op_stuff"); 