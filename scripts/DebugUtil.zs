#priority 200

//We will use this class to store global methods and variables.

public class DebugUtil {

    //Utility class to call in any script with the name to easily track in the log where the script start and ends.
    // Call with Globals.startScript("scriptName");

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