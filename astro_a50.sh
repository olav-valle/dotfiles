#!/bin/bash

HWID=`aplay -l | grep 'A50' | cut -d" " -f2 | head -1 | cut -d":" -f1`
echo "Headset is on the port #$HWID"
pacmd "load-module module-alsa-sink device=hw:$HWID,0 sink_name=a50voice"
pacmd "update-sink-proplist voice device.description='Astro A50 Voice'"
pacmd "load-module module-alsa-sink device=hw:$HWID,1 sink_name=game channel_map=left,right,front-center,rear-center,rear-left,rear-right"
pacmd "update-sink-proplist game device.description='Astro A50 Game'"
pacmd "load-module module-alsa-source device=hw:$HWID,0"
