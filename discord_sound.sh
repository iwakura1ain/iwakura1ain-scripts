#!/bin/bash

pactl load-module module-null-sink sink_name=Virtual1
pactl load-module module-loopback source=alsa_output.pci-0000_01_00.1.hdmi-stereo-extra1.monitor sink=Virtual1
pactl load-module module-loopback source=Virtual1.monitor sink=alsa_output.pci-0000_00_1f.3.analog-surround-51
