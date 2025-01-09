DebugUtil.startScript("/Recipes/misc/cookie.zs/"); 
    

cookie.addCookie("minecraft:cookie", "minecraft:cocoa_beans", "");
cookie.addCookie("farmersrespite:green_tea_cookie", "farmersrespite:green_tea_leaves", "green_tea_");



public class cookie {
    public static addCookie(result as string, ing as string, cookieType as string) as void {
        craftingTable.remove(<item:${result}>);
        craftingTable.addShapeless(cookieType + "cookie_based", <item:${result}> * 8, [
            <item:${ing}>, <item:minecraft:wheat>, <item:minecraft:wheat>
        ]);
    }
}



DebugUtil.endScript("/Recipes/misc/cookie.zs"); 