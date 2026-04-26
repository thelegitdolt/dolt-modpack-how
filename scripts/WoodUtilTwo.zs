#priority 298

import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.mod.Mods;
import stdlib.IllegalArgumentException;

public class WoodResourcePair {
    public var location as ResourceLocation: get;
    public var items as stdlib.List<ResourceLocation>: get;
    public var type as WoodTypeInstance: get;

     public static create(namespace as string, path as string, type as WoodTypeInstance) as WoodResourcePair {
        var pair = new WoodResourcePair(); 
        pair.location = new ResourceLocation(namespace, path);

        var listOfItems = new stdlib.List<ResourceLocation>();
        for item in game.items {
            if (path in item.registryName.getPath()) {
                listOfItems.add(item.registryName);
            }
        }
        pair.items = listOfItems;  
        pair.type = type; 
        return pair; 
    }

    public static defaultMake(namespace as string, path as string) as WoodResourcePair {
        return create(namespace, path, new WoodTypeInstance()); 
    }

    public static forOverlap(namespace as string, path as string, overlappingMods... as string[]) as WoodResourcePair {
        val newPred = (rl) => {
            for mod in overlappingMods {
                if mod in rl.getNamespace() || mod in rl.getPath() {
                    return false; 
                }
            } return true; 
        } as function(a as ResourceLocation) as bool;

        return create(namespace, path, WoodTypeInstance.create((rl) => true, newPred, new ResourceLocation("minecraft", "air"))); 
    }

    public fullCopy(type as WoodTypeInstance) as WoodResourcePair {
        var pair = new WoodResourcePair();
        pair.location = new ResourceLocation(this.location.getNamespace(), this.location.getPath()); 

        var listOfItems = new stdlib.List<ResourceLocation>();
        for i in this.items {
            listOfItems.add(i);
        }
        pair.items = listOfItems;
        pair.type = type;  
        return pair; 
    }
}

public class WoodTypeInstance {    
    public var mainPred as function(a as ResourceLocation) as bool: get, set = (res) => true; 
    public var otherPred as function(a as ResourceLocation) as bool: get, set = (res) => true; 
    public var nameOverride as ResourceLocation: get, set = new ResourceLocation("minecraft", "air");

    private static var hierarchy = ["dolt_mod_how", "woodworks", "quark"] as string[];
    private static var everyCompHierarchy = ["abnww", "q"] as string[];


    public static create(mainPred as function(a as ResourceLocation) as bool = (res) => true, 
                    otherPred as function(a as ResourceLocation) as bool = (res) => true, 
                    nameOverride as ResourceLocation = new ResourceLocation("minecraft", "air")) as WoodTypeInstance {
        var instance = new WoodTypeInstance();
        instance.otherPred = otherPred;
        instance.mainPred = mainPred;
        instance.nameOverride = nameOverride; 
        return instance;
    }

    public copy(mainPred as function(dummy as ResourceLocation) as bool) as WoodTypeInstance {
        var a = new WoodTypeInstance(); 
        a.mainPred = mainPred; 
        a.otherPred = this.otherPred; 
        a.nameOverride = this.nameOverride; 
        return a; 
    }

    public and(newPred as function(dummy as ResourceLocation) as bool) as WoodTypeInstance {
        var a = new WoodTypeInstance();
        a.mainPred = this.mainPred; 
        a.nameOverride = this.nameOverride; 

        val otherPredWrapper = this.otherPred; 
        a.otherPred = (rl as ResourceLocation) => {
            return otherPredWrapper(rl) && newPred(rl);
        };
        return a; 
    }

    public test(rl as ResourceLocation) as bool {
        return eval(mainPred, rl) && eval(otherPred, rl);
    }

    public static modHierarchyFilter(listForWood as stdlib.List<ResourceLocation>) as stdlib.List<ResourceLocation> {
        if (listForWood.length <= 1) {
            return listForWood; 
        }
        if (listForWood.allMatch((rl) => rl.getNamespace() == "everycomp")) {
            doHierarchy(listForWood, everyCompHierarchy, (rl) => SUtil.charsBeforeFirst(rl.getPath(), "/"));
            return listForWood;
        }

        listForWood.removeIf((rl) => {
            return rl.getNamespace() == "everycomp";
        });

        doHierarchy(listForWood, hierarchy, (rl) => rl.getNamespace());
        return listForWood; 
    }

    private static doHierarchy(listForWood as stdlib.List<ResourceLocation>, hierarchy as string[], representative as function(_ as ResourceLocation) as string) as void {
        for i in 0 .. (hierarchy.length - 1) {
            var mod = hierarchy[i];
            if listForWood.anyMatch((rl) => representative(rl) == mod) {
                var index as usize = i + 1; 
                var restOfHierarchy = hierarchy[index .. hierarchy.length];
                listForWood.removeIf((rl) => {
                    return representative(rl) in restOfHierarchy;
                });
                return; 
            }
        }
    }

    private static eval(pred as function(_ as ResourceLocation) as bool, rl as ResourceLocation) as bool {return pred(rl);}
}

public class WoodListTwo {
    public static val TEMPLATE_MAP = {
        "oak": WoodResourcePair.defaultMake("minecraft", "oak"),
        "spruce": WoodResourcePair.defaultMake("minecraft", "spruce"),
        "birch": WoodResourcePair.defaultMake("minecraft", "birch"),
        "jungle": WoodResourcePair.defaultMake("minecraft", "jungle"),
        "acacia": WoodResourcePair.defaultMake("minecraft", "acacia"),
        "dark_oak": WoodResourcePair.defaultMake("minecraft", "dark_oak"),
        "crimson": WoodResourcePair.defaultMake("minecraft", "crimson"),
        "warped": WoodResourcePair.defaultMake("minecraft", "warped"),
        "cherry": WoodResourcePair.defaultMake("minecraft", "cherry"),
        "bamboo": WoodResourcePair.defaultMake("minecraft", "bamboo"),
        "mangrove": WoodResourcePair.defaultMake("minecraft", "mangrove"),

        "willow": WoodResourcePair.defaultMake("environmental", "willow"),
        "plum": WoodResourcePair.defaultMake("environmental", "plum"),
        "wisteria": WoodResourcePair.defaultMake("environmental", "wisteria"),
        "pine": WoodResourcePair.forOverlap("environmental", "pine", "windswept"),
        "rosewood": WoodResourcePair.defaultMake("atmospheric", "rosewood"),
        "morado": WoodResourcePair.defaultMake("atmospheric", "morado"),
        "poise": WoodResourcePair.defaultMake("endergetic", "poise"),
        "yucca": WoodResourcePair.defaultMake("atmospheric", "yucca"),
        "kousa": WoodResourcePair.defaultMake("atmospheric", "kousa"),
        "aspen": WoodResourcePair.defaultMake("atmospheric", "aspen"),
        "grimwood": WoodResourcePair.defaultMake("atmospheric", "grimwood"),
        "laurel": WoodResourcePair.defaultMake("atmospheric", "laurel"),
        "maple": WoodResourcePair.defaultMake("autumnity", "maple"),
        "driftwood": WoodResourcePair.defaultMake("upgrade_aquatic", "driftwood"),
        "river": WoodResourcePair.defaultMake("upgrade_aquatic", "river"),
        "azalea": WoodResourcePair.forOverlap("caverns_and_chasms", "azalea", "quark"),
        "vessel": WoodResourcePair.defaultMake("sniffed_out", "vessel"),
        "fir": WoodResourcePair.forOverlap("windswept", "pine", "environmental"),
        "holly": WoodResourcePair.defaultMake("windswept", "holly"),
        "chestnut": WoodResourcePair.defaultMake("windswept", "chestnut"),

        "mushroom": WoodResourcePair.defaultMake("enhanced_mushrooms", "mushroom"),

        "pewen": WoodResourcePair.defaultMake("alexscaves", "pewen"),
        "thornwood": WoodResourcePair.defaultMake("alexscaves", "thornwood"),

        "rotten": WoodResourcePair.defaultMake("spawn", "rotten"),
        "date": WoodResourcePair.defaultMake("spawn", "date"),
        "desecrated": WoodResourcePair.forOverlap("darkerdepths", "petrified", "sullysmod"),
        "wormwood": WoodResourcePair.defaultMake("dungeonsdelight", "wormwood"),
        "claret": WoodResourcePair.defaultMake("netherexp", "claret"),
        "petrified": WoodResourcePair.forOverlap("sullysmod", "petrified", "darkerdepths")
    } as WoodResourcePair[string];

    public var map as WoodResourcePair[string]: get, set; 

    public static create(nameFunc as string, blacklist... as string[]) as WoodListTwo {
        return create([nameFunc], blacklist);
    }

    public static isRemoved(a as ResourceLocation) as bool {
        if ("everycomp" == a.getNamespace()) {
            if !("spawn" in a.getPath()) {
                if ("abnww" in a.getPath() && ("boards" in a.getPath() || "bookshelf" in a.getPath() || "beehive" in a.getPath() || "chest" in a.getPath() || "ladder" in a.getPath())) {
                    return true; 
                }
            }
        }
        if ("quark" in a.getNamespace() || a.getPath().startsWith("q/")) {
            // removes all quark compat bookshelves, chests, and ladders
            if ("bookshelf" in a.getPath()|| "chest" in a.getPath() || "ladder" in a.getPath()) {
                return true; 
            }
        } return false; 
    }

