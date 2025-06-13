import mods.jeitweaker.Jei;
import crafttweaker.api.text.Component;
import mods.jeitweaker.ingredient.JeiIngredient;


//A JeiIngredient is a representation of how Jei sees things. It is commonly used in any operations that interact with Jei
//Most basic types you use in CraftTweaker, like itemstacks, or fluids on forge, have implicit casting to a JeiIngredient.
//See the JeiIngredient class for more details.

//Adds a JeiIngredient to Jei.
// Jei.addIngredient(ingredient as JeiIngredient)
//The withDisplayName operation alters the name of this specific IItemStack.

val fancy_dirt = <item:minecraft:dirt>.withDisplayName("The Blessed Dirt");
fancy_dirt.addTooltip("Available through arcane rituals");
Jei.addIngredient(fancy_dirt);


//Adds the given list of Components to the provided JeiIngredient as a form of information.
//Information, as opposed to tooltips, displays separately in a special GUI in JEI.
// Jei.addIngredientInformation(ingredient as JeiIngredient, info... as Component)

Jei.addIngredientInformation(<item:minecraft:golden_apple>, Component.literal("One apple a day keeps the doctor at bay, yum ?"),
//If you use a lang file and a resource loader, you can translate things! Any component is translatable.
Component.translatable("modpack.gapple.information")
);

//Hides the provided category ENTIRELY from Jei.
//The list of categories is available through /ct dump jeitweaker:jei_categories.

// Jei.hideCategory(category as ResourceLocation)

Jei.hideCategory(<resource:minecraft:smithing>);

//Hides the provided individual ingredient.
// Jei.hideIngredient(ingredient as JeiIngredient)

Jei.hideIngredient(<item:minecraft:diamond_sword>);

//Hides the provided list of Ingredients
// Jei.hideIngredients(ingredients as JeiIngredient[])

val removals = [
<item:minecraft:tnt>, <item:minecraft:pumpkin>
] as JeiIngredient[];

Jei.hideIngredients(removals);

//Hides all jeiIngredients that match this regex.
// Jei.hideIngredientsByRegex(pattern as string)

//Hides any items that end with _axe
Jei.hideIngredientsByRegex("[a-z]*:[a-z]*_axe");

//Hide all JeiIngredients from that mod, with a

// Jei.hideModIngredients(modId as string, exclusionFilter as Predicate<string>)

/*
Jei.hideModIngredients("minecraft");
//Equal to the first line
Jei.hideModIngredients("minecraft", path => false);
//Excludes the golden_hoe
Jei.hideModIngredients("minecraft", path => path == "golden_hoe");
*/


//Hides a specific recipe from a specific category.
// Jei.hideRecipe(category as ResourceLocation, recipe as ResourceLocation)

//The recipe name is <resource:namespace:path>
Jei.hideRecipe(<resource:minecraft:stonecutting>, <resource:minecraft:andesite_stairs_from_andesite_stonecutting>);


#noload
// The line above will prevent the script from running, ensuring examples do not affect your current setup.
// Feel free to comment or remove the line if you want to see a particular example in action.
