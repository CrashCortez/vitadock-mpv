#!/bin/bash

mpv --fullscreen --profile=low-latency --fps=60 --framedrop=no --speed=1.21 --really-quiet /dev/video0

#Launch stream with latency. 
#mpv --fullscreen /dev/video0
