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
    public static val yucca = new ResourceLocation("atmospheric", "yucca") as ResourceLocation;
    public static val kousa = new ResourceLocation("atmospheric", "kousa") as ResourceLocation;
    public static val aspen = new ResourceLocation("atmospheric", "aspen") as ResourceLocation;
    public static val grimwood = new ResourceLocation("atmospheric", "grimwood") as ResourceLocation;
    public static val laurel = new ResourceLocation("atmospheric", "laurel") as ResourceLocation;
    public static val maple = new ResourceLocation("autumnity", "maple") as ResourceLocation;
    public static val driftwood = new ResourceLocation("upgrade_aquatic", "driftwood") as ResourceLocation;
    public static val river = new ResourceLocation("upgrade_aquatic", "river") as ResourceLocation;
    public static val azalea = new ResourceLocation("caverns_and_chasms", "azalea") as ResourceLocation;
    public static val mushroom = new ResourceLocation("enhanced_mushrooms", "mushroom") as ResourceLocation;

    public static val pewen = new ResourceLocation("alexscaves", "pewen") as ResourceLocation;
    public static val thornwood = new ResourceLocation("alexscaves", "thornwood") as ResourceLocation;

    public static val rotten = new ResourceLocation("spawn", "rotten") as ResourceLocation;



    public static val vanilla_wood_no_nether = [oak, spruce, birch, jungle, acacia, dark_oak, mangrove, cherry] as ResourceLocation[];
    
    public static val vanilla_wood_bamboo = [bamboo] as ResourceLocation[];

    public static val nether_wood = [warped, crimson] as ResourceLocation[];

    public static val abnormals_wood = [willow, plum, wisteria, pine, rosewood, morado, yucca, kousa, aspen, grimwood, laurel, maple, driftwood,
        river, azalea, mushroom] as ResourceLocation[];

    public static val other_modded_wood = [pewen, thornwood, rotten] as ResourceLocation[];

    public static asPair(val1 as stdlib.List<ResourceLocation>, val2 as stdlib.List<ResourceLocation>) as ResourceLocation[ResourceLocation] {
        var wassup  = {} as ResourceLocation[ResourceLocation];
        for i in 0 .. val1.length {
            wassup[val1[i]] = val2[i];
        }
        return wassup;
    }

    public static specific(
        wood_name as function(hi as string) as string, 
        bamboo_name as function(hi as string) as string,

        native_mod as string, 

        vanilla as LocationType, 
        vanilla_nether as LocationType, 
        vanilla_bamboo as LocationType, 
        abnormals as LocationType, 
        other_modded as LocationType
        
    ) as stdlib.List<ResourceLocation> {
        var list = new stdlib.List<ResourceLocation>();

        for wood in vanilla_wood_no_nether {
            var rl = determineLoc(wood.getNamespace(), wood_name(wood.getPath()), native_mod, vanilla); 

            println(rl.toString());
            if (rl.getPath() != "null") {
                list.add(rl); 
            }
            
        }
        for wood in nether_wood {
            var rl = determineLoc(wood.getNamespace(), wood_name(wood.getPath()), native_mod, vanilla_nether); 
            println(rl.toString());

            if (rl.getPath() != "null") {
                list.add(rl); 
            }

        }

        for wood in vanilla_wood_bamboo {
            var rl = determineLoc(wood.getNamespace(), bamboo_name(wood.getPath()), native_mod, vanilla_bamboo); 
            println(rl.toString());

            if (rl.getPath() != "null") {
                list.add(rl); 
            }
        }

        for wood in abnormals_wood {
            var rl = determineLoc(wood.getNamespace(), wood_name(wood.getPath()), native_mod, abnormals); 
            println(rl.toString());

            if (rl.getPath() != "null") {
                list.add(rl); 
            }
        }

        for wood in other_modded_wood {
            var rl = determineLoc(wood.getNamespace(), wood_name(wood.getPath()), native_mod, other_modded); 
            println(rl.toString());

            if (rl.getPath() != "null") {
                list.add(rl); 
            }  
        }


        return list; 
    }

    private static determineLoc(
        default_modid as string, 
        path as string,
        new_modid as string, 
        loc as LocationType
    ) as ResourceLocation {
        if (loc == LocationType.ORIGINAL_MODID) {
            return new ResourceLocation(default_modid, path);
        }
        else if (loc == LocationType.NEW_MOD) {
            return new ResourceLocation(new_modid, path); 
        }
        else if (loc == LocationType.EVERY_COMPAT) {

        
            var prefix = toECPrefix(new_modid); 
            return toEveryCompat(prefix, default_modid, path); 
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
        EVERY_COMPAT,
        # if no compat has been added for the specified item
        NOT_PRESENT; 
}

public class WoodList {
    private var nameFunc as function(hi as string) as string: get, set;
    private var bambooNameFunc as function(hi as string) as string: get, set;

    private var nativeMod as string; 

    private var vanillaLoc as LocationType: get, set;
    private var vanillaNetherLoc as LocationType: get, set;
    private var vanillaBambooLoc as LocationType: get, set;
    private var abnormalsLoc as LocationType: get, set;
    private var otherModdedLoc as LocationType: get, set; 

    public static create(nativeMod as string, nameFunc as function(hi as string) as string) as WoodList {
        var list = new WoodList(); 
        list.nameFunc = nameFunc; 
        list.bambooNameFunc = nameFunc; 
        list.nativeMod = nativeMod; 

        list.vanillaLoc = LocationType.NEW_MOD;
        list.vanillaNetherLoc = LocationType.NEW_MOD;
        list.vanillaBambooLoc = LocationType.NEW_MOD;
        list.abnormalsLoc = LocationType.ORIGINAL_MODID;
        list.otherModdedLoc = LocationType.EVERY_COMPAT; 
        return list;
    }

    public build() as stdlib.List<ResourceLocation> {
        return WoodUtil.specific(nameFunc, bambooNameFunc, nativeMod, vanillaLoc, 
                    vanillaNetherLoc, vanillaBambooLoc, abnormalsLoc, otherModdedLoc); 
    }

    public bambooFunc(nameFunc as function(hi as string) as string) as WoodList {
        this.bambooNameFunc = nameFunc; 
        return this; 
    }

    public vanillaOriginal() as WoodList {
        this.vanillaLoc = LocationType.ORIGINAL_MODID; 
        this.vanillaBambooLoc = LocationType.ORIGINAL_MODID; 
        this.vanillaNetherLoc = LocationType.ORIGINAL_MODID; 
        return this; 
    }

    public netherNewMod() as WoodList {
        this.vanillaNetherLoc = LocationType.NEW_MOD; 
        return this; 
    }

    public bambooOriginal() as WoodList {
        this.vanillaBambooLoc = LocationType.ORIGINAL_MODID; 
        return this; 
    }

    public bambooNP() as WoodList {
        this.vanillaBambooLoc = LocationType.NOT_PRESENT; 
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

    public abnormalsNP() as WoodList {
        this.abnormalsLoc = LocationType.NOT_PRESENT; 
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

    public moddedNP() as WoodList {
        this.otherModdedLoc = LocationType.NOT_PRESENT; 
        return this; 
    }
}