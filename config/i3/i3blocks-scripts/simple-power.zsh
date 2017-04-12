#!/bin/zsh

BATTERY=$(acpi -b)
CHARGING=$(echo $BATTERY | grep -Po "Charging|Dischargin")
short_charge="-"
if [ -z $CHARGING ]
then
    short_charge=""
elif [ $CHARGING = "Charging" ]
then
    short_charge="+"
fi
PERCENTAGE=$(echo $BATTERY | grep -Po "\d{1,3}%")
TIME=$(echo $BATTERY | grep -Po "\d{2}:\d{2}")
echo $short_charge$PERCENTAGE $TIME
