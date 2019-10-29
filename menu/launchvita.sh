#!/bin/bash

#Adjust --speed=1.21 in increments of .05 to.10 to reduce latency, you may also try other "modifiers" to upscale, smooth, etc but can impact preformance
mpv --fullscreen --profile=low-latency --fps=60 --framedrop=no --speed=1.21 --really-quiet /dev/video0

#Launch stream with latency. 
#mpv --fullscreen /dev/video0
