DebugUtil.startScript("recipes/misc/cookie"); 
    

addCookie("minecraft:cookie", "minecraft:cocoa_beans", "");
addCookie("spawn:date_cookie", "spawn:dates", "date_");
addCookie("farmersrespite:green_tea_cookie", "farmersrespite:green_tea_leaves", "green_tea_");

val a = [
    "cavedelight:star_cookie",
    "windswept:gingerbread_cookie",
    "farmersdelight:sweet_berry_cookie",
    "abnormals_delight:environmental/cherry_cookie",
    "abnormals_delight:upgrade_aquatic/mulberry_cookie",
    "farmersdelight:honey_cookie",
    "abnormals_delight:autumnity/maple_cookie"
];

for i in a {
    RUtil.changeCount(i, 4);
}


function addCookie(result as string, ing as string, cookieType as string) as void {
    craftingTable.remove(<item:${result}>);
    craftingTable.addShapeless(cookieType + "cookie_based", <item:${result}> * 4, [
        <item:${ing}>, <item:minecraft:wheat>, <item:minecraft:wheat>
    ]);
}





DebugUtil.endScript("recipes/misc/cookie"); 