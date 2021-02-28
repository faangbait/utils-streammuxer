#!/bin/bash

./raw_video.sh | ./events.sh | ./webcam_video.sh | ./webcam_audio.sh | ./generate_clean_audiovisual.sh | ./record.sh | ./mix_music_into_audio.sh | ./convert_to_twitch_format.sh

