#!/bin/bash

ffmpeg -video_size 1920x1080 -f x11grab -framerate 30 -i :0.0 -f pulse -ac 2 -i 3 -c:v libx264rgb -crf 0 -preset ultrafast -f flv pipe:
