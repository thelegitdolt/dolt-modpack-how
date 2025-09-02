import os
from PIL import Image
import shutil
import paths

portfolio_path = f"{paths.desktop}/portfolio-1.21.x-1.5.0-neoforge"
doltus_mod_path = f"{paths.desktop}/portfolio-main-021607fe250db1e69dc7997cf37a5a52b74ba782/portfolio-forge"
mod_data_path = doltus_mod_path + "/src/main/resources"
mod_java_path = doltus_mod_path + "/src/main/java"

minecraft_placeable = portfolio_path + "/data/minecraft/tags/painting_variant/placeable.json"
lang = portfolio_path + "/assets/portfolio/lang/en_us.json"
texture_folder = portfolio_path + "/assets/portfolio/textures/painting"

registry_class_path = mod_java_path + '/net/sheddmer/portfolio/init/PortfolioPaintings.java'
new_lang_path: str = mod_data_path + "/assets/portfolio/lang/en_us.json"
new_tag_path: str = mod_data_path + "/data/minecraft/tags/painting_variant/placeable.json"
new_texture_path: str = mod_data_path + "/assets/portfolio/textures/painting"

forge_enclose = """
package net.sheddmer.portfolio.init;

import net.minecraft.world.entity.decoration.PaintingVariant;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;

public class PortfolioPaintings {
    public static DeferredRegister<PaintingVariant> PAINTINGS = DeferredRegister.create(ForgeRegistries.PAINTING_VARIANTS, Portfolio.MOD_ID);

    private static RegistryObject<PaintingVariant> register(String name, int width, int height) {
        return PAINTINGS.register(name, () -> new PaintingVariant(width, height));
    }

    @@@@@@
}
"""

fabric_enclose = """
package net.sheddmer.portfolio.init;

import net.minecraft.entity.decoration.painting.PaintingVariant;
import net.minecraft.registry.Registries;
import net.minecraft.util.Identifier;
import net.minecraft.registry.Registry;
import net.sheddmer.portfolio.Portfolio;

public class PortfolioPaintings {
    @@@@@@
    
    private static PaintingVariant registerPainting(String name, PaintingVariant paintingVariant) {
        return Registry.register(Registries.PAINTING_VARIANT, new Identifier(Portfolio.MODID, name), paintingVariant);
    }
    public static void registerPaintings() {
        Portfolio.LOGGER.debug("Registering paintings for" + Portfolio.MODID);
    }
}

"""

def forge_registry(name, width, height) -> str:
    return f'public static final RegistryObject<PaintingVariant> {name.upper()} = register(\"{name}\", {width}, {height});\n\t'

def fabric_registry(name, width, height) -> str:
    return f'public static final PaintingVariant {name.upper()} = registerPainting("{name}", new PaintingVariant({width}, {height}));\n\t'

def get_paintings():
    ls = []
    for file_name in os.listdir(texture_folder):
        if not file_name.endswith('.png'):
            continue

        image = Image.open(texture_folder + "/" + file_name)
        ls.append((image.width, image.height, file_name.replace('.png', '')))
    return ls

def make_remolder():
    a = """{
    "type": "add",
    "target": "overrides[]",
    "value": {
        "model": "portfolio:item/painting/@@@",
        "predicate": {
            "portfolio:@@@": 1.0
        }
    }
},"""
    for painting in get_paintings():
        print(a.replace('@@@', painting[2]))

def register_stuff():
    painting_stuff: str = ''
    for painting in get_paintings():
        painting_stuff += forge_registry(painting[2], painting[0], painting[1])

    file_enclose = forge_enclose

    with open(registry_class_path, 'w') as registry:
        registry.write(file_enclose.replace('@@@@@@', painting_stuff))


def move_textures():
    for file_name in os.listdir(texture_folder):
        if file_name.endswith('.png'):
            shutil.copyfile(texture_folder + f"/{file_name}", new_texture_path + f"/{file_name}")


def move_lang():
    shutil.copyfile(lang, new_lang_path)


def move_minecraft_placeable():
    shutil.copyfile(minecraft_placeable, new_tag_path)


def code_portfolio():
    register_stuff()
    move_textures()
    move_lang()
    move_minecraft_placeable()


if __name__ == "__main__":
    make_remolder()
