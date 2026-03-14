#loader tags

public class TLUtil {

    public static val colors = 
["white", "brown", "gray", "light_gray", "red", "orange", "yellow", "lime", "green", "blue", "light_blue", "cyan", "purple", "magenta", "pink", "black"] 
as string[];

    public static val dyeDepotColors = 
["rose", "maroon", "ginger", "tan", "beige", "coral", "olive", "forest", "verdant", "amber", "teal", "mint", "aqua", "slate", "navy", "indigo"] 
as string[];


    private static val EQUALS_SEPARATOR as string = "===============================================================";

    public static startScript(scriptName as string) as void {
        println(EQUALS_SEPARATOR);
        println("       Starting Script: " + scriptName + ".zs       ");
        println(EQUALS_SEPARATOR);
    }

    public static endScript(scriptName as string) as void {
        println(EQUALS_SEPARATOR);
        println("       Ending Script: " + scriptName  + ".zs       ");
        println(EQUALS_SEPARATOR);
    }
}