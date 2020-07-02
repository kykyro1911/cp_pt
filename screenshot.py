from PIL import ImageGrab
import os
import time

localtime = time.strftime("%Y%m%d_%H%M%S")
path = "Screenshot"

def Screenshot():
    if not os.path.isdir(path):
        os.mkdir(path)

    im = ImageGrab.grab()
    im.save(path + "\\" + localtime + ".png")


if __name__ == "__main__":
    Screenshot()
    print("success!")
