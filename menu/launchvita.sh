#!/bin/bash

#Adjust --speed=1.21 in increments of .10 if you want to reduce latency, you may als otry other "modifiers" to scale, smoth, etc, but can impact preformance
mpv --fullscreen --profile=low-latency --fps=60 --framedrop=no --speed=1.21 --really-quiet /dev/video0

#Launch stream with latency. 
#mpv --fullscreen /dev/video0
