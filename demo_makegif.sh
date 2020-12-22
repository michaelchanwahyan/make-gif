#!/bin/bash
ffmpeg -r 3 -i pokemon%02d.jpg -c:v libx264 -vf fps=10 -pix_fmt yuv420p pk.mp4
ffmpeg -i pk.mp4 -vf "fps=10,scale=320:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 pk.gif

