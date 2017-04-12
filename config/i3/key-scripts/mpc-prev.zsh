#!/bin/zsh

song_perc=$(mpc | head -n 2 | tail -n 1 | grep -Po "\d{1,3}%" | grep -Po "\d{1,3}")
if [ $song_perc -gt 0 ]
then
    mpc seek 0
else
    mpc prev
fi
