DebugUtil.startScript("/Recipes/quark/cutting_posts.zs/"); 
    

import crafttweaker.api.resource.ResourceLocation;

var posts = WoodList.create(Constants.QUARK, (str) => str + "_post").abnormalsEC().bambooNP()
   .filter("vessel").build(); 

var stripped_posts = WoodList.create(Constants.QUARK, (str) => "stripped_" + str + "_post").filter("vessel").abnormalsEC().bambooNP().build(); 

 var posts_and_stripped_posts = WoodUtil.asPair(posts, stripped_posts) as ResourceLocation[ResourceLocation]; 

for post, stripped in posts_and_stripped_posts {
   val postItem = <item:${post.toString()}>;
   val strippedItem = <item:${stripped.toString()}>;

   RUtil.cut.addRecipe("stripping_" + post.getPath(), postItem, [strippedItem, <item:farmersdelight:tree_bark>], <toolaction:axe_strip>);
}

RUtil.cut.addRecipe("stripping_bamboo_post", <item:quark:bamboo_post>, [<item:quark:stripped_bamboo_post>, <item:farmersdelight:straw>], <toolaction:axe_strip>);



DebugUtil.endScript("/Recipes/quark/cutting_posts.zs"); 