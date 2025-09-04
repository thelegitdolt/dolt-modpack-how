#priority 50

import crafttweaker.api.resource.ResourceLocation;


public class WoodUtil {
    public static val EVERY_COMPAT = "everycomp"; 

    public static val oak = new ResourceLocation("minecraft", "oak") as ResourceLocation;
    public static val spruce = new ResourceLocation("minecraft", "spruce") as ResourceLocation;
    public static val birch = new ResourceLocation("minecraft", "birch") as ResourceLocation;
    public static val jungle = new ResourceLocation("minecraft", "jungle") as ResourceLocation;
    public static val acacia = new ResourceLocation("minecraft", "acacia") as ResourceLocation;
    public static val dark_oak = new ResourceLocation("minecraft", "dark_oak") as ResourceLocation;
    public static val crimson = new ResourceLocation("minecraft", "crimson") as ResourceLocation;
    public static val warped = new ResourceLocation("minecraft", "warped") as ResourceLocation;
    public static val cherry = new ResourceLocation("minecraft", "cherry") as ResourceLocation;
    public static val bamboo = new ResourceLocation("minecraft", "bamboo") as ResourceLocation;
    public static val mangrove = new ResourceLocation("minecraft", "mangrove") as ResourceLocation;

    public static val willow = new ResourceLocation("environmental", "willow") as ResourceLocation;
    public static val plum = new ResourceLocation("environmental", "plum") as ResourceLocation;
    public static val wisteria = new ResourceLocation("environmental", "wisteria") as ResourceLocation;
    public static val pine = new ResourceLocation("environmental", "pine") as ResourceLocation;
    public static val rosewood = new ResourceLocation("atmospheric", "rosewood") as ResourceLocation;
    public static val morado = new ResourceLocation("atmospheric", "morado") as ResourceLocation;
    public static val poise = new ResourceLocation("endergetic", "poise") as ResourceLocation;
    public static val yucca = new ResourceLocation("atmospheric", "yucca") as ResourceLocation;
    public static val kousa = new ResourceLocation("atmospheric", "kousa") as ResourceLocation;
    public static val aspen = new ResourceLocation("atmospheric", "aspen") as ResourceLocation;
    public static val grimwood = new ResourceLocation("atmospheric", "grimwood") as ResourceLocation;
    public static val laurel = new ResourceLocation("atmospheric", "laurel") as ResourceLocation;
    public static val maple = new ResourceLocation("autumnity", "maple") as ResourceLocation;
    public static val driftwood = new ResourceLocation("upgrade_aquatic", "driftwood") as ResourceLocation;
    public static val river = new ResourceLocation("upgrade_aquatic", "river") as ResourceLocation;
    public static val azalea = new ResourceLocation("caverns_and_chasms", "azalea") as ResourceLocation;    
    public static val vessel = new ResourceLocation("sniffed_out", "vessel") as ResourceLocation;
    public static val fir = new ResourceLocation("windswept", "pine") as ResourceLocation;
    public static val holly = new ResourceLocation("windswept", "holly") as ResourceLocation;
    public static val chestnut = new ResourceLocation("windswept", "chestnut") as ResourceLocation;

    public static val mushroom = new ResourceLocation("enhanced_mushrooms", "mushroom") as ResourceLocation;

    public static val pewen = new ResourceLocation("alexscaves", "pewen") as ResourceLocation;
    public static val thornwood = new ResourceLocation("alexscaves", "thornwood") as ResourceLocation;

    public static val rotten = new ResourceLocation("spawn", "rotten") as ResourceLocation;
    public static val wormwood = new ResourceLocation("dungeonsdelight", "wormwood") as ResourceLocation;
    public static val claret = new ResourceLocation("netherexp", "claret") as ResourceLocation;


    public static val vanilla_wood = [oak, spruce, birch, jungle, acacia, dark_oak, mangrove, cherry, bamboo, warped, crimson] as ResourceLocation[];

    public static val abnormals_wood = [willow, plum, wisteria, poise, pine, rosewood, morado, yucca, kousa, aspen, grimwood, laurel, maple, driftwood,
        river, azalea, vessel, mushroom, fir, holly, chestnut] as ResourceLocation[];

    public static val other_modded_wood = [pewen, thornwood, rotten, claret, wormwood] as ResourceLocation[];

    public static val alexs_caves = [pewen, thornwood] as ResourceLocation[];


    public static asPair(val1 as stdlib.List<ResourceLocation>, val2 as stdlib.List<ResourceLocation>) as ResourceLocation[ResourceLocation] {
        var wassup  = {} as ResourceLocation[ResourceLocation];
        for i in 0 .. val1.length {
            wassup[val1[i]] = val2[i];
        }
        return wassup;
    }

