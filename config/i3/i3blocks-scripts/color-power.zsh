#!/bin/zsh

BATTERY=$(acpi -b)
CHARGING=$(echo $BATTERY | grep -Po "Charging|Dischargin")
PERCENTAGE=$(echo $BATTERY | grep -Po "\d{1,3}%")
perc_num=$(echo $PERCENTAGE | grep -Po "\d{1,3}")
TIME=$(echo $BATTERY | grep -Po "\d{2}:\d{2}")
if [ -z $CHARGING ]
then
    short_charge=""
    echo '<span foreground="#d9ff7d">'$PERCENTAGE'</span>'
elif [ $CHARGING = "Charging" ]
then
    short_charge="+"
    if [ $perc_num -ge "90" ]
    then
        echo '<span foreground="#d9ff7d">'$short_charge$PERCENTAGE $TIME'</span>'
    else
        echo $short_charge$PERCENTAGE $TIME
    fi
else
    short_charge="-"
    if [ $perc_num -le "20" ]
    then
        echo '<span foreground="#f92627">'$short_charge$PERCENTAGE $TIME'</span>'
    else
        echo $short_charge$PERCENTAGE $TIME
    fi
fi
