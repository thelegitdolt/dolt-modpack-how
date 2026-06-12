#loader tags

TLUtil.startScript("/Tags/minecraft/blocks/tin_stuff/"); 

var tins = [
    "caverns_and_chasms:tin_block",
    "caverns_and_chasms:tin_ingot",
    "caverns_and_chasms:raw_tin_block",
    "caverns_and_chasms:tin_ore",
    "caverns_and_chasms:deepslate_tin_ore",
    "caverns_and_chasms:cylindrite_tin_ore",
    "caverns_and_chasms:cassiterite_tin_ore"
]
 as string[];

for tin in tins {
    <tag:blocks:minecraft:needs_diamond_tool>.removeId(<resource:${tin}>);
    <tag:blocks:minecraft:needs_stone_tool>.addId(<resource:${tin}>);
}

TLUtil.endScript("/Tags/minecraft/blocks/tin_stuff"); 