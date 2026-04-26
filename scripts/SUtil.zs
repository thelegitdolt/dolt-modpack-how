#priority 340

import crafttweaker.api.resource.ResourceLocation;
import stdlib.IllegalArgumentException;
import stdlib.Iterable;

public class SUtil {
    public static format(raw as string, candidates... as string[]) as string throws IllegalArgumentException {
        val tag = "%s";

        if (candidates.length == 0 || !(tag in raw)) {
            return raw; 
        } else {
            var indexInt = raw.indexOf(tag);
            var index as usize = indexInt;
            var baton as usize = indexInt + tag.length; 
            var len as usize = raw.length;
            return raw[0 .. index] + candidates[0] + format(raw[baton .. len], candidates[1 .. candidates.length]);
        }
    }

    public static replace(raw as string, replace as string, replaceWith as string) as string {
        if !(replace in raw) {
            return raw; 
        }
        var indexInt = raw.indexOf(replace);
        var index as usize = indexInt;
        var baton as usize = indexInt + replace.length; 
        var len as usize = raw.length;
        return raw[0 .. index] + replaceWith + SUtil.replace(raw[baton .. len], replace, replaceWith);
    }

    public static charsBeforeFirst(sex as string, charseq as string) as string { 
        val a as usize = sex.indexOf(charseq); 
        return sex[0 .. a];
    }

    public static charsAfterLast(sex as string, charseq as string) as string { 
        val a as usize = sex.lastIndexOf(charseq) + 1; 
        return sex[a .. sex.length];
    }

    public static tryParseRL(toParse as string) as ResourceLocation {
        if !(":" in toParse) return new ResourceLocation("minecraft", toParse);
        else return new ResourceLocation(charsBeforeFirst(toParse, ":"), charsAfterLast(toParse, ":"));
    }
}