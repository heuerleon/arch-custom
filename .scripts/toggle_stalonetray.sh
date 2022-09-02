#!/bin/bash
pid=$(pgrep stalonetray)

if [ -z "$pid" ]; then
    stalonetray &
else
    kill "$pid" >/dev/null
fi

