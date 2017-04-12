#!/bin/zsh

MPD_STATUS=$(ps aux | grep '[m]pd')
if [ -n $MPD_STATUS ]
then
    play_status=$(mpc | head -n 2 | tail -n 1 | grep -Po "playing|paused")
    if [ $play_status = "paused" ]
    then
        echo '<span foreground="#757575">'$(mpc | head -n 1)'</span>'
    else
        echo $(mpc | head -n 1)
    fi
else
    echo " X "
fi
