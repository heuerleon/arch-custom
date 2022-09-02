#!/bin/bash

max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)

brightness=$(cat /sys/class/backlight/intel_backlight/brightness)
result=$(echo "$brightness*100/$max_brightness" | bc)

if (( result > 75 )); then
	echo ""
elif (( result > 50 )); then
	echo ""
elif (( result > 25 )); then
	echo ""
else
	echo ""
fi

