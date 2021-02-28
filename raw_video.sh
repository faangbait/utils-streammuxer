#!/bin/bash

#ffmpeg -f x11grab -s 1920x1080 -framerate 30 -i :0.0 -f pulse -ac 2 -i 3 -c:v libx264 -preset veryfast -c:a aac -f flv rtmp://localhost:1935/raw_video_audio
#ffmpeg -f x11grab -s 1920x1080 -framerate 30 -i :0.0 -f pulse -ac 2 -i 3 -c:v libx264 -preset veryfast -c:a aac -f avi test.avi

#ffmpeg -f x11grab -s 1920x1080 -framerate 30 -i :0.0 -c copy rtmp://localhost:1935/final_video -f pulse -ac 2 -i 3 rtmp://localhost:1935/final_audio
ffmpeg -video_size 1920x1080 -f x11grab -framerate 30 -i :0.0 -f pulse -ac 2 -i 3 -c:v libx264rgb -crf 0 -preset ultrafast -f flv pipe:
