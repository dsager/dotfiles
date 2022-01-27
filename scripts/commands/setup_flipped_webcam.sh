#! /bin/env sh

INPUT_DEVICE='/dev/video4'

sudo modprobe v4l2loopback

DUMMY_DEVICE=$(v4l2-ctl --list-devices | grep -1 'v4l2loopback' | tail -n1 | tr -d '[:space:]')
echo "Using dummy device: ${DUMMY_DEVICE}"

ffmpeg -framerate 30 -video_size 1280x720 -input_format mjpeg -i ${INPUT_DEVICE} -vf "vflip,format=yuv420p" -f v4l2 ${DUMMY_DEVICE}

