import os
import time
import picamera
import numpy as np

shell_script_name = "./gdrive-upload-bg/gdrive-upload-bg.sh"
target_directory_token = ""
target_image_name = "" # IMG-YYMMDD-hhmmss.jpg

is_image_diff = false

with picamera.picamera() as camera: # init picamera
    camera.resolution = (1024, 768)
    camera.framerate = 24
    time.sleep(2)
    output = np.empty((1024, 768, 3), dtype=np.uint8)
    camera.capture(output, 'rgb')

# TODO : init picamera and set initial image

while true: # main loop

    # TODO : Check difference of image from initial image

    if not is_image_diff:
        os.system(shell_script_name + " " + target_directory_token + " " + target_image_name) # upload image to gdrive and delete image
   
    