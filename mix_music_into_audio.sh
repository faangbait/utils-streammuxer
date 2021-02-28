#!/bin/bash

ffmpeg -re -i http://ice6.somafm.com/7soul-128-aac -f flv -i pipe: -filter_complex "[0:a]volume=volume=0.1[music];[1:a]volume=volume=1[desktop];[desktop]asplit[sc][mix];[music][sc]sidechaincompress=ratio=5[compr];[compr][mix]amerge[final]" -map '[final]' -map 1:v -c:v copy -c:a libmp3lame -f flv pipe:
