#priority 10000

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

public expand <T> stdlib.List<T> {
    public removeIf(pred as function(thing as T) as bool) as void {
        val toRemove = new stdlib.List<T>();
        for element in this {
            if pred(element) {
                toRemove.add(element);
            }
        }
        for element in toRemove this.remove(element);
    }

    public anyMatch(pred as function(thing as T) as bool) as bool {
        for element in this {
            if pred(element) {
                return true; 
            }
        }
        return false; 
    }

    public allMatch(pred as function(thing as T) as bool) as bool {
        for element in this {
            if !pred(element) {
                return false; 
            }
        }
        return true; 
    }

    public count(pred as function(thing as T) as bool) as int {
        var i = 1; 
        for element in this {
            if pred(element) {
               i = i + 1;
            }
        }
        return i; 
    }

    public printAll(initial as string, nameFunc as function(thing as T) as string) as void{
        println(initial);
        for i in this {
            println(nameFunc(i));
        }
    }
}