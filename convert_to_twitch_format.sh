#!/bin/bash
$STREAM_KEY=$(cat secrets/stream_key)
ffmpeg -f flv -i pipe: -c copy -f flv rtmp://rtmp://dfw.contribute.live-video.net/app/$STREAM_KEY