    public static create(nameFuncs as string[], blacklist... as string[]) as WoodListTwo {
        var newMap = {} as WoodResourcePair[string];
        for name, instance in TEMPLATE_MAP {
            if !(name in blacklist) {
                var mainPred = (rl) => {

                    var path = rl.getPath(); 
                    if ("/" in path) {   
                        path = SUtil.charsAfterLast(path, "/");
                    }
                    for nameFunc in nameFuncs {
                        if (path == SUtil.format(nameFunc, instance.location.getPath())) {
                            return true; 
                        }
                    }
                    return false;
                } as function(a as ResourceLocation) as bool;

                var woodType = instance.type.copy(mainPred);
                newMap[name] = instance.fullCopy(woodType); 
            }   
        }
        var newList = new WoodListTwo();
        newList.map = newMap; 
        return newList; 
    }

    // public filter(names... as string[]) as WoodListTwo {
    //     for name in names {
    //         this.map[name] = null; 
    //     }
    //     return this; 
    // }

    public edgeCase(names as string[], nameFunc as string) as WoodListTwo {
        return edgeCase(names, [nameFunc]); 
    }

    public edgeCase(names as string[], nameFuncs as string[]) as WoodListTwo {
        for name in names {
            var pred = (rl) => {
                var path = rl.getPath();

                if ("/" in path) {
                    path = SUtil.charsAfterLast(path, "/");
                }

                for nameFunc in nameFuncs {
                    if (path == SUtil.format(nameFunc, name)) {
                        return true; 
                    }
                }
                return false; 
            } as function(a as ResourceLocation) as bool;
            this.map[name].type.mainPred = pred; 
        }
        return this; 
    }

    public build() as stdlib.List<ResourceLocation> {
        var theList = new stdlib.List<ResourceLocation>(); 
        for name, instance in this.map {
            theList.add(buildOne(name, instance));
        }
        return theList; 
    }

    public static buildOne(name as string, instance as WoodResourcePair) as ResourceLocation throws IllegalArgumentException { 
        val type = instance.type; 
        if (type.nameOverride.toString() != "minecraft:air") {
            return type.nameOverride;
        }
        var listForWood = new stdlib.List<ResourceLocation>(); 

        for woodItem in instance.items {
            if type.test(woodItem) {
                listForWood.add(woodItem);
            }
        }
        listForWood = WoodTypeInstance.modHierarchyFilter(listForWood);

        if (listForWood.length > 1) {
            throw new IllegalArgumentException(SUtil.format("Ambiguous predicate for WoodListTwo %s, contains items %s and %s", name, 
                listForWood[0].toString(), listForWood[1].toString()));
        } else if (listForWood.length == 0){
            throw new IllegalArgumentException(SUtil.format("Too strong predicate on WoodListTwo for %s, no candidate left", name));
        } 
        return listForWood[0];
    }

    public forceOverride(name as string, overrider as ResourceLocation) as WoodListTwo {    
        this.map[name].type.nameOverride = overrider;
        return this;
    }
}

public class WoodGroup {
    public var woodLists as WoodListTwo[string]: get = {}; 
    public var blacklist as string[]: get; 
    
    public static create(blackList... as string[]) as WoodGroup {
        var a = new WoodGroup(); 
        a.blacklist = blackList;
        return a;
    }
    
    public length() as usize {
        for name, woodlist in woodLists {
            return woodlist.map.keys.length; 
        } return 0; 
    }

    public forceOverride(member as string, name as string, overrider as ResourceLocation) as WoodGroup {    
        this.woodLists[member].forceOverride(name, overrider);
        return this;
    }

    public add(name as string, initializer as string) as WoodGroup {
        return add(name, [initializer]); 
    }

    public add(name as string, initializers as string[]) as WoodGroup {
        this.woodLists[name] = WoodListTwo.create(initializers, this.blacklist);
        return this; 
    }

    public edgeCase(name as string, members as string[], nameFunc as string) as WoodGroup {
        this.woodLists[name].edgeCase(members, nameFunc);
        return this;
    }

    public edgeCase(name as string, members as string[], nameFuncs as string[]) as WoodGroup {
        this.woodLists[name].edgeCase(members, nameFuncs);
        return this;
    }

    public build() as stdlib.List<ResourceLocation>[string] {
        var largeList = {} as stdlib.List<ResourceLocation>[string];
        for name, woodList in this.woodLists {
            largeList[name] = new stdlib.List<ResourceLocation>();
        }

        for key in WoodListTwo.TEMPLATE_MAP.keys {
            if !(key in this.blacklist) {
                for listName, woodList in this.woodLists {
                    largeList[listName].add(WoodListTwo.buildOne(key, woodList.map[key])); 
                }
            }
        }

        return largeList; 
    }    
}