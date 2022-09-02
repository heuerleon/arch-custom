#!/bin/bash

max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)

brightness=$(cat /sys/class/backlight/intel_backlight/brightness)
result=$(echo "$brightness*100/$max_brightness" | bc)

if (( result > 75 )); then
	echo "$result"
elif (( result > 50 )); then
	echo "$result"
elif (( result > 25 )); then
	echo "$result"
else
	echo "$result"
fi

