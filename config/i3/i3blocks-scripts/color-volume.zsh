#!/bin/zsh

MASTER_PLAYBACK=$(amixer get Master | tail -n 1)
MUTE_STATUS=$(echo $MASTER_PLAYBACK | grep -Po "\[on\]|\[off\]" | grep -Po "on|off")
VOLUME_STATUS=$(echo $MASTER_PLAYBACK | grep -Po "\[-?\d+\.\d+dB\]" | grep -Po "[^\[\]]+")
if [ $MUTE_STATUS = "on" ]
then
    mute="♫"
    echo $mute $VOLUME_STATUS
else
    mute="X"
    echo '<span foreground="#757575">'$mute $VOLUME_STATUS'</span>'
fi
