DebugUtil.startScript("recipes/create/mixing_architect_palette_stuff"); 
    
import mods.create.MixingManager;


RUtil.mix.addRecipe("algal_blend_lol", 
            <constant:create:heat_condition:none>,
            [<item:architects_palette:algal_blend> * 4], 
            [<item:minecraft:clay_ball>, <item:minecraft:kelp>],
            [<fluid:minecraft:water> * 250],
            200);

DebugUtil.endScript("recipes/create/mixing_architect_palette_stuff"); 