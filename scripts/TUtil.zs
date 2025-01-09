#priority 100

import mods.jeitweaker.Jei;
import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.entity.effect.MobEffectInstance;
import crafttweaker.api.tag.manager.ITagManager;

public class TUtil {
    public static removeItems(thing as string[]) as void {
        for i in thing {
            val item = <item:${i}>; 
            for tag in <tagmanager:items>.getTagsFor(item) {
                tag.remove(item);
            }
        }
    }
}