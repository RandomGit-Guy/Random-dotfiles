#!/usr/bin/env bash

# Set "$BAT" to the battery ID 
BAT=$(ls /sys/class/power_supply/ | grep -m1 "^BAT")
# Set "$CAP" to the battery percentage
CAP=$(cat /sys/class/power_supply/$BAT/capacity)
# Set "$STAT" to the battery status (charging/ Not Charging/ Full)
STAT=$(cat /sys/class/power_supply/$BAT/status)

# If "$STAT" = charging then display charging symbols
if [ "$STAT" = "Charging" ]; then
	if [ "$CAP" -ge 95 ]; then
		echo "󰂋"
	elif [ "$CAP" -ge 85 ]; then
		echo "󰂊"
	elif [ "$CAP" -ge 75 ]; then
		echo "󰢞"
	elif [ "$CAP" -ge 65 ]; then
		echo "󰂉"
	elif [ "$CAP" -ge 55 ]; then
		echo "󰢝"
	elif [ "$CAP" -ge 45 ]; then
		echo "󰂈"
	elif [ "$CAP" -ge 35 ]; then
		echo "󰂇"
	elif [ "$CAP" -ge 25 ]; then
		echo "󰂆"
	elif [ "$CAP" -ge 10 ]; then
		echo "󰢜"
	else
		echo "󰢟"
	fi
	exit 0
fi

# If "$STAT" = full then display battery-full symbol
if [ "$STAT" = "Full" ]; then 
	echo "󰁹"
	exit 0
fi

# If "$CAP" = ... then display battery-capacity symbols
if [ "$CAP" -ge 95 ]; then
	echo "󰂂"
elif [ "$CAP" -ge 85 ]; then
	echo "󰂁"
elif [ "$CAP" -ge 75 ]; then
	echo "󰂀"
elif [ "$CAP" -ge 65 ]; then
	echo "󰁿"
elif [ "$CAP" -ge 55 ]; then
	echo "󰁾"
elif [ "$CAP" -ge 45 ]; then
	echo "󰁽"
elif [ "$CAP" -ge 35 ]; then
	echo "󰁼"
elif [ "$CAP" -ge 25 ]; then
	echo "󰁻"
elif [ "$CAP" -ge 10 ]; then
	echo "󰁺"
else
	echo "󰂎"
fi
