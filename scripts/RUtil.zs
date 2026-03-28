#priority 100

import crafttweaker.api.recipe.Brewing;
import crafttweaker.api.util.math.RandomSource;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.IRecipeManager;
import crafttweaker.api.ingredient.type.IIngredientList;
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.recipe.type.StonecutterRecipe;
import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;
import crafttweaker.api.recipe.type.ShapedRecipe;
import crafttweaker.api.recipe.type.CraftingRecipe;

public class RUtil {
    public static val cut = <recipetype:farmersdelight:cutting>;
    public static val cook = <recipetype:farmersdelight:cooking>;
    public static val mix = <recipetype:create:mixing>;

    public static val air = <item:minecraft:air>;

    # set as 1 if we are doing the replacer. set as any other number if we should disable the replacer
    public static val DO_REPLACER = 1 as int;


    public static val colors = 
["white", "brown", "gray", "light_gray", "red", "orange", "yellow", "lime", "green", "blue", "light_blue", "cyan", "purple", "magenta", "pink", "black"] 
as string[];

    public static val dyeDepotColors = 
["rose", "maroon", "ginger", "tan", "beige", "coral", "olive", "forest", "verdant", "amber", "teal", "mint", "aqua", "slate", "navy", "indigo"] 
as string[];


    public static twoByTwo(name as string, input as IItemStack, output as IItemStack, count as int = 1) as void {
        craftingTable.addShaped(name, output * count, [
            [input, input], 
            [input, input]
        ]); 
    }

    public static replaceAll(a as IIngredient, b as IIngredient, include... as string[]) as void {
        if (RUtil.DO_REPLACER == 1) {
            Replacer.create()
                .filter(NameFilteringRule.anyOf(include))
                .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, a as IIngredient, b as IIngredient)
                .execute();
        }
    }

    public static replace(a as IIngredient, b as IIngredient, c as string) as void {
        if (RUtil.DO_REPLACER == 1) {
            Replacer.create()
                .filter(NameFilteringRule.anyOf([c]))
                .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, a as IIngredient, b as IIngredient)
                .execute();
        }
    }

    public static getRecipeString(rl as ResourceLocation) as string {
        return rl.toString().replace(":", "_");
    }

    public static getRecipeString(rl as string) as string {
        return rl.replace(":", "_");
    }

    public static threeByThree(name as string, input as IItemStack, output as IItemStack, count as int = 1) as void {
        craftingTable.addShapeless(name, output * count, [input, input, input, input, input, input, input, input, input]); 
    }

    public static oneToOneConversion(name as string, input as IIngredient, output as IItemStack, count as int = 1) as void {
        craftingTable.addShapeless(name, output * count, [input]); 
    }
    
    public static newBrewingRecipe(rea as IIngredient, potion as string) as void {
        brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: potion}), rea, <item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
        brewing.addRecipe(<item:minecraft:splash_potion>.withTag({Potion: potion}), rea, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}));
        brewing.addRecipe(<item:minecraft:lingering_potion>.withTag({Potion: potion}), rea, <item:minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}));
        brewing.addRecipe(<item:caverns_and_chasms:tether_potion>.withTag({Potion: potion}), rea, <item:caverns_and_chasms:tether_potion>.withTag({Potion: "minecraft:awkward"}));
    }

    public static isAir(a as IIngredient) as bool {
        return "IIngredientEmpty.getInstance()" in a.commandString;
    }

    public static removeAll(alls as string[]) as void {
        craftingTable.remove(new IIngredientList(alls.map<IIngredient>(item => <item:${item}>)));
    } 

    public static getSingleItemIngredient(i as IIngredient) as IItemStack {
        if i.items.length == 1 {
            return i.items[0];
        }
        else {
            return air; 
        }
    }

    public static withPattern(name as string, result as IItemStack, ing as IIngredient, pattern as function(a as IIngredient) as IIngredient[][]) as void {
        craftingTable.addShaped(name, result, pattern(ing));
    }

    public static removeStonecutter(alls as string[]) as void {
        stoneCutter.remove(new IIngredientList(alls.map<IIngredient>(item => <item:${item}>)));
    }

    public static removeCraftingAndStonecutter(alls as string[]) as void {
        removeStonecutter(alls);
        removeAll(alls);
    }

    public static removeAllOf(alls as string[], recipeManager as IRecipeManager<Recipe<Container>>) as void {
        recipeManager.remove(new IIngredientList(alls.map<IIngredient>(item => <item:${item}>)));
    }

    public static addFurnaceAndSmokerRecipe(name as string, input as IItemStack, output as IItemStack, xp as float) as void {
        furnace.addRecipe(name + "_from_smelting", output, input, xp, 200); 
        campfire.addRecipe(name + "_from_campfire", output, input, xp, 600); 
        smoker.addRecipe(name + "_from_smoking", output, input, xp, 100); 
    }

    public static addFurnaceAndBlastFurnaceRecipe(name as string, input as IItemStack, output as IItemStack, xp as float) as void {
        furnace.addRecipe(name + "_from_smelting", output, input, xp, 200); 
        blastFurnace.addRecipe(name + "_from_smoking", output, input, xp, 100); 
    }

    public static changeCount(recipe as string, count as int) as void {
        val craftingRecipeValue = craftingTable.getRecipeByName(recipe) as CraftingRecipe;
        val normalRecipe = craftingTable.getRecipeByName(recipe) as Recipe<Container>;

        if craftingRecipeValue is ShapedRecipe {
            val shaped = craftingRecipeValue as ShapedRecipe; 
            craftingTable.addShaped(RUtil.getRecipeString(normalRecipe.id) + "_based", normalRecipe.resultItem * count, shaped.getIngredientArray()); 
        } else {
            craftingTable.addShapeless(RUtil.getRecipeString(normalRecipe.id) + "_based", normalRecipe.resultItem * count, normalRecipe.ingredients);
        }

        craftingTable.removeByName(recipe);
    }

     public static changeCountStoneCut(recipeStr as string, count as int) as void {
        val recipe = stoneCutter.getRecipeByName(recipeStr) as StonecutterRecipe;

        stoneCutter.addRecipe(recipe.id.getPath() +"_based", recipe.resultItem * count, recipe.ingredients[0]);
        stoneCutter.removeByName(recipeStr);
    }

    public static split(test as string) as stdlib.List<string> {
        var x as usize = test.indexOf(":");
        var y as usize = test.length;


        return [test[0 .. x], test[(x + 1) .. y]];
    }

    public static getRandomItemInTag(path as string, random as RandomSource) as ResourceLocation {
        val b = <tagmanager:items>.tag(path).idElements;
        return b[random.nextInt(b.length as int)];
    }
}