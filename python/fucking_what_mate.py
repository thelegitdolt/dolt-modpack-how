a = """
{
    "multipart": [
      {
        "apply": { "model": "@@@@@" }
      },
        {   
        	"when": { "north": true },
            "apply": { "model": "quark:block/pipe_side" }
        },
        {   
        	"when": { "south": true },
            "apply": { "model": "quark:block/pipe_side", "y": 180 }
        },
        {   
        	"when": { "east": true },
            "apply": { "model": "quark:block/pipe_side", "y": 90 }
        },
        {   
        	"when": { "west": true },
            "apply": { "model": "quark:block/pipe_side", "y": 270 }
        },
		    {   
        	"when": { "down": true },
            "apply": { "model": "quark:block/pipe_side", "x": 90 }
        },
        {   
        	"when": { "up": true },
            "apply": { "model": "quark:block/pipe_side", "x": 270 }
        },
      {
        "when": {
          "OR": [
            {
              "north": false,
              "south": false
            },
            {
              "north": false,
              "south": true,
              "east": true
            },
            {
              "north": false,
              "south": true,
              "west": true
            },
            {
              "north": false,
              "south": true,
              "up": true
            },
            {
              "north": false,
              "south": true,
              "down": true
            }
          ]
        },
        "apply": { "model": "quark:block/pipe_center_side" }
      },
      {

        "when": {
          "OR": [
            {
              "south": false,
              "north": false
            },
            {
              "south": false,
              "north": true,
              "east": true
            },
            {
              "south": false,
              "north": true,
              "west": true
            },
            {
              "south": false,
              "north": true,
              "up": true
            },
            {
              "south": false,
              "north": true,
              "down": true
            }
          ]
        },
        "apply": { "model": "quark:block/pipe_center_side", "y": 180 }
      },
      {

        "when": {
          "OR": [
            {
              "east": false,
              "west": false
            },
            {
              "east": false,
              "west": true,
              "north": true
            },
            {
              "east": false,
              "west": true,
              "south": true
            },
            {
              "east": false,
              "west": true,
              "up": true
            },
            {
              "east": false,
              "west": true,
              "down": true
            }
          ]
        },
        "apply": { "model": "quark:block/pipe_center_side", "y": 90 }
      },
      {

        "when": {
          "OR": [
            {
              "west": false,
              "east": false
            },
            {
              "west": false,
              "east": true,
              "north": true
            },
            {
              "west": false,
              "east": true,
              "south": true
            },
            {
              "west": false,
              "east": true,
              "up": true
            },
            {
              "west": false,
              "east": true,
              "down": true
            }
          ]
        },
        "apply": { "model": "quark:block/pipe_center_side", "y": 270 }
      },
      {

        "when": {
          "OR": [
            {
              "down": false,
              "up": false
            },
            {
              "down": false,
              "up": true,
              "east": true
            },
            {
              "down": false,
              "up": true,
              "west": true
            },
            {
              "down": false,
              "up": true,
              "north": true
            },
            {
              "down": false,
              "up": true,
              "south": true
            }
          ]
        },
        "apply": { "model": "quark:block/pipe_center_side", "x": 90 }
      },
      {

        "when": {
          "OR": [
            {
              "up": false,
              "down": false
            },
            {
              "up": false,
              "down": true,
              "east": true
            },
            {
              "up": false,
              "down": true,
              "west": true
            },
            {
              "up": false,
              "down": true,
              "north": true
            },
            {
              "up": false,
              "down": true,
              "south": true
            }
          ]
        },
        "apply": { "model": "quark:block/pipe_center_side", "x": 270 }
      }
    ]
}"""

colors = ["white", "brown", "gray", "light_gray", "red", "orange", "yellow", "lime", "green", "blue", "light_blue", "cyan", "purple", "magenta", "pink", "black"]

dyeDepotColors = ["rose", "maroon", "ginger", "tan", "beige", "coral", "olive", "forest", "verdant", "amber", "teal", "mint", "aqua", "slate", "navy", "indigo"]


for i in colors:
    print(f'ItemBlockRenderTypes.setRenderLayer({i.upper()}_ENCASED_PIPE.get(), RenderType.translucent());')

for i in dyeDepotColors:
    print(f'ItemBlockRenderTypes.setRenderLayer({i.upper()}_ENCASED_PIPE.get(), RenderType.translucent());')


# for i in colors: 
#     path = "/Users/andrewyin/Desktop/Minecraft/hi/" + i + "_encased_pipe.json"
#     model = "minecraft:block/" + i + "_stained_glass"
#     with open(path, "w") as file:
#         file.write(a.replace("@@@@@", model))

# for i in dyeDepotColors: 
#     path = "/Users/andrewyin/Desktop/Minecraft/hi/" + i + "_encased_pipe.json"
#     model = "dye_depot:block/" + i + "_stained_glass"
#     with open(path, "w") as file:
#         file.write(a.replace("@@@@@", model))

