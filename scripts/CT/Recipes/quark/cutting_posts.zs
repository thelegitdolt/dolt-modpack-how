DebugUtil.startScript("Recipes/quark/cutting_posts"); 
    

import crafttweaker.api.resource.ResourceLocation;

var posts = WoodGroup.create("wormwood", "bamboo", "date")
   .add("post", "%s_post")
   .add("stripped", ["stripped_%s_post", "%s_stripped_post"]);

var posts_real = posts.build();

for i in 0 .. posts.length() {
   val post = posts_real["post"][i];
   val stripped = posts_real["stripped"][i];
   val postItem = <item:${post}>;
   val strippedItem = <item:${stripped}>;

   RUtil.cut.addRecipe("stripping_" + post.getPath(), postItem, [strippedItem, <item:farmersdelight:tree_bark>], <toolaction:axe_strip>);
}

RUtil.cut.addRecipe("stripping_bamboo_post", <item:quark:bamboo_post>, [<item:quark:stripped_bamboo_post>, <item:farmersdelight:straw>], <toolaction:axe_strip>);



DebugUtil.endScript("Recipes/quark/cutting_posts"); 