    public static specific(
        namefunc as function(hi as string) as string,

        native_mod as string, 

        vanilla as LocationType, 
        abnormals as LocationType, 
        other_modded as LocationType, 
    
        filter as stdlib.List<string>, 
        special_modids as string[stdlib.List<string>],
        special_funcs as stdlib.List<string>[function(hi as string) as string]
    ) as stdlib.List<ResourceLocation> {
        var list = new stdlib.List<ResourceLocation>();

        for wood in vanilla_wood {
            val namespace = wood.getNamespace();
            val path = wood.getPath();

            var wood_name = namefunc;
            for func, strings in special_funcs {
                if path in strings {
                    wood_name = func;
                }
            }

            if (!(wood.getPath() in filter)) {
                var rl = determineLoc(namespace, path, wood_name, 
                    native_mod, vanilla, special_modids); 

                if (rl.getPath() != "null") {
                    list.add(rl); 
                }
            }   
        }

        for wood in abnormals_wood {
            val namespace = wood.getNamespace();
            val path = wood.getPath();

            var wood_name = namefunc;
            for func, strings in special_funcs {
                if path in strings {
                    wood_name = func;
               }
            }

            if (!(wood.getPath() in filter)) {
                var rl = determineLoc(namespace, path, wood_name, 
                    native_mod, abnormals, special_modids); 

                if (rl.getPath() != "null") {
                    list.add(rl); 
                }
            }
        }

        for wood in other_modded_wood {
            val namespace = wood.getNamespace();
            val path = wood.getPath();

            var wood_name = namefunc;
            for func, strings in special_funcs {
                if path in strings {
                    wood_name = func;
               }
            }

            if (!(wood.getPath() in filter)) {
                var rl = determineLoc(namespace, path, wood_name, 
                    native_mod, other_modded, special_modids); 

                if (rl.getPath() != "null") {
                    list.add(rl); 
                }
            } 
        }


        return list; 
    }

    private static determineLoc(
        default_modid as string, 
        path as string,
        namefunc as function(hi as string) as string,
        new_modid as string, 
        loc as LocationType, 
        special_modids as string[stdlib.List<string>]
    ) as ResourceLocation {
        val newPath = namefunc(path);

        for list, modid in special_modids {
            if path in list {
                println("sex. " + list.toString() + " " +  modid);

                if modid == "everycomp" {
                    var prefix = toECPrefix(new_modid); 
                    return toEveryCompat(prefix, default_modid, newPath); 
                }

                return new ResourceLocation(modid, newPath);
            }
        }

        if (loc == LocationType.ORIGINAL_MODID) {
            return new ResourceLocation(default_modid, newPath);
        }
        else if (loc == LocationType.NEW_MOD) {
            return new ResourceLocation(new_modid, newPath); 
        }
        else if (loc == LocationType.EVERY_COMPAT) {
            var prefix = toECPrefix(new_modid); 
            return toEveryCompat(prefix, default_modid, newPath); 
        }

        return new ResourceLocation("null", "null"); 
    } 

    private static toECPrefix(modid as string) as string {
        switch (modid) {
            case "farmersdelight": return "fd"; 
            case "quark": return "q"; 
            case "woodworks": return "abnww"; 
            case "architechs_palette": return "ap"; 
            default: return ""; 
        }
    }

    private static toEveryCompat(prefix as string, modid as string, path as string) as ResourceLocation {
        return new ResourceLocation(EVERY_COMPAT, prefix + "/" + modid + "/" + path); 
    }
}

public enum LocationType {
        # if the specified item is added by the mod that added the wood
        ORIGINAL_MODID,
        # if the specified item is added by a third party mod that is not every compat 
        NEW_MOD,
        # if specified item is addded by every compat
        EVERY_COMPAT;
}

public class WoodList {
    private var nameFunc as function(hi as string) as string: get, set;

    private var nativeMod as string; 

    private var vanillaLoc as LocationType: get, set;
    private var vanillaBambooLoc as LocationType: get, set;
    private var abnormalsLoc as LocationType: get, set;
    private var otherModdedLoc as LocationType: get, set; 
    private var filter as stdlib.List<string>: get, set;
    private var special_modids as string[stdlib.List<string>]: get, set;
    private var special_funcs as stdlib.List<string>[function(hi as string) as string]: get, set;

    public static create(nativeMod as string, nameFunc as function(hi as string) as string) as WoodList {
        var list = new WoodList(); 
        list.nameFunc = nameFunc; 
        list.nativeMod = nativeMod; 

        list.vanillaLoc = LocationType.NEW_MOD;
        list.abnormalsLoc = LocationType.ORIGINAL_MODID;
        list.otherModdedLoc = LocationType.EVERY_COMPAT; 
        list.filter = new stdlib.List<string>();
        list.special_modids = {};
        list.special_funcs = {};
        return list;
    }

    public build() as stdlib.List<ResourceLocation> {
        return WoodUtil.specific(nameFunc, nativeMod, vanillaLoc, 
            abnormalsLoc, otherModdedLoc, filter, special_modids, special_funcs); 
    }

    public filter(things... as string[]) as WoodList {
        for i in things {
            this.filter.add(i);
        }
        return this; 
    }

    public specialModid(affectedWoods as string[], modid as string) as WoodList {        
        this.special_modids[affectedWoods as stdlib.List<string>] = modid;
        return this;
    }

    public specialFunc(affectedWoods as string[], func as function(hi as string) as string) as WoodList {
        this.special_funcs[func] = affectedWoods; 
        return this; 
    }

    public vanillaOriginal() as WoodList {
        this.vanillaLoc = LocationType.ORIGINAL_MODID; 
        return this; 
    }

    public abnormalsEC() as WoodList {
        this.abnormalsLoc = LocationType.EVERY_COMPAT; 
        return this; 
    }

    public abnormalsNew() as WoodList {
        this.abnormalsLoc = LocationType.NEW_MOD; 
        return this; 
    }

    public moddedEC() as WoodList {
        this.otherModdedLoc = LocationType.EVERY_COMPAT; 
        return this; 
    }

    public moddedNew() as WoodList {
        this.otherModdedLoc = LocationType.NEW_MOD; 
        return this; 
    }


    public moddedOriginal() as WoodList {
        this.otherModdedLoc = LocationType.ORIGINAL_MODID; 
        return this; 
    }
}