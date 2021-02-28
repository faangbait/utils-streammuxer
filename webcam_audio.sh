#!/bin/bash

ffmpeg -f pulse -ac 2 -i 1 -i pipe: -filter_complex "\
[0:a]aformat=sample_fmts=fltp:sample_rates=44100:channel_layouts=stereo,volume=1[mic];\
[1:a]aformat=sample_fmts=fltp:sample_rates=44100:channel_layouts=stereo,volume=1[desktop];\
[mic]asplit[sc][mix];\
[desktop][sc]sidechaincompress=ratio=5[compr];\
[compr][mix]amerge[final]\
" -map '[final]' -map 1:v -vcodec copy -f flv pipe:
