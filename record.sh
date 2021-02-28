#!/bin/bash

ffmpeg -i pipe: -c copy -f flv Recording_$EPOCHSECONDS -c copy -f flv pipe:
