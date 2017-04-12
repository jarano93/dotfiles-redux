#!/bin/zsh

MASTER_PLAYBACK=$(amixer get Master | tail -n 1)
MUTE_STATUS=$(echo $MASTER_PLAYBACK | grep -Po "\[on\]|\[off\]" | grep -Po "on|off")
mute="X"
if [ $MUTE_STATUS = "on" ]
then
    mute="♫"
fi
VOLUME_STATUS=$(echo $MASTER_PLAYBACK | grep -Po "\[-?\d+\.\d+dB\]" | grep -Po "[^\[\]]+")
echo $mute $VOLUME_STATUS
