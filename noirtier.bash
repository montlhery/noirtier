#!/bin/bash

cd $(mktemp -d) && trap "rm -r $_" EXIT

if [[ $# == 0 ]]; then
  echo "Usage: noirtier message > output.mp3"
  exit 1
fi

convert \
  -background black \
  -fill white \
  -rotate 270 \
  -extent 270x \
  -gravity east \
  -pointsize 28 \
  -font courier \
  "label:$*" PNG24:image.png

spectrum_painter \
  --samplerate 96000 \
  --linetime 0.06 \
  --format float \
  image.png > audio.f32le

ffmpeg \
  -f f32le \
  -ar 96000 \
  -ac 2 \
  -i audio.f32le \
  -f mp3 \
  -ar 48000 \
  -ac 1 \
  -af 'highpass=24000,highpass=24000,highpass=24000,highpass=24000,highpass=24000,loudnorm,volume=17dB' \
  -q:a 0 \
  -loglevel error \
  audio.mp3

if test -t 1; then
  echo "Refusing to print binary data; pipe or redirect the output"
  exit 1
fi

cat audio.mp3
