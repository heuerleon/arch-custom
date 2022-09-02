#!/bin/bash

layout=$HOME/.screenlayout/current
if ! [ -f "$layout" ]; then
    echo "default" > "$layout"
fi

current_layout=$(cat "$layout")

if [ "$current_layout" = "default" ]; then
    echo "office" > "$layout"
    /bin/bash ~/.screenlayout/office.sh
elif [ "$current_layout" = "triple" ]; then
    echo "default" > "$layout"
    /bin/bash ~/.screenlayout/default.sh
else
    echo "default" > "$layout"
    /bin/bash ~/.screenlayout/default.sh
fi

#reload polybars on all monitors
/bin/bash ~/.config/polybar/launch.sh

