#!/bin/bash

ffmpeg -f v4l2 -framerate 30 -video_size 640x480 -i /dev/video0 -f flv -i pipe: \
-filter_complex "\
[0:v]setpts=PTS-STARTPTS[webcam];\
[1:v]setpts=PTS-STARTPTS[desktop];\
[desktop][webcam]overlay=W-w-10:10,format=yuv420p[output]" \
-map "[output]" -map 1:a -acodec copy -vcodec libx264 -preset veryfast -f flv -flvflags no_duration_filesize pipe:
