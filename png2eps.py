import glob
import re
import os
import time
from PIL import Image

if __name__=='__main__':

    
    start = time.time()
    png_lists = glob.glob('img/**/*.png', recursive=True)

    #print(len(png_lists))

    for png_file in png_lists:
        print("converting : ", png_file)
        eps_file = png_file.replace('.png','.eps')
  
        png_img = Image.open(png_file)
        fig = png_img.convert('RGB')
        fig.save(eps_file, lossless = True)

        print("save eps file : ",eps_file)
        print("\n")

    elapsed_time = time.time() - start
    print ("elapsed_time:{0}".format(elapsed_time) + "[sec]")


