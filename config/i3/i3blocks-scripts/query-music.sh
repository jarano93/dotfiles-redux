#!/bin/sh

MPD_STATUS=$(ps aux | grep '[m]pd')
if [[ -n "${MPD_STATUS}" ]]
then
    echo $(mpc | head -n 1)
else
    echo " - "
fi
