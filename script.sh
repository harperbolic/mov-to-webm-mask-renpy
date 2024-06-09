!#/bin/bash

ffmpeg -i original.mov -filter:v alphaextract mask.mov
ffmpeg -i original.mov -i mask.mov -filter_complex "hstack" -codec:v vp9 -crf 10 output.webm
