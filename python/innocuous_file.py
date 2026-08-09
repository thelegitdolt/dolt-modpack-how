from paths import desktop
import os
import time
import shutil

def run():
    count = 0
    new_path = f"{desktop}/thing"
    os.makedirs(new_path, exist_ok=True)
    while True:
        time.sleep(0.1)
        for i in os.listdir(desktop):
            if i.startswith("Screenshot 2026"):
                count += 1
                os.rename(f"{desktop}/{i}", f"{desktop}/{count}.png")
                shutil.move(f"{desktop}/{count}.png", new_path)


if __name__ == "__main__":
    run()