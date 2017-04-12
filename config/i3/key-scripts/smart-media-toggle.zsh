#!/bin/zsh

MPD_STATUS=$(ps aux | grep '[m]pd')
if [ -n "$MPD_STATUS" ]
then
    mpc toggle
else
    mpd; mpc play
fi
