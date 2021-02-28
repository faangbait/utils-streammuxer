#!/bin/bash

ffmpeg -f flv -i pipe: -vf "drawtext=textfile=events.txt:reload=1:fontsize=22:fontcolor=white" -acodec copy -f flv pipe:

