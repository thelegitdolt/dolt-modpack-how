import os
from PIL import Image
import shutil

portfolio_path = "/Users/andrewyin/Desktop/portfolio-1.20.1-1.4.0-forge"
moddus_doltus_path = "/Users/andrewyin/Desktop/The Moddus Doltus/portfolio_xd/src/main/resources"

minecraft_placeable = portfolio_path + "/data/minecraft/tags/painting_variant/placeable.json"
lang = portfolio_path + "/assets/portfolio/lang/en_us.json"
texture_folder = portfolio_path + "/assets/portfolio/textures/painting"

registry_class_path = '/Users/andrewyin/Desktop/The Moddus Doltus/portfolio_xd/src/main/java/com/dolt/portfolio/PortfolioPaintings.java'
new_lang_path: str = moddus_doltus_path + "/assets/portfolio/lang/en_us.json"
new_tag_path: str = moddus_doltus_path + "/data/minecraft/tags/painting_variant/placeable.json"
new_texture_path: str = moddus_doltus_path + "/assets/portfolio/textures/painting"

def register_stuff():
    ls = []
    for file_name in os.listdir(texture_folder):
        if not file_name.endswith('.png'):
            continue

        image = Image.open(texture_folder + "/" + file_name)
        ls.append((image.width, image.height, file_name.replace('.png', '')))

    painting_stuff: str = ''
    for painting in ls:
        painting_stuff += f"public static final RegistryObject<PaintingVariant> {
            str(painting[2]).upper()
        } = register(\"{painting[2]}\", {painting[0]}, {painting[1]});"

    file_enclose = """
    package com.dolt.portfolio;

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
    code_portfolio()
