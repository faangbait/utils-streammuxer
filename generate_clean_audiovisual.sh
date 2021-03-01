#!/bin/bash

ffmpeg -f flv -i pipe: \
-vcodec libx264 -g 60 -keyint_min 30 -b:v 3000k -minrate 3000k -maxrate 3000k \
-vf "scale=1280:-1,format=yuv420p" -preset veryfast \
-acodec libmp3lame -threads 2 -strict normal -bufsize 3000k -f flv pipe:
