#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -scale 20% -scale 500% /tmp/screen.png
i3lock -u -i /tmp/screen.png
rm /tmp/screen.png
