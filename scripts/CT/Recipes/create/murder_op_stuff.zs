DebugUtil.startScript("recipes/create/murder_op_stuff"); 
    

var list = [
    "create:mechanical_saw", 
    "create:mechanical_harvester",
    "create:mechanical_roller",
    "create:mechanical_plough"
];
HUtil.hideAll(list);
RUtil.removeAll(list);

HUtil.hide(<item:create:wand_of_symmetry>);
<recipetype:create:mechanical_crafting>.removeByName("create:mechanical_crafting/wand_of_symmetry");


DebugUtil.endScript("recipes/create/murder_op_stuff"); 